#!/bin/bash

# ==============================================================================
# Enterprise Factor Infrastructure Management Script
# ==============================================================================
# This script consolidates PostgreSQL docker container management and SQL 
# generation/execution logic for the Factor workspace.
# ==============================================================================

# Strict mode for enterprise grade reliability
set -eo pipefail

# Define Directory and Load Configurations
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
PROPERTIES_FILE="$DIR/factor.properties"

# Ensure common Mac paths are in PATH (for Docker)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# ------------------------------------------------------------------------------
# Logging & Error Handling
# ------------------------------------------------------------------------------
LOG_DIR="${DIR}/logs"
mkdir -p "$LOG_DIR"

if [ -z "$LOG_FILE" ]; then
    export LOG_FILE="$LOG_DIR/factor_$(date +%Y%m%d).log"
    export LOG_INITIALIZED_BY_ME=true
    # Global redirection to capture ALL stdout and stderr from this script and its children
    exec > >(tee -a "$LOG_FILE") 2>&1
fi

log_info() {
    local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    echo -e "[$timestamp] [INFO] $1"
}

log_error() {
    local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    echo -e "[$timestamp] \033[31m[ERROR] $1\033[0m" >&2
}

log_success() {
    local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    echo -e "[$timestamp] \033[32m[SUCCESS] $1\033[0m"
}

handle_error() {
    local exit_code=$?
    local line_no=$1
    if [ $exit_code -ne 0 ]; then
        log_error "Command failed at line $line_no with exit code $exit_code."
    fi
    exit $exit_code
}

trap 'handle_error ${LINENO}' ERR

