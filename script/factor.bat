@echo off
setlocal EnableDelayedExpansion

REM ==============================================================================
REM Enterprise Factor Infrastructure Management Script (Windows)
REM ==============================================================================
REM This script consolidates PostgreSQL docker container management and SQL 
REM generation/execution logic for the Factor workspace on Windows environments.
REM ==============================================================================

set DIR=%~dp0
set PROPERTIES_FILE=%DIR%factor.properties

REM Load Properties
if exist "%PROPERTIES_FILE%" (
    for /f "usebackq tokens=1,* delims==" %%A in ("%PROPERTIES_FILE%") do (
        set "key=%%A"
        set "val=%%B"
        REM Skip comments
        if not "!key:~0,1!"=="#" (
            set "!key!=!val!"
        )
    )
) else (
    echo [ERROR] Properties file %PROPERTIES_FILE% not found.
    exit /b 1
)

set DBTYPE=postgresql
set OUT_DIR=%PROJECT_ROOT%\outputs\%DBTYPE%
REM Basic volume expansion mapping ~ to %USERPROFILE%
set VOLUME_DIR=%VOLUME_BASE_DIR:~=%USERPROFILE%%

REM Routing
if "%~1"=="" goto print_help

if "%~1"=="start" goto start_db
if "%~1"=="stop" docker stop "%POSTGRES_CONTAINER%" & goto :eof
if "%~1"=="restart" docker restart "%POSTGRES_CONTAINER%" & goto :eof
if "%~1"=="status" docker ps -a --filter "name=%POSTGRES_CONTAINER%" & goto :eof
if "%~1"=="remove" docker rm -f "%POSTGRES_CONTAINER%" & goto :eof
if "%~1"=="logs" docker logs -f "%POSTGRES_CONTAINER%" & goto :eof
if "%~1"=="exec" docker exec -it "%POSTGRES_CONTAINER%" bash & goto :eof
if "%~1"=="drop-tables" goto drop_tables
if "%~1"=="run-generated-sql" goto run_generated_sql
if "%~1"=="deploy" goto deploy
if "%~1"=="regenerate" goto regenerate
if "%~1"=="run-sql" goto run_sql_cmd
if "%~1"=="clean-all" goto clean_all
if "%~1"=="help" goto print_help
if "%~1"=="--help" goto print_help
if "%~1"=="-h" goto print_help

echo [ERROR] Unknown command '%~1'
goto print_help

:start_db
docker pull %POSTGRES_IMAGE%
if not exist "%VOLUME_DIR%" mkdir "%VOLUME_DIR%"
docker ps -a --format "{{.Names}}" | findstr /C:"%POSTGRES_CONTAINER%" >nul
if %ERRORLEVEL%==0 (
    echo [INFO] Container %POSTGRES_CONTAINER% already exists. Starting it...
    docker start "%POSTGRES_CONTAINER%"
) else (
    echo [INFO] Starting PostgreSQL Container...
    docker run -d --name "%POSTGRES_CONTAINER%" ^
        -e POSTGRES_PASSWORD="%DB_PASSWORD%" ^
        -e POSTGRES_USER="%DB_USER%" ^
        -e POSTGRES_DB="%DB_NAME%" ^
        -p "%POSTGRES_PORT%:5432" ^
        -v "%VOLUME_DIR%\postgres-volume:/var/lib/postgresql" ^
        "%POSTGRES_IMAGE%" ^
        -c max_locks_per_transaction=1024
)
echo [SUCCESS] PostgreSQL container started.
goto :eof

:wait_for_db
set count=0
echo [INFO] Waiting for PostgreSQL to be ready...
:wait_loop
docker exec "%POSTGRES_CONTAINER%" pg_isready -U "%DB_USER%" >nul 2>&1
if %ERRORLEVEL%==0 (
    echo [SUCCESS] PostgreSQL is ready!
    goto :eof
)
<nul set /p="."
ping 127.0.0.1 -n 6 >nul
set /a count+=1
if %count% LSS 60 goto wait_loop
echo.
echo [ERROR] Timeout waiting for PostgreSQL to be ready.
exit /b 1

:run_sql
set SQL_FILE=%~1
if not exist "%SQL_FILE%" (
    echo [ERROR] Script file not found at %SQL_FILE%
    exit /b 1
)
for %%F in ("%SQL_FILE%") do set FILENAME=%%~nxF
docker cp "%SQL_FILE%" "%POSTGRES_CONTAINER%:/tmp/%FILENAME%"
docker exec -i "%POSTGRES_CONTAINER%" sh -c "psql -U %DB_USER% -d %DB_NAME% -f /tmp/%FILENAME%"
docker exec "%POSTGRES_CONTAINER%" rm -f "/tmp/%FILENAME%"
echo [SUCCESS] Script execution completed.
goto :eof

