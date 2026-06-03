
-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_1_SRL
-- KEY SCHEMA: SERIAL
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_1_SRL" (
    serial_1 SERIAL NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_1_SRL"
ADD CONSTRAINT "fk_self_R1MS_1_SRL"
FOREIGN KEY (
    parent_serial_1)
REFERENCES "R1MS_1_SRL" (
    serial_1);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_1_BGS
-- KEY SCHEMA: BIGSERIAL
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_1_BGS" (
    bigserial_1 BIGSERIAL NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_1_BGS"
ADD CONSTRAINT "fk_self_R1MS_1_BGS"
FOREIGN KEY (
    parent_bigserial_1)
REFERENCES "R1MS_1_BGS" (
    bigserial_1);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_1_INT
-- KEY SCHEMA: INTEGER
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_1_INT" (
    integer_1 INTEGER NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_1_INT"
ADD CONSTRAINT "fk_self_R1MS_1_INT"
FOREIGN KEY (
    parent_integer_1)
REFERENCES "R1MS_1_INT" (
    integer_1);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_1_BGT
-- KEY SCHEMA: BIGINT
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_1_BGT" (
    bigint_1 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigint_1 BIGINT,
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigint_1    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_1_BGT"
ADD CONSTRAINT "fk_self_R1MS_1_BGT"
FOREIGN KEY (
    parent_bigint_1)
REFERENCES "R1MS_1_BGT" (
    bigint_1);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_1_UID
-- KEY SCHEMA: UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_1_UID" (
    uuid_1 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_uuid_1 UUID,
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        uuid_1    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_1_UID"
ADD CONSTRAINT "fk_self_R1MS_1_UID"
FOREIGN KEY (
    parent_uuid_1)
REFERENCES "R1MS_1_UID" (
    uuid_1);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_1_Cha
-- KEY SCHEMA: CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_1_Cha" (
    char_36_1 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_char_36_1 CHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        char_36_1    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_1_Cha"
ADD CONSTRAINT "fk_self_R1MS_1_Cha"
FOREIGN KEY (
    parent_char_36_1)
REFERENCES "R1MS_1_Cha" (
    char_36_1);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_1_Var
-- KEY SCHEMA: VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_1_Var" (
    varchar_36_1 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_varchar_36_1 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        varchar_36_1    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_1_Var"
ADD CONSTRAINT "fk_self_R1MS_1_Var"
FOREIGN KEY (
    parent_varchar_36_1)
REFERENCES "R1MS_1_Var" (
    varchar_36_1);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_SRL_BGS