# ------------------------------------------------------------------------------
# Load Properties
# ------------------------------------------------------------------------------
if [ -f "$PROPERTIES_FILE" ]; then
    log_info "Reading properties from $PROPERTIES_FILE..."
    while IFS='=' read -r key value; do
        if [[ ! "$key" =~ ^# ]] && [[ -n "$key" ]]; then
            key=$(echo "$key" | xargs)
            value=$(echo "$value" | xargs)
            export "$key=$value"
        fi
    done < "$PROPERTIES_FILE"
else
    log_error "Properties file $PROPERTIES_FILE not found."
    exit 1
fi

# Constants
DBTYPE="postgresql"
OUT_DIR="$PROJECT_ROOT/outputs/$DBTYPE"

# ------------------------------------------------------------------------------
# Usage Help
# ------------------------------------------------------------------------------
print_help() {
    echo "======================================================================"
    echo "               Factor Infrastructure Operational Script"
    echo "======================================================================"
    echo "Usage: ./factor.sh [COMMAND] [OPTIONS]"
    echo ""
    echo "Container Management:"
    echo "  start       Start PostgreSQL container"
    echo "  stop        Stop PostgreSQL container"
    echo "  restart     Restart PostgreSQL container"
    echo "  status      Check status of PostgreSQL container"
    echo "  remove      Remove PostgreSQL container"
    echo "  logs        View logs for PostgreSQL container"
    echo "  exec        Interactive shell into PostgreSQL container"
    echo ""
    echo "Database Operations:"
    echo "  drop-tables        Drop all objects in public schema"
    echo "  run-sql -f <file>  Run a specific SQL script file"
    echo "  run-generated-sql  Run the predefined generated SQL scripts from outputs"
    echo ""
    echo "Orchestration:"
    echo "  deploy             Start container, wait for readiness, and run generated SQL"
    echo "  regenerate         Drop tables and run generated SQL (container must be running)"
    echo ""
    echo "Maintenance & Utilities:"
    echo "  clean-all   CRITICAL: Stop/Remove ALL containers, images, and volumes"
    echo "  help        Show this help message"
    echo "======================================================================"
}

# ------------------------------------------------------------------------------
# Functions
# ------------------------------------------------------------------------------
get_docker_limits() {
    local limits=""
    if [ -n "$LIMIT_CPU" ]; then limits="$limits --cpus=$LIMIT_CPU"; fi
    if [ -n "$LIMIT_MEMORY" ]; then limits="$limits --memory=$LIMIT_MEMORY"; fi
    if [ -n "$LIMIT_SWAP" ]; then limits="$limits --memory-swap=$LIMIT_SWAP"; fi
    echo "$limits"
}

start_db() {
    local limits=$(get_docker_limits)
    local image_name="$POSTGRES_IMAGE"
    
    log_info "Pulling image $image_name to ensure it's up to date..."
    docker pull $image_name
    
    local volume_dir="${VOLUME_BASE_DIR/#\~/$HOME}"
    if [ ! -d "$volume_dir" ]; then
        mkdir -p "$volume_dir"
    fi

    if docker ps -a --format '{{.Names}}' | grep -Eq "^${POSTGRES_CONTAINER}\$"; then
        log_info "Container $POSTGRES_CONTAINER already exists. Starting it..."
        docker start "$POSTGRES_CONTAINER"
    else
        log_info "Starting PostgreSQL Container..."
        docker run -d --name "$POSTGRES_CONTAINER" $limits \
            -e POSTGRES_PASSWORD="$DB_PASSWORD" \
            -e POSTGRES_USER="$DB_USER" \
            -e POSTGRES_DB="$DB_NAME" \
            -p "$POSTGRES_PORT":5432 \
            -v "$volume_dir/postgres-volume":/var/lib/postgresql \
            "$POSTGRES_IMAGE" \
            -c max_locks_per_transaction=1024
    fi
        
    log_success "PostgreSQL container started."
}

wait_for_db() {
    local container="$POSTGRES_CONTAINER"
    local max_retries=60
    local count=0

    log_info "Waiting for PostgreSQL ($container) to be ready (timeout: $((max_retries * 5))s)..."
    while [ $count -lt $max_retries ]; do
        if docker exec "$container" pg_isready -U "$DB_USER" >/dev/null 2>&1; then
            log_success "PostgreSQL is ready!"
            return 0
        fi
        
        echo -n "."
        sleep 5
        ((count++))
        if [ $((count % 10)) -eq 0 ]; then echo " ($((count * 5))s passed)"; fi
    done

    echo ""
    log_error "Timeout waiting for PostgreSQL to be ready."
    exit 1
}

run_sql() {
    local sql_file=$1
    local container="$POSTGRES_CONTAINER"
    
    if [ ! -f "$sql_file" ]; then
        log_error "Script file not found at $sql_file"
        exit 1
    fi
    
    log_info "Running script file $sql_file on $container..."
    local filename=$(basename "$sql_file")
    
    docker cp "$sql_file" "$container:/tmp/$filename"
    docker exec -i "$container" sh -c "psql -U $DB_USER -d $DB_NAME -f /tmp/$filename"
    docker exec "$container" rm -f "/tmp/$filename"
    log_success "Script execution completed."
}

run_generated_sql() {
    log_info "Starting SQL execution for PostgreSQL..."
    
    if [ ! -d "$OUT_DIR" ]; then
        log_error "Output directory $OUT_DIR does not exist."
        exit 1
    fi

    local MATRIX_BASENAMES=(
        "factor.combination.pk"
        "factor.combination.pk.columns"
        "factor.combination.pk.columns.fk.1to1"
        "factor.combination.pk.columns.fk.1toM"
        "factor.combination.pk.columns.fk.1toM.self"
        "factor.combination.pk.columns.fk.MtoM"
        "factor.combination.pk.columns.fk.MtoM.self"
    )

    for base in "${MATRIX_BASENAMES[@]}"; do
        local found_file=""
        for ext in "sql" "sh"; do
            local filename=""
            if [ "$base" == "factor.combination.pk" ]; then
                filename="factor.combination.pk.multidatabase.$ext"
            else
                local details="${base#factor.combination.pk.}"
                filename="factor.combination.pk.multidatabase.$details.$ext"
            fi

            if [ -f "$OUT_DIR/$filename" ]; then
                found_file="$filename"
                break
            fi
        done

        if [ -n "$found_file" ]; then
            log_info ">>> EXEC $found_file"
            run_sql "$OUT_DIR/$found_file"
        else
            log_info ">>> SKIP $base (No file found in $OUT_DIR)"
        fi
    done

    log_success "SQL execution sequence completed."
}

drop_tables() {
    local container="$POSTGRES_CONTAINER"
    log_info "Dropping all objects in PostgreSQL ($container) public schema..."
    docker exec "$container" psql -U "$DB_USER" -d "$DB_NAME" -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"
    log_success "Objects dropped for PostgreSQL."
}

deploy() {
    log_info "================================================================="
    log_info " Starting deployment process for: $DBTYPE"
    log_info "================================================================="
    
    if docker ps --format '{{.Names}}' | grep -q "^$POSTGRES_CONTAINER$"; then
        log_info "PostgreSQL is already running."
    else
        start_db
    fi
    
    wait_for_db
    run_generated_sql
    
    log_success "Deployment process completed successfully!"
}

regenerate() {
    log_info "================================================================="
    log_info " Starting regeneration process for: $DBTYPE"
    log_info "================================================================="
    
    if ! docker ps --format '{{.Names}}' | grep -q "^$POSTGRES_CONTAINER$"; then
        log_info "PostgreSQL is not running. Starting it..."
        start_db
        wait_for_db
    fi
    
    drop_tables
    run_generated_sql
    
    log_success "Regeneration completed!"
}

clean_all() {
    log_error "======================================================================"
    log_error "CRITICAL: Removing ALL Docker containers, images, and volumes..."
    log_error "======================================================================"
    docker rm -f $(docker ps -aq) 2>/dev/null || true
    docker system prune -a --volumes -f
    local volume_dir="${VOLUME_BASE_DIR/#\~/$HOME}"
    if [ -d "$volume_dir" ]; then
        log_info "Cleaning host volume directory: $volume_dir"
        rm -rf "$volume_dir"/* 2>/dev/null || sudo rm -rf "$volume_dir"/* 2>/dev/null || true
    fi
    log_success "Clean completed."
}

# ------------------------------------------------------------------------------
# Command Routing
# ------------------------------------------------------------------------------
if [ $# -lt 1 ]; then
    print_help
    exit 1
fi

COMMAND=$1
case $COMMAND in
    start) start_db ;;
    stop) docker stop "$POSTGRES_CONTAINER" ;;
    restart) docker restart "$POSTGRES_CONTAINER" ;;
    status) docker ps -a --filter "name=$POSTGRES_CONTAINER" ;;
    remove) docker rm -f "$POSTGRES_CONTAINER" ;;
    logs) docker logs -f "$POSTGRES_CONTAINER" ;;
    exec) docker exec -it "$POSTGRES_CONTAINER" bash 2>/dev/null || docker exec -it "$POSTGRES_CONTAINER" sh ;;
    drop-tables) drop_tables ;;
    run-generated-sql) run_generated_sql ;;
    deploy) deploy ;;
    regenerate) regenerate ;;
    run-sql)
        FILE=""
        shift
        while [[ $# -gt 0 ]]; do
            case $1 in
                -f|--file) FILE="$2"; shift 2 ;;
                *) shift ;;
            esac
        done
        if [ -z "$FILE" ]; then
            log_error "Script file path must be provided with '-f'."
            exit 1
        fi
        run_sql "$FILE"
        ;;
    clean-all) clean_all ;;
    help|--help|-h) print_help ;;
    *) log_error "Unknown command '$COMMAND'"; print_help; exit 1 ;;
esac

exit 0