:run_generated_sql
echo [INFO] Starting SQL execution for PostgreSQL...
if not exist "%OUT_DIR%" (
    echo [ERROR] Output directory %OUT_DIR% does not exist.
    exit /b 1
)
set BASENAMES=factor.combination.pk factor.combination.pk.columns factor.combination.pk.columns.fk.1to1 factor.combination.pk.columns.fk.1toM factor.combination.pk.columns.fk.1toM.self factor.combination.pk.columns.fk.MtoM factor.combination.pk.columns.fk.MtoM.self

for %%B in (%BASENAMES%) do (
    set FOUND=
    set BASE=%%B
    if "%%B"=="factor.combination.pk" (
        set FILENAME=factor.combination.pk.multidatabase.sql
    ) else (
        set SUFFIX=!BASE:factor.combination.pk.=!
        set FILENAME=factor.combination.pk.multidatabase.!SUFFIX!.sql
    )
    if exist "%OUT_DIR%\!FILENAME!" (
        echo [INFO] ^>^^>^^> EXEC !FILENAME!
        call :run_sql "%OUT_DIR%\!FILENAME!"
    ) else (
        echo [INFO] ^>^^>^^> SKIP %%B (No file found)
    )
)
echo [SUCCESS] SQL execution sequence completed.
goto :eof

:drop_tables
echo [INFO] Dropping all objects in PostgreSQL public schema...
docker exec "%POSTGRES_CONTAINER%" psql -U "%DB_USER%" -d "%DB_NAME%" -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"
echo [SUCCESS] Objects dropped for PostgreSQL.
goto :eof

:deploy
echo [INFO] Starting deployment process...
docker ps --format "{{.Names}}" | findstr /R /C:"^%POSTGRES_CONTAINER%$" >nul
if %ERRORLEVEL%==0 (
    echo [INFO] PostgreSQL is already running.
) else (
    call :start_db
)
call :wait_for_db
call :run_generated_sql
echo [SUCCESS] Deployment process completed successfully!
goto :eof

:regenerate
echo [INFO] Starting regeneration process...
docker ps --format "{{.Names}}" | findstr /R /C:"^%POSTGRES_CONTAINER%$" >nul
if %ERRORLEVEL%==1 (
    echo [INFO] PostgreSQL is not running. Starting it...
    call :start_db
    call :wait_for_db
)
call :drop_tables
call :run_generated_sql
echo [SUCCESS] Regeneration completed!
goto :eof

:run_sql_cmd
if "%~2"=="-f" (
    call :run_sql "%~3"
) else if "%~2"=="--file" (
    call :run_sql "%~3"
) else (
    echo [ERROR] Script file path must be provided with '-f'.
    exit /b 1
)
goto :eof

:clean_all
echo [ERROR] CRITICAL: Removing ALL Docker containers, images, and volumes...
for /f "tokens=*" %%i in ('docker ps -aq') do docker rm -f %%i 2>nul
docker system prune -a --volumes -f
if exist "%VOLUME_DIR%" rmdir /s /q "%VOLUME_DIR%"
echo [SUCCESS] Clean completed.
goto :eof

:print_help
echo ======================================================================
echo                Factor Infrastructure Operational Script
echo ======================================================================
echo Usage: factor.bat [COMMAND] [OPTIONS]
echo.
echo Container Management:
echo   start       Start PostgreSQL container
echo   stop        Stop PostgreSQL container
echo   restart     Restart PostgreSQL container
echo   status      Check status of PostgreSQL container
echo   remove      Remove PostgreSQL container
echo   logs        View logs for PostgreSQL container
echo   exec        Interactive shell into PostgreSQL container
echo.
echo Database Operations:
echo   drop-tables        Drop all objects in public schema
echo   run-sql -f ^<file^>  Run a specific SQL script file
echo   run-generated-sql  Run the predefined generated SQL scripts from outputs
echo.
echo Orchestration:
echo   deploy             Start container, wait for readiness, and run generated SQL
echo   regenerate         Drop tables and run generated SQL (container must be running)
echo.
echo Maintenance ^& Utilities:
echo   clean-all   CRITICAL: Stop/Remove ALL containers, images, and volumes
echo   help        Show this help message
echo ======================================================================
goto :eof