-- KEY SCHEMA: SERIAL, BIGSERIAL
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_SRL_BGS" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_SRL_BGS"
ADD CONSTRAINT "fk_self_R1MS_2_SRL_BGS"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2)
REFERENCES "R1MS_2_SRL_BGS" (
    serial_1, 
    bigserial_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_SRL_INT
-- KEY SCHEMA: SERIAL, INTEGER
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_SRL_INT" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_SRL_INT"
ADD CONSTRAINT "fk_self_R1MS_2_SRL_INT"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2)
REFERENCES "R1MS_2_SRL_INT" (
    serial_1, 
    integer_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_SRL_BGT
-- KEY SCHEMA: SERIAL, BIGINT
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_SRL_BGT" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigint_2 BIGINT,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigint_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_SRL_BGT"
ADD CONSTRAINT "fk_self_R1MS_2_SRL_BGT"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2)
REFERENCES "R1MS_2_SRL_BGT" (
    serial_1, 
    bigint_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_SRL_UID
-- KEY SCHEMA: SERIAL, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_SRL_UID" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_uuid_2 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        uuid_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_SRL_UID"
ADD CONSTRAINT "fk_self_R1MS_2_SRL_UID"
FOREIGN KEY (
    parent_serial_1, 
    parent_uuid_2)
REFERENCES "R1MS_2_SRL_UID" (
    serial_1, 
    uuid_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_SRL_Cha
-- KEY SCHEMA: SERIAL, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_SRL_Cha" (
    serial_1 SERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_char_36_2 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        char_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_SRL_Cha"
ADD CONSTRAINT "fk_self_R1MS_2_SRL_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_char_36_2)
REFERENCES "R1MS_2_SRL_Cha" (
    serial_1, 
    char_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_SRL_Var
-- KEY SCHEMA: SERIAL, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_SRL_Var" (
    serial_1 SERIAL NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_varchar_36_2 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        varchar_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_SRL_Var"
ADD CONSTRAINT "fk_self_R1MS_2_SRL_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_varchar_36_2)
REFERENCES "R1MS_2_SRL_Var" (
    serial_1, 
    varchar_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_BGS_INT
-- KEY SCHEMA: BIGSERIAL, INTEGER
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_BGS_INT" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_BGS_INT"
ADD CONSTRAINT "fk_self_R1MS_2_BGS_INT"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2)
REFERENCES "R1MS_2_BGS_INT" (
    bigserial_1, 
    integer_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_BGS_BGT
-- KEY SCHEMA: BIGSERIAL, BIGINT
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_BGS_BGT" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_bigint_2 BIGINT,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        bigint_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_BGS_BGT"
ADD CONSTRAINT "fk_self_R1MS_2_BGS_BGT"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2)
REFERENCES "R1MS_2_BGS_BGT" (
    bigserial_1, 
    bigint_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_BGS_UID
-- KEY SCHEMA: BIGSERIAL, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_BGS_UID" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_uuid_2 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        uuid_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_BGS_UID"
ADD CONSTRAINT "fk_self_R1MS_2_BGS_UID"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_uuid_2)
REFERENCES "R1MS_2_BGS_UID" (
    bigserial_1, 
    uuid_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_BGS_Cha
-- KEY SCHEMA: BIGSERIAL, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_BGS_Cha" (
    bigserial_1 BIGSERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_char_36_2 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        char_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_BGS_Cha"
ADD CONSTRAINT "fk_self_R1MS_2_BGS_Cha"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_char_36_2)
REFERENCES "R1MS_2_BGS_Cha" (
    bigserial_1, 
    char_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_BGS_Var
-- KEY SCHEMA: BIGSERIAL, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_BGS_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_varchar_36_2 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        varchar_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_BGS_Var"
ADD CONSTRAINT "fk_self_R1MS_2_BGS_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_varchar_36_2)
REFERENCES "R1MS_2_BGS_Var" (
    bigserial_1, 
    varchar_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_INT_BGT
-- KEY SCHEMA: INTEGER, BIGINT
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_INT_BGT" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_bigint_2 BIGINT,
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        bigint_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_INT_BGT"
ADD CONSTRAINT "fk_self_R1MS_2_INT_BGT"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2)
REFERENCES "R1MS_2_INT_BGT" (
    integer_1, 
    bigint_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_INT_UID
-- KEY SCHEMA: INTEGER, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_INT_UID" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_uuid_2 UUID,
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        uuid_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_INT_UID"
ADD CONSTRAINT "fk_self_R1MS_2_INT_UID"
FOREIGN KEY (
    parent_integer_1, 
    parent_uuid_2)
REFERENCES "R1MS_2_INT_UID" (
    integer_1, 
    uuid_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_INT_Cha
-- KEY SCHEMA: INTEGER, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_INT_Cha" (
    integer_1 INTEGER NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_char_36_2 CHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        char_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_INT_Cha"
ADD CONSTRAINT "fk_self_R1MS_2_INT_Cha"
FOREIGN KEY (
    parent_integer_1, 
    parent_char_36_2)
REFERENCES "R1MS_2_INT_Cha" (
    integer_1, 
    char_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_INT_Var
-- KEY SCHEMA: INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_INT_Var" (
    integer_1 INTEGER NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_varchar_36_2 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        varchar_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_INT_Var"
ADD CONSTRAINT "fk_self_R1MS_2_INT_Var"
FOREIGN KEY (
    parent_integer_1, 
    parent_varchar_36_2)
REFERENCES "R1MS_2_INT_Var" (
    integer_1, 
    varchar_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_BGT_UID
-- KEY SCHEMA: BIGINT, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_BGT_UID" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigint_1 BIGINT,
    parent_uuid_2 UUID,
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigint_1, 
        uuid_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_BGT_UID"
ADD CONSTRAINT "fk_self_R1MS_2_BGT_UID"
FOREIGN KEY (
    parent_bigint_1, 
    parent_uuid_2)
REFERENCES "R1MS_2_BGT_UID" (
    bigint_1, 
    uuid_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_BGT_Cha
-- KEY SCHEMA: BIGINT, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_BGT_Cha" (
    bigint_1 BIGINT NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigint_1 BIGINT,
    parent_char_36_2 CHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigint_1, 
        char_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_BGT_Cha"
ADD CONSTRAINT "fk_self_R1MS_2_BGT_Cha"
FOREIGN KEY (
    parent_bigint_1, 
    parent_char_36_2)
REFERENCES "R1MS_2_BGT_Cha" (
    bigint_1, 
    char_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_BGT_Var
-- KEY SCHEMA: BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_BGT_Var" (
    bigint_1 BIGINT NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigint_1 BIGINT,
    parent_varchar_36_2 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigint_1, 
        varchar_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_BGT_Var"
ADD CONSTRAINT "fk_self_R1MS_2_BGT_Var"
FOREIGN KEY (
    parent_bigint_1, 
    parent_varchar_36_2)
REFERENCES "R1MS_2_BGT_Var" (
    bigint_1, 
    varchar_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_UID_Cha
-- KEY SCHEMA: UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_UID_Cha" (
    uuid_1 UUID NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_uuid_1 UUID,
    parent_char_36_2 CHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        uuid_1, 
        char_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_2_UID_Cha"
FOREIGN KEY (
    parent_uuid_1, 
    parent_char_36_2)
REFERENCES "R1MS_2_UID_Cha" (
    uuid_1, 
    char_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_UID_Var
-- KEY SCHEMA: UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_UID_Var" (
    uuid_1 UUID NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_uuid_1 UUID,
    parent_varchar_36_2 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        uuid_1, 
        varchar_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_2_UID_Var"
FOREIGN KEY (
    parent_uuid_1, 
    parent_varchar_36_2)
REFERENCES "R1MS_2_UID_Var" (
    uuid_1, 
    varchar_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_2_Cha_Var
-- KEY SCHEMA: CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_2_Cha_Var" (
    char_36_1 CHAR(36) NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_char_36_1 CHAR(36),
    parent_varchar_36_2 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        char_36_1, 
        varchar_36_2    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_2_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_2_Cha_Var"
FOREIGN KEY (
    parent_char_36_1, 
    parent_varchar_36_2)
REFERENCES "R1MS_2_Cha_Var" (
    char_36_1, 
    varchar_36_2);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_BGS_INT
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_BGS_INT" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_BGS_INT"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_BGS_INT"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3)
REFERENCES "R1MS_3_SRL_BGS_INT" (
    serial_1, 
    bigserial_2, 
    integer_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_BGS_BGT
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_BGS_BGT" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_bigint_3 BIGINT,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        bigint_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_BGS_BGT"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_BGS_BGT"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3)
REFERENCES "R1MS_3_SRL_BGS_BGT" (
    serial_1, 
    bigserial_2, 
    bigint_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_BGS_UID
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_BGS_UID" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_uuid_3 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        uuid_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_BGS_UID"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_BGS_UID"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_uuid_3)
REFERENCES "R1MS_3_SRL_BGS_UID" (
    serial_1, 
    bigserial_2, 
    uuid_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_BGS_Cha
-- KEY SCHEMA: SERIAL, BIGSERIAL, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_BGS_Cha" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_char_36_3 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_BGS_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_BGS_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_SRL_BGS_Cha" (
    serial_1, 
    bigserial_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_BGS_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_BGS_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_BGS_Var"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_BGS_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_SRL_BGS_Var" (
    serial_1, 
    bigserial_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_INT_BGT
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_INT_BGT" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        bigint_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_INT_BGT"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_INT_BGT"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3)
REFERENCES "R1MS_3_SRL_INT_BGT" (
    serial_1, 
    integer_2, 
    bigint_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_INT_UID
-- KEY SCHEMA: SERIAL, INTEGER, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_INT_UID" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_uuid_3 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        uuid_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_INT_UID"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_INT_UID"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_uuid_3)
REFERENCES "R1MS_3_SRL_INT_UID" (
    serial_1, 
    integer_2, 
    uuid_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_INT_Cha
-- KEY SCHEMA: SERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_INT_Cha" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_char_36_3 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_INT_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_INT_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_SRL_INT_Cha" (
    serial_1, 
    integer_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_INT_Var
-- KEY SCHEMA: SERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_INT_Var" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_INT_Var"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_INT_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_SRL_INT_Var" (
    serial_1, 
    integer_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_BGT_UID
-- KEY SCHEMA: SERIAL, BIGINT, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_BGT_UID" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigint_2, 
        uuid_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_BGT_UID"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_BGT_UID"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_uuid_3)
REFERENCES "R1MS_3_SRL_BGT_UID" (
    serial_1, 
    bigint_2, 
    uuid_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_BGT_Cha
-- KEY SCHEMA: SERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_BGT_Cha" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_char_36_3 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigint_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_BGT_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_BGT_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_SRL_BGT_Cha" (
    serial_1, 
    bigint_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_BGT_Var
-- KEY SCHEMA: SERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_BGT_Var" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigint_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_BGT_Var"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_BGT_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_SRL_BGT_Var" (
    serial_1, 
    bigint_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_UID_Cha
-- KEY SCHEMA: SERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_UID_Cha" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_uuid_2 UUID,
    parent_char_36_3 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        uuid_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_UID_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_uuid_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_SRL_UID_Cha" (
    serial_1, 
    uuid_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_UID_Var
-- KEY SCHEMA: SERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_UID_Var" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_uuid_2 UUID,
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        uuid_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_UID_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_uuid_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_SRL_UID_Var" (
    serial_1, 
    uuid_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_SRL_Cha_Var
-- KEY SCHEMA: SERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_SRL_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_char_36_2 CHAR(36),
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        char_36_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_SRL_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_3_SRL_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_SRL_Cha_Var" (
    serial_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_INT_BGT
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_INT_BGT" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        bigint_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_INT_BGT"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_INT_BGT"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3)
REFERENCES "R1MS_3_BGS_INT_BGT" (
    bigserial_1, 
    integer_2, 
    bigint_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_INT_UID
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_INT_UID" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_uuid_3 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        uuid_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_INT_UID"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_INT_UID"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_uuid_3)
REFERENCES "R1MS_3_BGS_INT_UID" (
    bigserial_1, 
    integer_2, 
    uuid_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_INT_Cha
-- KEY SCHEMA: BIGSERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_INT_Cha" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_char_36_3 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_INT_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_INT_Cha"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_BGS_INT_Cha" (
    bigserial_1, 
    integer_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_INT_Var
-- KEY SCHEMA: BIGSERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_INT_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_INT_Var"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_INT_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_BGS_INT_Var" (
    bigserial_1, 
    integer_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_BGT_UID
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_BGT_UID" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        bigint_2, 
        uuid_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_BGT_UID"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_BGT_UID"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_uuid_3)
REFERENCES "R1MS_3_BGS_BGT_UID" (
    bigserial_1, 
    bigint_2, 
    uuid_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_BGT_Cha
-- KEY SCHEMA: BIGSERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_BGT_Cha" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_bigint_2 BIGINT,
    parent_char_36_3 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        bigint_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_BGT_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_BGT_Cha"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_BGS_BGT_Cha" (
    bigserial_1, 
    bigint_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_BGT_Var
-- KEY SCHEMA: BIGSERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_BGT_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_bigint_2 BIGINT,
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        bigint_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_BGT_Var"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_BGT_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_BGS_BGT_Var" (
    bigserial_1, 
    bigint_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_UID_Cha
-- KEY SCHEMA: BIGSERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_UID_Cha" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_uuid_2 UUID,
    parent_char_36_3 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        uuid_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_UID_Cha"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_uuid_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_BGS_UID_Cha" (
    bigserial_1, 
    uuid_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_UID_Var
-- KEY SCHEMA: BIGSERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_UID_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_uuid_2 UUID,
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        uuid_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_UID_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_uuid_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_BGS_UID_Var" (
    bigserial_1, 
    uuid_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGS_Cha_Var
-- KEY SCHEMA: BIGSERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGS_Cha_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_char_36_2 CHAR(36),
    parent_varchar_36_3 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        char_36_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGS_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_3_BGS_Cha_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_BGS_Cha_Var" (
    bigserial_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_INT_BGT_UID
-- KEY SCHEMA: INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_INT_BGT_UID" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        bigint_2, 
        uuid_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_INT_BGT_UID"
ADD CONSTRAINT "fk_self_R1MS_3_INT_BGT_UID"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_uuid_3)
REFERENCES "R1MS_3_INT_BGT_UID" (
    integer_1, 
    bigint_2, 
    uuid_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_INT_BGT_Cha
-- KEY SCHEMA: INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_INT_BGT_Cha" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_char_36_3 CHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        bigint_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_INT_BGT_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_INT_BGT_Cha"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_INT_BGT_Cha" (
    integer_1, 
    bigint_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_INT_BGT_Var
-- KEY SCHEMA: INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_INT_BGT_Var" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_varchar_36_3 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        bigint_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_INT_BGT_Var"
ADD CONSTRAINT "fk_self_R1MS_3_INT_BGT_Var"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_INT_BGT_Var" (
    integer_1, 
    bigint_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_INT_UID_Cha
-- KEY SCHEMA: INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_INT_UID_Cha" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_uuid_2 UUID,
    parent_char_36_3 CHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        uuid_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_INT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_INT_UID_Cha"
FOREIGN KEY (
    parent_integer_1, 
    parent_uuid_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_INT_UID_Cha" (
    integer_1, 
    uuid_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_INT_UID_Var
-- KEY SCHEMA: INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_INT_UID_Var" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_uuid_2 UUID,
    parent_varchar_36_3 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        uuid_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_INT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_3_INT_UID_Var"
FOREIGN KEY (
    parent_integer_1, 
    parent_uuid_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_INT_UID_Var" (
    integer_1, 
    uuid_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_INT_Cha_Var
-- KEY SCHEMA: INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_INT_Cha_Var" (
    integer_1 INTEGER NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_char_36_2 CHAR(36),
    parent_varchar_36_3 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        char_36_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_INT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_3_INT_Cha_Var"
FOREIGN KEY (
    parent_integer_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_INT_Cha_Var" (
    integer_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGT_UID_Cha
-- KEY SCHEMA: BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGT_UID_Cha" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigint_1 BIGINT,
    parent_uuid_2 UUID,
    parent_char_36_3 CHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigint_1, 
        uuid_2, 
        char_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_3_BGT_UID_Cha"
FOREIGN KEY (
    parent_bigint_1, 
    parent_uuid_2, 
    parent_char_36_3)
REFERENCES "R1MS_3_BGT_UID_Cha" (
    bigint_1, 
    uuid_2, 
    char_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGT_UID_Var
-- KEY SCHEMA: BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGT_UID_Var" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigint_1 BIGINT,
    parent_uuid_2 UUID,
    parent_varchar_36_3 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigint_1, 
        uuid_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_3_BGT_UID_Var"
FOREIGN KEY (
    parent_bigint_1, 
    parent_uuid_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_BGT_UID_Var" (
    bigint_1, 
    uuid_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_BGT_Cha_Var
-- KEY SCHEMA: BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_BGT_Cha_Var" (
    bigint_1 BIGINT NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigint_1 BIGINT,
    parent_char_36_2 CHAR(36),
    parent_varchar_36_3 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigint_1, 
        char_36_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_BGT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_3_BGT_Cha_Var"
FOREIGN KEY (
    parent_bigint_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_BGT_Cha_Var" (
    bigint_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_3_UID_Cha_Var
-- KEY SCHEMA: UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_3_UID_Cha_Var" (
    uuid_1 UUID NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_uuid_1 UUID,
    parent_char_36_2 CHAR(36),
    parent_varchar_36_3 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        uuid_1, 
        char_36_2, 
        varchar_36_3    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_3_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_3_UID_Cha_Var"
FOREIGN KEY (
    parent_uuid_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1MS_3_UID_Cha_Var" (
    uuid_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_INT_BGT
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_INT_BGT" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_bigint_4 BIGINT,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        bigint_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_INT_BGT"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_INT_BGT"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4)
REFERENCES "R1MS_4_SRL_BGS_INT_BGT" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_INT_UID
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_INT_UID" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_uuid_4 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        uuid_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_INT_UID"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_INT_UID"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_uuid_4)
REFERENCES "R1MS_4_SRL_BGS_INT_UID" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_INT_Cha
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_INT_Cha" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_INT_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_INT_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_SRL_BGS_INT_Cha" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_INT_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_INT_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_INT_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_INT_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_BGS_INT_Var" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_BGT_UID
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_BGT_UID" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        bigint_3, 
        uuid_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_BGT_UID"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_BGT_UID"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_uuid_4)
REFERENCES "R1MS_4_SRL_BGS_BGT_UID" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_BGT_Cha
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_BGT_Cha" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_bigint_3 BIGINT,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        bigint_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_BGT_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_BGT_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_SRL_BGS_BGT_Cha" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_BGT_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_BGT_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_bigint_3 BIGINT,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        bigint_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_BGT_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_BGT_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_BGS_BGT_Var" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_UID_Cha
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_UID_Cha" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        uuid_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_UID_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_SRL_BGS_UID_Cha" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_UID_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_UID_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_uuid_3 UUID,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        uuid_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_UID_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_BGS_UID_Var" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGS_Cha_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGS_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGS_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGS_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_BGS_Cha_Var" (
    serial_1, 
    bigserial_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_INT_BGT_UID
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_INT_BGT_UID" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        bigint_3, 
        uuid_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_INT_BGT_UID"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_INT_BGT_UID"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4)
REFERENCES "R1MS_4_SRL_INT_BGT_UID" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_INT_BGT_Cha
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_INT_BGT_Cha" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        bigint_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_INT_BGT_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_INT_BGT_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_SRL_INT_BGT_Cha" (
    serial_1, 
    integer_2, 
    bigint_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_INT_BGT_Var
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_INT_BGT_Var" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        bigint_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_INT_BGT_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_INT_BGT_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_INT_BGT_Var" (
    serial_1, 
    integer_2, 
    bigint_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_INT_UID_Cha
-- KEY SCHEMA: SERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_INT_UID_Cha" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        uuid_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_INT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_INT_UID_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_SRL_INT_UID_Cha" (
    serial_1, 
    integer_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_INT_UID_Var
-- KEY SCHEMA: SERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_INT_UID_Var" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_uuid_3 UUID,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        uuid_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_INT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_INT_UID_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_INT_UID_Var" (
    serial_1, 
    integer_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_INT_Cha_Var
-- KEY SCHEMA: SERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_INT_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_INT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_INT_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_INT_Cha_Var" (
    serial_1, 
    integer_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGT_UID_Cha
-- KEY SCHEMA: SERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGT_UID_Cha" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigint_2, 
        uuid_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGT_UID_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_SRL_BGT_UID_Cha" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGT_UID_Var
-- KEY SCHEMA: SERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGT_UID_Var" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigint_2, 
        uuid_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGT_UID_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_BGT_UID_Var" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_BGT_Cha_Var
-- KEY SCHEMA: SERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_BGT_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigint_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_BGT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_BGT_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_BGT_Cha_Var" (
    serial_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_SRL_UID_Cha_Var
-- KEY SCHEMA: SERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_SRL_UID_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_uuid_2 UUID,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        uuid_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_SRL_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_SRL_UID_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_uuid_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_SRL_UID_Cha_Var" (
    serial_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_INT_BGT_UID
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_INT_BGT_UID" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        bigint_3, 
        uuid_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_INT_BGT_UID"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_INT_BGT_UID"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4)
REFERENCES "R1MS_4_BGS_INT_BGT_UID" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_INT_BGT_Cha
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_INT_BGT_Cha" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        bigint_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_INT_BGT_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_INT_BGT_Cha"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_BGS_INT_BGT_Cha" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_INT_BGT_Var
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_INT_BGT_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        bigint_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_INT_BGT_Var"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_INT_BGT_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_BGS_INT_BGT_Var" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_INT_UID_Cha
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_INT_UID_Cha" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        uuid_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_INT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_INT_UID_Cha"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_BGS_INT_UID_Cha" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_INT_UID_Var
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_INT_UID_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_uuid_3 UUID,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        uuid_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_INT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_INT_UID_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_BGS_INT_UID_Var" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_INT_Cha_Var
-- KEY SCHEMA: BIGSERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_INT_Cha_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_INT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_INT_Cha_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_BGS_INT_Cha_Var" (
    bigserial_1, 
    integer_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_BGT_UID_Cha
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_BGT_UID_Cha" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        bigint_2, 
        uuid_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_BGT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_BGT_UID_Cha"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_BGS_BGT_UID_Cha" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_BGT_UID_Var
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_BGT_UID_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        bigint_2, 
        uuid_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_BGT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_BGT_UID_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_BGS_BGT_UID_Var" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_BGT_Cha_Var
-- KEY SCHEMA: BIGSERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_BGT_Cha_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_bigint_2 BIGINT,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        bigint_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_BGT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_BGT_Cha_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_BGS_BGT_Cha_Var" (
    bigserial_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGS_UID_Cha_Var
-- KEY SCHEMA: BIGSERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGS_UID_Cha_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_uuid_2 UUID,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        uuid_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGS_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_BGS_UID_Cha_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_uuid_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_BGS_UID_Cha_Var" (
    bigserial_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_INT_BGT_UID_Cha
-- KEY SCHEMA: INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_INT_BGT_UID_Cha" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        bigint_2, 
        uuid_3, 
        char_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_INT_BGT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_4_INT_BGT_UID_Cha"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1MS_4_INT_BGT_UID_Cha" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_INT_BGT_UID_Var
-- KEY SCHEMA: INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_INT_BGT_UID_Var" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_varchar_36_4 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        bigint_2, 
        uuid_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_INT_BGT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_4_INT_BGT_UID_Var"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_INT_BGT_UID_Var" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_INT_BGT_Cha_Var
-- KEY SCHEMA: INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_INT_BGT_Cha_Var" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        bigint_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_INT_BGT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_INT_BGT_Cha_Var"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_INT_BGT_Cha_Var" (
    integer_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_INT_UID_Cha_Var
-- KEY SCHEMA: INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_INT_UID_Cha_Var" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_uuid_2 UUID,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        uuid_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_INT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_INT_UID_Cha_Var"
FOREIGN KEY (
    parent_integer_1, 
    parent_uuid_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_INT_UID_Cha_Var" (
    integer_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_4_BGT_UID_Cha_Var
-- KEY SCHEMA: BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_4_BGT_UID_Cha_Var" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigint_1 BIGINT,
    parent_uuid_2 UUID,
    parent_char_36_3 CHAR(36),
    parent_varchar_36_4 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigint_1, 
        uuid_2, 
        char_36_3, 
        varchar_36_4    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_4_BGT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_4_BGT_UID_Cha_Var"
FOREIGN KEY (
    parent_bigint_1, 
    parent_uuid_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1MS_4_BGT_UID_Cha_Var" (
    bigint_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_INT_BGT_UID
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_INT_BGT_UID" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_bigint_4 BIGINT,
    parent_uuid_5 UUID,
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        bigint_4, 
        uuid_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_INT_BGT_UID"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_INT_BGT_UID"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_uuid_5)
REFERENCES "R1MS_5_SRL_BGS_INT_BGT_UID" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_INT_BGT_Cha
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_INT_BGT_Cha" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_bigint_4 BIGINT,
    parent_char_36_5 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        bigint_4, 
        char_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_INT_BGT_Cha"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_INT_BGT_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_char_36_5)
REFERENCES "R1MS_5_SRL_BGS_INT_BGT_Cha" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    char_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_INT_BGT_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_INT_BGT_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_bigint_4 BIGINT,
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        bigint_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_INT_BGT_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_INT_BGT_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_BGS_INT_BGT_Var" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_INT_UID_Cha
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_INT_UID_Cha" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_uuid_4 UUID,
    parent_char_36_5 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        uuid_4, 
        char_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_INT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_INT_UID_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_uuid_4, 
    parent_char_36_5)
REFERENCES "R1MS_5_SRL_BGS_INT_UID_Cha" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    char_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_INT_UID_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_INT_UID_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_uuid_4 UUID,
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        uuid_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_INT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_INT_UID_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_uuid_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_BGS_INT_UID_Var" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_INT_Cha_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_INT_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_INT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_INT_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_BGS_INT_Cha_Var" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_BGT_UID_Cha
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_BGT_UID_Cha" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_char_36_5 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        bigint_3, 
        uuid_4, 
        char_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_BGT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_BGT_UID_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5)
REFERENCES "R1MS_5_SRL_BGS_BGT_UID_Cha" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_BGT_UID_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_BGT_UID_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        bigint_3, 
        uuid_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_BGT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_BGT_UID_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_BGS_BGT_UID_Var" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_BGT_Cha_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_BGT_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_bigint_3 BIGINT,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        bigint_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_BGT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_BGT_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_BGS_BGT_Cha_Var" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGS_UID_Cha_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGS_UID_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        uuid_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGS_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGS_UID_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_BGS_UID_Cha_Var" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_INT_BGT_UID_Cha
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_INT_BGT_UID_Cha" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_char_36_5 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        bigint_3, 
        uuid_4, 
        char_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_INT_BGT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_INT_BGT_UID_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5)
REFERENCES "R1MS_5_SRL_INT_BGT_UID_Cha" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_INT_BGT_UID_Var
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_INT_BGT_UID_Var" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        bigint_3, 
        uuid_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_INT_BGT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_INT_BGT_UID_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_INT_BGT_UID_Var" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_INT_BGT_Cha_Var
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_INT_BGT_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        bigint_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_INT_BGT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_INT_BGT_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_INT_BGT_Cha_Var" (
    serial_1, 
    integer_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_INT_UID_Cha_Var
-- KEY SCHEMA: SERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_INT_UID_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        uuid_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_INT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_INT_UID_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_INT_UID_Cha_Var" (
    serial_1, 
    integer_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_SRL_BGT_UID_Cha_Var
-- KEY SCHEMA: SERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_SRL_BGT_UID_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigint_2, 
        uuid_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_SRL_BGT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_SRL_BGT_UID_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_SRL_BGT_UID_Cha_Var" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_BGS_INT_BGT_UID_Cha
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_BGS_INT_BGT_UID_Cha" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_char_36_5 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        bigint_3, 
        uuid_4, 
        char_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_BGS_INT_BGT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_5_BGS_INT_BGT_UID_Cha"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5)
REFERENCES "R1MS_5_BGS_INT_BGT_UID_Cha" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_BGS_INT_BGT_UID_Var
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_BGS_INT_BGT_UID_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        bigint_3, 
        uuid_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_BGS_INT_BGT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_5_BGS_INT_BGT_UID_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_BGS_INT_BGT_UID_Var" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_BGS_INT_BGT_Cha_Var
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_BGS_INT_BGT_Cha_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        bigint_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_BGS_INT_BGT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_BGS_INT_BGT_Cha_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_BGS_INT_BGT_Cha_Var" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_BGS_INT_UID_Cha_Var
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_BGS_INT_UID_Cha_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        uuid_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_BGS_INT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_BGS_INT_UID_Cha_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_BGS_INT_UID_Cha_Var" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_BGS_BGT_UID_Cha_Var
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_BGS_BGT_UID_Cha_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        bigint_2, 
        uuid_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_BGS_BGT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_BGS_BGT_UID_Cha_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_BGS_BGT_UID_Cha_Var" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_5_INT_BGT_UID_Cha_Var
-- KEY SCHEMA: INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_5_INT_BGT_UID_Cha_Var" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_integer_1 INTEGER,
    parent_bigint_2 BIGINT,
    parent_uuid_3 UUID,
    parent_char_36_4 CHAR(36),
    parent_varchar_36_5 VARCHAR(36),
    serial_col SERIAL,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        integer_1, 
        bigint_2, 
        uuid_3, 
        char_36_4, 
        varchar_36_5    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_5_INT_BGT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_5_INT_BGT_UID_Cha_Var"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1MS_5_INT_BGT_UID_Cha_Var" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_6_SRL_BGS_INT_BGT_UID_Cha
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_6_SRL_BGS_INT_BGT_UID_Cha" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    char_36_6 CHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_bigint_4 BIGINT,
    parent_uuid_5 UUID,
    parent_char_36_6 CHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        bigint_4, 
        uuid_5, 
        char_36_6    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_6_SRL_BGS_INT_BGT_UID_Cha"
ADD CONSTRAINT "fk_self_R1MS_6_SRL_BGS_INT_BGT_UID_Cha"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_uuid_5, 
    parent_char_36_6)
REFERENCES "R1MS_6_SRL_BGS_INT_BGT_UID_Cha" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    char_36_6);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_6_SRL_BGS_INT_BGT_UID_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_6_SRL_BGS_INT_BGT_UID_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_bigint_4 BIGINT,
    parent_uuid_5 UUID,
    parent_varchar_36_6 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        bigint_4, 
        uuid_5, 
        varchar_36_6    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_6_SRL_BGS_INT_BGT_UID_Var"
ADD CONSTRAINT "fk_self_R1MS_6_SRL_BGS_INT_BGT_UID_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_uuid_5, 
    parent_varchar_36_6)
REFERENCES "R1MS_6_SRL_BGS_INT_BGT_UID_Var" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    varchar_36_6);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_6_SRL_BGS_INT_BGT_Cha_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_6_SRL_BGS_INT_BGT_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_bigint_4 BIGINT,
    parent_char_36_5 CHAR(36),
    parent_varchar_36_6 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        bigint_4, 
        char_36_5, 
        varchar_36_6    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_6_SRL_BGS_INT_BGT_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_6_SRL_BGS_INT_BGT_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1MS_6_SRL_BGS_INT_BGT_Cha_Var" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_6_SRL_BGS_INT_UID_Cha_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_6_SRL_BGS_INT_UID_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_uuid_4 UUID,
    parent_char_36_5 CHAR(36),
    parent_varchar_36_6 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        uuid_4, 
        char_36_5, 
        varchar_36_6    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_6_SRL_BGS_INT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_6_SRL_BGS_INT_UID_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_uuid_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1MS_6_SRL_BGS_INT_UID_Cha_Var" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_6_SRL_BGS_BGT_UID_Cha_Var
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_6_SRL_BGS_BGT_UID_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_char_36_5 CHAR(36),
    parent_varchar_36_6 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        bigint_3, 
        uuid_4, 
        char_36_5, 
        varchar_36_6    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_6_SRL_BGS_BGT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_6_SRL_BGS_BGT_UID_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1MS_6_SRL_BGS_BGT_UID_Cha_Var" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_6_SRL_INT_BGT_UID_Cha_Var
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_6_SRL_INT_BGT_UID_Cha_Var" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_char_36_5 CHAR(36),
    parent_varchar_36_6 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        integer_2, 
        bigint_3, 
        uuid_4, 
        char_36_5, 
        varchar_36_6    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_6_SRL_INT_BGT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_6_SRL_INT_BGT_UID_Cha_Var"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1MS_6_SRL_INT_BGT_UID_Cha_Var" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_6_BGS_INT_BGT_UID_Cha_Var
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_6_BGS_INT_BGT_UID_Cha_Var" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_bigserial_1 BIGINT,
    parent_integer_2 INTEGER,
    parent_bigint_3 BIGINT,
    parent_uuid_4 UUID,
    parent_char_36_5 CHAR(36),
    parent_varchar_36_6 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        bigserial_1, 
        integer_2, 
        bigint_3, 
        uuid_4, 
        char_36_5, 
        varchar_36_6    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_6_BGS_INT_BGT_UID_Cha_Var"
ADD CONSTRAINT "fk_self_R1MS_6_BGS_INT_BGT_UID_Cha_Var"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1MS_6_BGS_INT_BGT_UID_Cha_Var" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- HIERARCHY [1:M SELF]: R1MS_7_SRL_BGS_INT_BGT_UD_R1124R
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Self-Referencing Table
CREATE TABLE IF NOT EXISTS "R1MS_7_SRL_BGS_INT_BGT_UD_R1124R" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    char_36_6 CHAR(36) NOT NULL,
    varchar_36_7 VARCHAR(36) NOT NULL,
    -- Recursive Parent Reference Columns
    parent_serial_1 INTEGER,
    parent_bigserial_2 BIGINT,
    parent_integer_3 INTEGER,
    parent_bigint_4 BIGINT,
    parent_uuid_5 UUID,
    parent_char_36_6 CHAR(36),
    parent_varchar_36_7 VARCHAR(36),
    serial_col INTEGER,
    bigserial_col BIGINT,
    smallserial_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    smallint_col SMALLINT,
    numeric_col NUMERIC(10,2),
    decimal_col DECIMAL(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    money_col MONEY,
    varchar_col VARCHAR(255),
    char_col CHAR(10),
    text_col TEXT,
    bytea_col BYTEA,
    boolean_col BOOLEAN,
    date_col DATE,
    time_col TIME,
    timetz_col TIME WITH TIME ZONE,
    timestamp_col TIMESTAMP,
    timestamptz_col TIMESTAMP WITH TIME ZONE,
    interval_col INTERVAL,
    json_col JSON,
    jsonb_col JSONB,
    uuid_col UUID,
    xml_col XML,
    inet_col INET,
    cidr_col CIDR,
    macaddr_col MACADDR,
    bit_col BIT(8),
    varbit_col BIT VARYING(64),
    int_array_col INTEGER[],
    text_array_col TEXT[],
    point_col POINT,
    line_col LINE,
    lseg_col LSEG,
    box_col BOX,
    path_col PATH,
    polygon_col POLYGON,
    circle_col CIRCLE,
    PRIMARY KEY (
        serial_1, 
        bigserial_2, 
        integer_3, 
        bigint_4, 
        uuid_5, 
        char_36_6, 
        varchar_36_7    )
);

-- Establish Self-Referential Foreign Key
ALTER TABLE "R1MS_7_SRL_BGS_INT_BGT_UD_R1124R"
ADD CONSTRAINT "fk_self_R1MS_7_SRL_BGS_INT_BGT_UD_R1124R"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_uuid_5, 
    parent_char_36_6, 
    parent_varchar_36_7)
REFERENCES "R1MS_7_SRL_BGS_INT_BGT_UD_R1124R" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    char_36_6, 
    varchar_36_7);

