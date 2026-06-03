# Factor Infrastructure Scripts

This directory contains consolidated, enterprise-grade scripts and configuration for managing the Factor PostgreSQL environment via Docker.

## Configuration

All configuration is managed centrally in `factor.properties`.

- `PROJECT_ROOT`: Absolute path to the root factor workspace project.
- `CONFIG_XML`: Absolute path to the main configuration XML file.
- **PostgreSQL Properties**: Credentials, port, database name.
- **Docker Limits**: CPU, memory, and swap constraints for the containers.
- **Volume Base**: Directory on the host where Docker volumes are persisted.

## Usage

The `factor.sh` script is the entry point for all operations. It provides robust error handling, detailed logging, and a unified interface.

```bash
cd infra
./factor.sh [COMMAND] [OPTIONS]
```

### Orchestration Commands

These commands automate multi-step processes.

- **`deploy`**: Starts the PostgreSQL container (if not running), waits for it to become ready, and runs the generated SQL matrix scripts from `outputs/postgresql`.
- **`regenerate`**: Drops all objects in the public schema of the running database, then applies the generated SQL matrix scripts. *Requires the database to be running.*

### Database Operations Commands

- **`drop-tables`**: Drops the entire `public` schema and recreates it.
- **`run-sql -f <path>`**: Executes a specific SQL file on the PostgreSQL database.
- **`run-generated-sql`**: Sequentially executes the predefined generated SQL scripts from the output directory.

### Container Management Commands

- **`start`**: Starts the PostgreSQL container using the settings in `factor.properties`.
- **`stop`**: Stops the running PostgreSQL container.
- **`restart`**: Restarts the PostgreSQL container.
- **`status`**: Checks whether the container is running.
- **`remove`**: Removes the PostgreSQL container (does not delete volumes).
- **`logs`**: Streams the logs for the PostgreSQL container.
- **`exec`**: Opens an interactive bash/sh shell inside the running container.

### Maintenance Commands

- **`clean-all`**: **CRITICAL/DANGER**. Stops and removes all containers, prunes the system, and deletes the host volume directory specified in `factor.properties`.

## Logging

All script executions are logged to `infra/logs/factor_YYYYMMDD.log` for troubleshooting and auditing.
