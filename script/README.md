# ⚡ Factor Infrastructure Scripts

**Enterprise-Grade Orchestration & Automation for Factor PostgreSQL Environments.**

This directory contains consolidated, high-performance scripts and configurations designed for deterministic management of the Factor PostgreSQL environment via Docker.

---

## ⚙️ 1. Configuration Management

All operational parameters are centralized and managed securely via the `factor.properties` configuration file.

| Property Node | Value Description |
| :--- | :--- |
| `PROJECT_ROOT` | Absolute path resolving to the core Factor workspace project. |
| `CONFIG_XML` | Absolute path mapping to the main XML configuration definition. |
| **PostgreSQL Settings** | Credentials (`POSTGRES_USER`, `POSTGRES_PASSWORD`), network port, and target database name. |
| **Docker Constraints** | Resource limitations encompassing CPU, memory, and swap allocation to prevent host exhaustion. |
| **Volume Base** | Persistent host directory mapped for reliable database volume storage. |

> [!NOTE]
> Ensure `factor.properties` is properly configured prior to executing any orchestration commands to guarantee deterministic container deployment.

---

## 🚀 2. Core Usage & Entry Point

The `factor.sh` script serves as the unified entry point for all infrastructure operations. It features robust error handling, automated system checks, and detailed operational logging.

```bash
cd script
./factor.sh [COMMAND] [OPTIONS]
```

---

## 🛠️ 3. Command Reference Matrix

### 🔌 3.1. Orchestration Automation

High-level commands that automate complex, multi-step deployment pipelines.

| Command | Operational Description |
| :--- | :--- |
| **`deploy`** | Starts the PostgreSQL container, blocks until the database is ready, and recursively executes the SQL matrix scripts located in `outputs/postgresql`. |
| **`regenerate`** | Drops all existing objects within the `public` schema, then freshly applies the generated SQL matrix scripts. *(Requires an active database connection)* |

### 🗄️ 3.2. Database Operations

Commands scoped to SQL execution and direct database management.

| Command | Operational Description |
| :--- | :--- |
| **`drop-tables`** | Forcefully drops the entire `public` schema and re-initializes an empty schema. |
| **`run-sql -f <path>`** | Executes an explicit SQL payload directly against the active PostgreSQL database instance. |
| **`run-generated-sql`** | Sequentially executes the predefined generated `.sql` scripts derived from the output pipeline. |

### 🐳 3.3. Container Management

Commands for direct Docker lifecycle control.

| Command | Operational Description |
| :--- | :--- |
| **`start`** | Initializes the PostgreSQL container based on `factor.properties` constraints. |
| **`stop`** | Gracefully halts the running PostgreSQL container. |
| **`restart`** | Cycles the power state of the PostgreSQL container. |
| **`status`** | Polls and reports the current lifecycle state of the container. |
| **`remove`** | Destroys the container instance (persisted volumes remain intact). |
| **`logs`** | Attaches to the container output stream for real-time monitoring. |
| **`exec`** | Provisions an interactive `bash`/`sh` session inside the running container. |

### 🧹 3.4. Maintenance & Teardown

> [!CAUTION]
> **Data Loss Warning**: The following commands can result in irreversible data destruction. Proceed with extreme caution in production-like environments.

| Command | Operational Description |
| :--- | :--- |
| **`clean-all`** | **CRITICAL:** Halts and removes all associated containers, prunes system resources, and physically deletes the persistent host volume mapped in `factor.properties`. |

---

## 📄 4. Audit Logging

To maintain strict operational observability, all executed commands, states, and errors are appended to a rolling log file.

> [!TIP]
> Execution logs can be found at `script/logs/factor_YYYYMMDD.log` (or `infra/logs/`). Review these logs for detailed troubleshooting and system auditing.
