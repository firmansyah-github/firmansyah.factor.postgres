
-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_1_SRL_P (Parent) <-> R1M_1_SRL_C (Child)
-- KEY SCHEMA: SERIAL
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_1_SRL_P" (
    serial_1 SERIAL NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_1_SRL_C" (
    serial_1 SERIAL NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_1_SRL_C"
ADD CONSTRAINT "fk_R1M_1_SRL_C"
FOREIGN KEY (
    parent_serial_1)
REFERENCES "R1M_1_SRL_P" (
    serial_1)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_1_BGS_P (Parent) <-> R1M_1_BGS_C (Child)
-- KEY SCHEMA: BIGSERIAL
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_1_BGS_P" (
    bigserial_1 BIGSERIAL NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_1_BGS_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_1_BGS_C"
ADD CONSTRAINT "fk_R1M_1_BGS_C"
FOREIGN KEY (
    parent_bigserial_1)
REFERENCES "R1M_1_BGS_P" (
    bigserial_1)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_1_INT_P (Parent) <-> R1M_1_INT_C (Child)
-- KEY SCHEMA: INTEGER
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_1_INT_P" (
    integer_1 INTEGER NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_1_INT_C" (
    integer_1 INTEGER NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_1_INT_C"
ADD CONSTRAINT "fk_R1M_1_INT_C"
FOREIGN KEY (
    parent_integer_1)
REFERENCES "R1M_1_INT_P" (
    integer_1)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_1_BGT_P (Parent) <-> R1M_1_BGT_C (Child)
-- KEY SCHEMA: BIGINT
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_1_BGT_P" (
    bigint_1 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_1_BGT_C" (
    bigint_1 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigint_1 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_1_BGT_C"
ADD CONSTRAINT "fk_R1M_1_BGT_C"
FOREIGN KEY (
    parent_bigint_1)
REFERENCES "R1M_1_BGT_P" (
    bigint_1)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_1_UID_P (Parent) <-> R1M_1_UID_C (Child)
-- KEY SCHEMA: UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_1_UID_P" (
    uuid_1 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_1_UID_C" (
    uuid_1 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_uuid_1 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_1_UID_C"
ADD CONSTRAINT "fk_R1M_1_UID_C"
FOREIGN KEY (
    parent_uuid_1)
REFERENCES "R1M_1_UID_P" (
    uuid_1)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_1_Cha_P (Parent) <-> R1M_1_Cha_C (Child)
-- KEY SCHEMA: CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_1_Cha_P" (
    char_36_1 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_1_Cha_C" (
    char_36_1 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_char_36_1 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_1_Cha_C"
ADD CONSTRAINT "fk_R1M_1_Cha_C"
FOREIGN KEY (
    parent_char_36_1)
REFERENCES "R1M_1_Cha_P" (
    char_36_1)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_1_Var_P (Parent) <-> R1M_1_Var_C (Child)
-- KEY SCHEMA: VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_1_Var_P" (
    varchar_36_1 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_1_Var_C" (
    varchar_36_1 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_varchar_36_1 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_1_Var_C"
ADD CONSTRAINT "fk_R1M_1_Var_C"
FOREIGN KEY (
    parent_varchar_36_1)
REFERENCES "R1M_1_Var_P" (
    varchar_36_1)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_SRL_BGS_P (Parent) <-> R1M_2_SRL_BGS_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_BGS_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_BGS_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_SRL_BGS_C"
ADD CONSTRAINT "fk_R1M_2_SRL_BGS_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2)
REFERENCES "R1M_2_SRL_BGS_P" (
    serial_1, 
    bigserial_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_SRL_INT_P (Parent) <-> R1M_2_SRL_INT_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_INT_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_INT_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_SRL_INT_C"
ADD CONSTRAINT "fk_R1M_2_SRL_INT_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2)
REFERENCES "R1M_2_SRL_INT_P" (
    serial_1, 
    integer_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_SRL_BGT_P (Parent) <-> R1M_2_SRL_BGT_C (Child)
-- KEY SCHEMA: SERIAL, BIGINT
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_BGT_P" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_BGT_C" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_SRL_BGT_C"
ADD CONSTRAINT "fk_R1M_2_SRL_BGT_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2)
REFERENCES "R1M_2_SRL_BGT_P" (
    serial_1, 
    bigint_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_SRL_UID_P (Parent) <-> R1M_2_SRL_UID_C (Child)
-- KEY SCHEMA: SERIAL, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_UID_P" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_UID_C" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_uuid_2 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_SRL_UID_C"
ADD CONSTRAINT "fk_R1M_2_SRL_UID_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_uuid_2)
REFERENCES "R1M_2_SRL_UID_P" (
    serial_1, 
    uuid_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_SRL_Cha_P (Parent) <-> R1M_2_SRL_Cha_C (Child)
-- KEY SCHEMA: SERIAL, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_Cha_P" (
    serial_1 SERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_Cha_C" (
    serial_1 SERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_SRL_Cha_C"
ADD CONSTRAINT "fk_R1M_2_SRL_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_char_36_2)
REFERENCES "R1M_2_SRL_Cha_P" (
    serial_1, 
    char_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_SRL_Var_P (Parent) <-> R1M_2_SRL_Var_C (Child)
-- KEY SCHEMA: SERIAL, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_Var_P" (
    serial_1 SERIAL NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_SRL_Var_C" (
    serial_1 SERIAL NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_SRL_Var_C"
ADD CONSTRAINT "fk_R1M_2_SRL_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_varchar_36_2)
REFERENCES "R1M_2_SRL_Var_P" (
    serial_1, 
    varchar_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_BGS_INT_P (Parent) <-> R1M_2_BGS_INT_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_INT_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_INT_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_BGS_INT_C"
ADD CONSTRAINT "fk_R1M_2_BGS_INT_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2)
REFERENCES "R1M_2_BGS_INT_P" (
    bigserial_1, 
    integer_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_BGS_BGT_P (Parent) <-> R1M_2_BGS_BGT_C (Child)
-- KEY SCHEMA: BIGSERIAL, BIGINT
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_BGT_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_BGT_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_BGS_BGT_C"
ADD CONSTRAINT "fk_R1M_2_BGS_BGT_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2)
REFERENCES "R1M_2_BGS_BGT_P" (
    bigserial_1, 
    bigint_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_BGS_UID_P (Parent) <-> R1M_2_BGS_UID_C (Child)
-- KEY SCHEMA: BIGSERIAL, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_UID_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_UID_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_uuid_2 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_BGS_UID_C"
ADD CONSTRAINT "fk_R1M_2_BGS_UID_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_uuid_2)
REFERENCES "R1M_2_BGS_UID_P" (
    bigserial_1, 
    uuid_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_BGS_Cha_P (Parent) <-> R1M_2_BGS_Cha_C (Child)
-- KEY SCHEMA: BIGSERIAL, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_Cha_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_Cha_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_BGS_Cha_C"
ADD CONSTRAINT "fk_R1M_2_BGS_Cha_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_char_36_2)
REFERENCES "R1M_2_BGS_Cha_P" (
    bigserial_1, 
    char_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_BGS_Var_P (Parent) <-> R1M_2_BGS_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_BGS_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_BGS_Var_C"
ADD CONSTRAINT "fk_R1M_2_BGS_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_varchar_36_2)
REFERENCES "R1M_2_BGS_Var_P" (
    bigserial_1, 
    varchar_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_INT_BGT_P (Parent) <-> R1M_2_INT_BGT_C (Child)
-- KEY SCHEMA: INTEGER, BIGINT
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_INT_BGT_P" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_INT_BGT_C" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_INT_BGT_C"
ADD CONSTRAINT "fk_R1M_2_INT_BGT_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2)
REFERENCES "R1M_2_INT_BGT_P" (
    integer_1, 
    bigint_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_INT_UID_P (Parent) <-> R1M_2_INT_UID_C (Child)
-- KEY SCHEMA: INTEGER, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_INT_UID_P" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_INT_UID_C" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_uuid_2 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_INT_UID_C"
ADD CONSTRAINT "fk_R1M_2_INT_UID_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_uuid_2)
REFERENCES "R1M_2_INT_UID_P" (
    integer_1, 
    uuid_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_INT_Cha_P (Parent) <-> R1M_2_INT_Cha_C (Child)
-- KEY SCHEMA: INTEGER, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_INT_Cha_P" (
    integer_1 INTEGER NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_INT_Cha_C" (
    integer_1 INTEGER NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_INT_Cha_C"
ADD CONSTRAINT "fk_R1M_2_INT_Cha_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_char_36_2)
REFERENCES "R1M_2_INT_Cha_P" (
    integer_1, 
    char_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_INT_Var_P (Parent) <-> R1M_2_INT_Var_C (Child)
-- KEY SCHEMA: INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_INT_Var_P" (
    integer_1 INTEGER NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_INT_Var_C" (
    integer_1 INTEGER NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_INT_Var_C"
ADD CONSTRAINT "fk_R1M_2_INT_Var_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_varchar_36_2)
REFERENCES "R1M_2_INT_Var_P" (
    integer_1, 
    varchar_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_BGT_UID_P (Parent) <-> R1M_2_BGT_UID_C (Child)
-- KEY SCHEMA: BIGINT, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_BGT_UID_P" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_BGT_UID_C" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigint_1 BIGINT NOT NULL,
    parent_uuid_2 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_BGT_UID_C"
ADD CONSTRAINT "fk_R1M_2_BGT_UID_C"
FOREIGN KEY (
    parent_bigint_1, 
    parent_uuid_2)
REFERENCES "R1M_2_BGT_UID_P" (
    bigint_1, 
    uuid_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_BGT_Cha_P (Parent) <-> R1M_2_BGT_Cha_C (Child)
-- KEY SCHEMA: BIGINT, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_BGT_Cha_P" (
    bigint_1 BIGINT NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_BGT_Cha_C" (
    bigint_1 BIGINT NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigint_1 BIGINT NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_BGT_Cha_C"
ADD CONSTRAINT "fk_R1M_2_BGT_Cha_C"
FOREIGN KEY (
    parent_bigint_1, 
    parent_char_36_2)
REFERENCES "R1M_2_BGT_Cha_P" (
    bigint_1, 
    char_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_BGT_Var_P (Parent) <-> R1M_2_BGT_Var_C (Child)
-- KEY SCHEMA: BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_BGT_Var_P" (
    bigint_1 BIGINT NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_BGT_Var_C" (
    bigint_1 BIGINT NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigint_1 BIGINT NOT NULL,
    parent_varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_BGT_Var_C"
ADD CONSTRAINT "fk_R1M_2_BGT_Var_C"
FOREIGN KEY (
    parent_bigint_1, 
    parent_varchar_36_2)
REFERENCES "R1M_2_BGT_Var_P" (
    bigint_1, 
    varchar_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_UID_Cha_P (Parent) <-> R1M_2_UID_Cha_C (Child)
-- KEY SCHEMA: UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_UID_Cha_P" (
    uuid_1 UUID NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_UID_Cha_C" (
    uuid_1 UUID NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_uuid_1 UUID NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_2_UID_Cha_C"
FOREIGN KEY (
    parent_uuid_1, 
    parent_char_36_2)
REFERENCES "R1M_2_UID_Cha_P" (
    uuid_1, 
    char_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_UID_Var_P (Parent) <-> R1M_2_UID_Var_C (Child)
-- KEY SCHEMA: UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_UID_Var_P" (
    uuid_1 UUID NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_UID_Var_C" (
    uuid_1 UUID NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_uuid_1 UUID NOT NULL,
    parent_varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_UID_Var_C"
ADD CONSTRAINT "fk_R1M_2_UID_Var_C"
FOREIGN KEY (
    parent_uuid_1, 
    parent_varchar_36_2)
REFERENCES "R1M_2_UID_Var_P" (
    uuid_1, 
    varchar_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_2_Cha_Var_P (Parent) <-> R1M_2_Cha_Var_C (Child)
-- KEY SCHEMA: CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_2_Cha_Var_P" (
    char_36_1 CHAR(36) NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_2_Cha_Var_C" (
    char_36_1 CHAR(36) NOT NULL,
    varchar_36_2 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_char_36_1 CHAR(36) NOT NULL,
    parent_varchar_36_2 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_2_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_2_Cha_Var_C"
FOREIGN KEY (
    parent_char_36_1, 
    parent_varchar_36_2)
REFERENCES "R1M_2_Cha_Var_P" (
    char_36_1, 
    varchar_36_2)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_BGS_INT_P (Parent) <-> R1M_3_SRL_BGS_INT_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_INT_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_INT_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_BGS_INT_C"
ADD CONSTRAINT "fk_R1M_3_SRL_BGS_INT_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3)
REFERENCES "R1M_3_SRL_BGS_INT_P" (
    serial_1, 
    bigserial_2, 
    integer_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_BGS_BGT_P (Parent) <-> R1M_3_SRL_BGS_BGT_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_BGT_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_BGT_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_BGS_BGT_C"
ADD CONSTRAINT "fk_R1M_3_SRL_BGS_BGT_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3)
REFERENCES "R1M_3_SRL_BGS_BGT_P" (
    serial_1, 
    bigserial_2, 
    bigint_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_BGS_UID_P (Parent) <-> R1M_3_SRL_BGS_UID_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_UID_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_UID_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_BGS_UID_C"
ADD CONSTRAINT "fk_R1M_3_SRL_BGS_UID_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_uuid_3)
REFERENCES "R1M_3_SRL_BGS_UID_P" (
    serial_1, 
    bigserial_2, 
    uuid_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_BGS_Cha_P (Parent) <-> R1M_3_SRL_BGS_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_BGS_Cha_C"
ADD CONSTRAINT "fk_R1M_3_SRL_BGS_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_char_36_3)
REFERENCES "R1M_3_SRL_BGS_Cha_P" (
    serial_1, 
    bigserial_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_BGS_Var_P (Parent) <-> R1M_3_SRL_BGS_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGS_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_BGS_Var_C"
ADD CONSTRAINT "fk_R1M_3_SRL_BGS_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_SRL_BGS_Var_P" (
    serial_1, 
    bigserial_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_INT_BGT_P (Parent) <-> R1M_3_SRL_INT_BGT_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_INT_BGT_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_INT_BGT_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_INT_BGT_C"
ADD CONSTRAINT "fk_R1M_3_SRL_INT_BGT_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3)
REFERENCES "R1M_3_SRL_INT_BGT_P" (
    serial_1, 
    integer_2, 
    bigint_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_INT_UID_P (Parent) <-> R1M_3_SRL_INT_UID_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_INT_UID_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_INT_UID_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_uuid_3 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_INT_UID_C"
ADD CONSTRAINT "fk_R1M_3_SRL_INT_UID_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_uuid_3)
REFERENCES "R1M_3_SRL_INT_UID_P" (
    serial_1, 
    integer_2, 
    uuid_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_INT_Cha_P (Parent) <-> R1M_3_SRL_INT_Cha_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_INT_Cha_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_INT_Cha_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_INT_Cha_C"
ADD CONSTRAINT "fk_R1M_3_SRL_INT_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_char_36_3)
REFERENCES "R1M_3_SRL_INT_Cha_P" (
    serial_1, 
    integer_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_INT_Var_P (Parent) <-> R1M_3_SRL_INT_Var_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_INT_Var_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_INT_Var_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_INT_Var_C"
ADD CONSTRAINT "fk_R1M_3_SRL_INT_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_SRL_INT_Var_P" (
    serial_1, 
    integer_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_BGT_UID_P (Parent) <-> R1M_3_SRL_BGT_UID_C (Child)
-- KEY SCHEMA: SERIAL, BIGINT, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGT_UID_P" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGT_UID_C" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_BGT_UID_C"
ADD CONSTRAINT "fk_R1M_3_SRL_BGT_UID_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_uuid_3)
REFERENCES "R1M_3_SRL_BGT_UID_P" (
    serial_1, 
    bigint_2, 
    uuid_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_BGT_Cha_P (Parent) <-> R1M_3_SRL_BGT_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGT_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGT_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_BGT_Cha_C"
ADD CONSTRAINT "fk_R1M_3_SRL_BGT_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_char_36_3)
REFERENCES "R1M_3_SRL_BGT_Cha_P" (
    serial_1, 
    bigint_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_BGT_Var_P (Parent) <-> R1M_3_SRL_BGT_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGT_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_BGT_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_BGT_Var_C"
ADD CONSTRAINT "fk_R1M_3_SRL_BGT_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_SRL_BGT_Var_P" (
    serial_1, 
    bigint_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_UID_Cha_P (Parent) <-> R1M_3_SRL_UID_Cha_C (Child)
-- KEY SCHEMA: SERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_UID_Cha_P" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_UID_Cha_C" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_3_SRL_UID_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_uuid_2, 
    parent_char_36_3)
REFERENCES "R1M_3_SRL_UID_Cha_P" (
    serial_1, 
    uuid_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_UID_Var_P (Parent) <-> R1M_3_SRL_UID_Var_C (Child)
-- KEY SCHEMA: SERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_UID_Var_P" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_UID_Var_C" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_UID_Var_C"
ADD CONSTRAINT "fk_R1M_3_SRL_UID_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_uuid_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_SRL_UID_Var_P" (
    serial_1, 
    uuid_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_SRL_Cha_Var_P (Parent) <-> R1M_3_SRL_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_SRL_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_SRL_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_3_SRL_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_SRL_Cha_Var_P" (
    serial_1, 
    char_36_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_INT_BGT_P (Parent) <-> R1M_3_BGS_INT_BGT_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_INT_BGT_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_INT_BGT_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_INT_BGT_C"
ADD CONSTRAINT "fk_R1M_3_BGS_INT_BGT_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3)
REFERENCES "R1M_3_BGS_INT_BGT_P" (
    bigserial_1, 
    integer_2, 
    bigint_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_INT_UID_P (Parent) <-> R1M_3_BGS_INT_UID_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_INT_UID_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_INT_UID_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_uuid_3 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_INT_UID_C"
ADD CONSTRAINT "fk_R1M_3_BGS_INT_UID_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_uuid_3)
REFERENCES "R1M_3_BGS_INT_UID_P" (
    bigserial_1, 
    integer_2, 
    uuid_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_INT_Cha_P (Parent) <-> R1M_3_BGS_INT_Cha_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_INT_Cha_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_INT_Cha_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_INT_Cha_C"
ADD CONSTRAINT "fk_R1M_3_BGS_INT_Cha_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_char_36_3)
REFERENCES "R1M_3_BGS_INT_Cha_P" (
    bigserial_1, 
    integer_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_INT_Var_P (Parent) <-> R1M_3_BGS_INT_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_INT_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_INT_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_INT_Var_C"
ADD CONSTRAINT "fk_R1M_3_BGS_INT_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_BGS_INT_Var_P" (
    bigserial_1, 
    integer_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_BGT_UID_P (Parent) <-> R1M_3_BGS_BGT_UID_C (Child)
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_BGT_UID_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_BGT_UID_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_BGT_UID_C"
ADD CONSTRAINT "fk_R1M_3_BGS_BGT_UID_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_uuid_3)
REFERENCES "R1M_3_BGS_BGT_UID_P" (
    bigserial_1, 
    bigint_2, 
    uuid_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_BGT_Cha_P (Parent) <-> R1M_3_BGS_BGT_Cha_C (Child)
-- KEY SCHEMA: BIGSERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_BGT_Cha_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_BGT_Cha_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_BGT_Cha_C"
ADD CONSTRAINT "fk_R1M_3_BGS_BGT_Cha_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_char_36_3)
REFERENCES "R1M_3_BGS_BGT_Cha_P" (
    bigserial_1, 
    bigint_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_BGT_Var_P (Parent) <-> R1M_3_BGS_BGT_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_BGT_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_BGT_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_BGT_Var_C"
ADD CONSTRAINT "fk_R1M_3_BGS_BGT_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_BGS_BGT_Var_P" (
    bigserial_1, 
    bigint_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_UID_Cha_P (Parent) <-> R1M_3_BGS_UID_Cha_C (Child)
-- KEY SCHEMA: BIGSERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_UID_Cha_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_UID_Cha_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_3_BGS_UID_Cha_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_uuid_2, 
    parent_char_36_3)
REFERENCES "R1M_3_BGS_UID_Cha_P" (
    bigserial_1, 
    uuid_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_UID_Var_P (Parent) <-> R1M_3_BGS_UID_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_UID_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_UID_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_UID_Var_C"
ADD CONSTRAINT "fk_R1M_3_BGS_UID_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_uuid_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_BGS_UID_Var_P" (
    bigserial_1, 
    uuid_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGS_Cha_Var_P (Parent) <-> R1M_3_BGS_Cha_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_Cha_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGS_Cha_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGS_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_3_BGS_Cha_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_BGS_Cha_Var_P" (
    bigserial_1, 
    char_36_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_INT_BGT_UID_P (Parent) <-> R1M_3_INT_BGT_UID_C (Child)
-- KEY SCHEMA: INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_INT_BGT_UID_P" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_INT_BGT_UID_C" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_INT_BGT_UID_C"
ADD CONSTRAINT "fk_R1M_3_INT_BGT_UID_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_uuid_3)
REFERENCES "R1M_3_INT_BGT_UID_P" (
    integer_1, 
    bigint_2, 
    uuid_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_INT_BGT_Cha_P (Parent) <-> R1M_3_INT_BGT_Cha_C (Child)
-- KEY SCHEMA: INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_INT_BGT_Cha_P" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_INT_BGT_Cha_C" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_INT_BGT_Cha_C"
ADD CONSTRAINT "fk_R1M_3_INT_BGT_Cha_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_char_36_3)
REFERENCES "R1M_3_INT_BGT_Cha_P" (
    integer_1, 
    bigint_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_INT_BGT_Var_P (Parent) <-> R1M_3_INT_BGT_Var_C (Child)
-- KEY SCHEMA: INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_INT_BGT_Var_P" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_INT_BGT_Var_C" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_INT_BGT_Var_C"
ADD CONSTRAINT "fk_R1M_3_INT_BGT_Var_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_INT_BGT_Var_P" (
    integer_1, 
    bigint_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_INT_UID_Cha_P (Parent) <-> R1M_3_INT_UID_Cha_C (Child)
-- KEY SCHEMA: INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_INT_UID_Cha_P" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_INT_UID_Cha_C" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_INT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_3_INT_UID_Cha_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_uuid_2, 
    parent_char_36_3)
REFERENCES "R1M_3_INT_UID_Cha_P" (
    integer_1, 
    uuid_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_INT_UID_Var_P (Parent) <-> R1M_3_INT_UID_Var_C (Child)
-- KEY SCHEMA: INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_INT_UID_Var_P" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_INT_UID_Var_C" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_INT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_3_INT_UID_Var_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_uuid_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_INT_UID_Var_P" (
    integer_1, 
    uuid_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_INT_Cha_Var_P (Parent) <-> R1M_3_INT_Cha_Var_C (Child)
-- KEY SCHEMA: INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_INT_Cha_Var_P" (
    integer_1 INTEGER NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_INT_Cha_Var_C" (
    integer_1 INTEGER NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_INT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_3_INT_Cha_Var_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_INT_Cha_Var_P" (
    integer_1, 
    char_36_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGT_UID_Cha_P (Parent) <-> R1M_3_BGT_UID_Cha_C (Child)
-- KEY SCHEMA: BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGT_UID_Cha_P" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGT_UID_Cha_C" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigint_1 BIGINT NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_3_BGT_UID_Cha_C"
FOREIGN KEY (
    parent_bigint_1, 
    parent_uuid_2, 
    parent_char_36_3)
REFERENCES "R1M_3_BGT_UID_Cha_P" (
    bigint_1, 
    uuid_2, 
    char_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGT_UID_Var_P (Parent) <-> R1M_3_BGT_UID_Var_C (Child)
-- KEY SCHEMA: BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGT_UID_Var_P" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGT_UID_Var_C" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigint_1 BIGINT NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_3_BGT_UID_Var_C"
FOREIGN KEY (
    parent_bigint_1, 
    parent_uuid_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_BGT_UID_Var_P" (
    bigint_1, 
    uuid_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_BGT_Cha_Var_P (Parent) <-> R1M_3_BGT_Cha_Var_C (Child)
-- KEY SCHEMA: BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_BGT_Cha_Var_P" (
    bigint_1 BIGINT NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_BGT_Cha_Var_C" (
    bigint_1 BIGINT NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigint_1 BIGINT NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_BGT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_3_BGT_Cha_Var_C"
FOREIGN KEY (
    parent_bigint_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_BGT_Cha_Var_P" (
    bigint_1, 
    char_36_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_3_UID_Cha_Var_P (Parent) <-> R1M_3_UID_Cha_Var_C (Child)
-- KEY SCHEMA: UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_3_UID_Cha_Var_P" (
    uuid_1 UUID NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_3_UID_Cha_Var_C" (
    uuid_1 UUID NOT NULL,
    char_36_2 CHAR(36) NOT NULL,
    varchar_36_3 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_uuid_1 UUID NOT NULL,
    parent_char_36_2 CHAR(36) NOT NULL,
    parent_varchar_36_3 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_3_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_3_UID_Cha_Var_C"
FOREIGN KEY (
    parent_uuid_1, 
    parent_char_36_2, 
    parent_varchar_36_3)
REFERENCES "R1M_3_UID_Cha_Var_P" (
    uuid_1, 
    char_36_2, 
    varchar_36_3)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_INT_BGT_P (Parent) <-> R1M_4_SRL_BGS_INT_BGT_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_INT_BGT_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_INT_BGT_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_bigint_4 BIGINT NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_INT_BGT_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_INT_BGT_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4)
REFERENCES "R1M_4_SRL_BGS_INT_BGT_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_INT_UID_P (Parent) <-> R1M_4_SRL_BGS_INT_UID_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_INT_UID_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_INT_UID_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_uuid_4 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_INT_UID_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_INT_UID_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_uuid_4)
REFERENCES "R1M_4_SRL_BGS_INT_UID_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_INT_Cha_P (Parent) <-> R1M_4_SRL_BGS_INT_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_INT_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_INT_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_INT_Cha_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_INT_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_char_36_4)
REFERENCES "R1M_4_SRL_BGS_INT_Cha_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_INT_Var_P (Parent) <-> R1M_4_SRL_BGS_INT_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_INT_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_INT_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_INT_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_INT_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_BGS_INT_Var_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_BGT_UID_P (Parent) <-> R1M_4_SRL_BGS_BGT_UID_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_BGT_UID_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_BGT_UID_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_BGT_UID_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_BGT_UID_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_uuid_4)
REFERENCES "R1M_4_SRL_BGS_BGT_UID_P" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_BGT_Cha_P (Parent) <-> R1M_4_SRL_BGS_BGT_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_BGT_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_BGT_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_BGT_Cha_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_BGT_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_char_36_4)
REFERENCES "R1M_4_SRL_BGS_BGT_Cha_P" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_BGT_Var_P (Parent) <-> R1M_4_SRL_BGS_BGT_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_BGT_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_BGT_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_BGT_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_BGT_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_BGS_BGT_Var_P" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_UID_Cha_P (Parent) <-> R1M_4_SRL_BGS_UID_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_UID_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_UID_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_UID_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1M_4_SRL_BGS_UID_Cha_P" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_UID_Var_P (Parent) <-> R1M_4_SRL_BGS_UID_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_UID_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_UID_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_UID_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_UID_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_BGS_UID_Var_P" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGS_Cha_Var_P (Parent) <-> R1M_4_SRL_BGS_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGS_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGS_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGS_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_BGS_Cha_Var_P" (
    serial_1, 
    bigserial_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_INT_BGT_UID_P (Parent) <-> R1M_4_SRL_INT_BGT_UID_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_BGT_UID_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_BGT_UID_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_INT_BGT_UID_C"
ADD CONSTRAINT "fk_R1M_4_SRL_INT_BGT_UID_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4)
REFERENCES "R1M_4_SRL_INT_BGT_UID_P" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_INT_BGT_Cha_P (Parent) <-> R1M_4_SRL_INT_BGT_Cha_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_BGT_Cha_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_BGT_Cha_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_INT_BGT_Cha_C"
ADD CONSTRAINT "fk_R1M_4_SRL_INT_BGT_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_char_36_4)
REFERENCES "R1M_4_SRL_INT_BGT_Cha_P" (
    serial_1, 
    integer_2, 
    bigint_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_INT_BGT_Var_P (Parent) <-> R1M_4_SRL_INT_BGT_Var_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_BGT_Var_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_BGT_Var_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_INT_BGT_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_INT_BGT_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_INT_BGT_Var_P" (
    serial_1, 
    integer_2, 
    bigint_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_INT_UID_Cha_P (Parent) <-> R1M_4_SRL_INT_UID_Cha_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_UID_Cha_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_UID_Cha_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_INT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_4_SRL_INT_UID_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1M_4_SRL_INT_UID_Cha_P" (
    serial_1, 
    integer_2, 
    uuid_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_INT_UID_Var_P (Parent) <-> R1M_4_SRL_INT_UID_Var_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_UID_Var_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_UID_Var_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_INT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_INT_UID_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_INT_UID_Var_P" (
    serial_1, 
    integer_2, 
    uuid_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_INT_Cha_Var_P (Parent) <-> R1M_4_SRL_INT_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_INT_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_INT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_INT_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_INT_Cha_Var_P" (
    serial_1, 
    integer_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGT_UID_Cha_P (Parent) <-> R1M_4_SRL_BGT_UID_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGT_UID_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGT_UID_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGT_UID_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1M_4_SRL_BGT_UID_Cha_P" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGT_UID_Var_P (Parent) <-> R1M_4_SRL_BGT_UID_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGT_UID_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGT_UID_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGT_UID_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_BGT_UID_Var_P" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_BGT_Cha_Var_P (Parent) <-> R1M_4_SRL_BGT_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGT_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_BGT_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_BGT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_BGT_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_BGT_Cha_Var_P" (
    serial_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_SRL_UID_Cha_Var_P (Parent) <-> R1M_4_SRL_UID_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_UID_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_SRL_UID_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_SRL_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_SRL_UID_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_uuid_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_SRL_UID_Cha_Var_P" (
    serial_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_INT_BGT_UID_P (Parent) <-> R1M_4_BGS_INT_BGT_UID_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_BGT_UID_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_BGT_UID_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_INT_BGT_UID_C"
ADD CONSTRAINT "fk_R1M_4_BGS_INT_BGT_UID_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4)
REFERENCES "R1M_4_BGS_INT_BGT_UID_P" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_INT_BGT_Cha_P (Parent) <-> R1M_4_BGS_INT_BGT_Cha_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_BGT_Cha_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_BGT_Cha_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_INT_BGT_Cha_C"
ADD CONSTRAINT "fk_R1M_4_BGS_INT_BGT_Cha_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_char_36_4)
REFERENCES "R1M_4_BGS_INT_BGT_Cha_P" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_INT_BGT_Var_P (Parent) <-> R1M_4_BGS_INT_BGT_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_BGT_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_BGT_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_INT_BGT_Var_C"
ADD CONSTRAINT "fk_R1M_4_BGS_INT_BGT_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_BGS_INT_BGT_Var_P" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_INT_UID_Cha_P (Parent) <-> R1M_4_BGS_INT_UID_Cha_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_UID_Cha_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_UID_Cha_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_INT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_4_BGS_INT_UID_Cha_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1M_4_BGS_INT_UID_Cha_P" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_INT_UID_Var_P (Parent) <-> R1M_4_BGS_INT_UID_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_UID_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_UID_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_INT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_4_BGS_INT_UID_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_BGS_INT_UID_Var_P" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_INT_Cha_Var_P (Parent) <-> R1M_4_BGS_INT_Cha_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_Cha_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_INT_Cha_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_INT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_BGS_INT_Cha_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_BGS_INT_Cha_Var_P" (
    bigserial_1, 
    integer_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_BGT_UID_Cha_P (Parent) <-> R1M_4_BGS_BGT_UID_Cha_C (Child)
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_BGT_UID_Cha_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_BGT_UID_Cha_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_BGT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_4_BGS_BGT_UID_Cha_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1M_4_BGS_BGT_UID_Cha_P" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_BGT_UID_Var_P (Parent) <-> R1M_4_BGS_BGT_UID_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_BGT_UID_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_BGT_UID_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_BGT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_4_BGS_BGT_UID_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_BGS_BGT_UID_Var_P" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_BGT_Cha_Var_P (Parent) <-> R1M_4_BGS_BGT_Cha_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_BGT_Cha_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_BGT_Cha_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_BGT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_BGS_BGT_Cha_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_BGS_BGT_Cha_Var_P" (
    bigserial_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGS_UID_Cha_Var_P (Parent) <-> R1M_4_BGS_UID_Cha_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_UID_Cha_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGS_UID_Cha_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGS_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_BGS_UID_Cha_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_uuid_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_BGS_UID_Cha_Var_P" (
    bigserial_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_INT_BGT_UID_Cha_P (Parent) <-> R1M_4_INT_BGT_UID_Cha_C (Child)
-- KEY SCHEMA: INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_INT_BGT_UID_Cha_P" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_INT_BGT_UID_Cha_C" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_INT_BGT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_4_INT_BGT_UID_Cha_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4)
REFERENCES "R1M_4_INT_BGT_UID_Cha_P" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    char_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_INT_BGT_UID_Var_P (Parent) <-> R1M_4_INT_BGT_UID_Var_C (Child)
-- KEY SCHEMA: INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_INT_BGT_UID_Var_P" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_INT_BGT_UID_Var_C" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_INT_BGT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_4_INT_BGT_UID_Var_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_INT_BGT_UID_Var_P" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_INT_BGT_Cha_Var_P (Parent) <-> R1M_4_INT_BGT_Cha_Var_C (Child)
-- KEY SCHEMA: INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_INT_BGT_Cha_Var_P" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_INT_BGT_Cha_Var_C" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_INT_BGT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_INT_BGT_Cha_Var_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_INT_BGT_Cha_Var_P" (
    integer_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_INT_UID_Cha_Var_P (Parent) <-> R1M_4_INT_UID_Cha_Var_C (Child)
-- KEY SCHEMA: INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_INT_UID_Cha_Var_P" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_INT_UID_Cha_Var_C" (
    integer_1 INTEGER NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_INT_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_INT_UID_Cha_Var_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_uuid_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_INT_UID_Cha_Var_P" (
    integer_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_4_BGT_UID_Cha_Var_P (Parent) <-> R1M_4_BGT_UID_Cha_Var_C (Child)
-- KEY SCHEMA: BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_4_BGT_UID_Cha_Var_P" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_4_BGT_UID_Cha_Var_C" (
    bigint_1 BIGINT NOT NULL,
    uuid_2 UUID NOT NULL,
    char_36_3 CHAR(36) NOT NULL,
    varchar_36_4 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigint_1 BIGINT NOT NULL,
    parent_uuid_2 UUID NOT NULL,
    parent_char_36_3 CHAR(36) NOT NULL,
    parent_varchar_36_4 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_4_BGT_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_4_BGT_UID_Cha_Var_C"
FOREIGN KEY (
    parent_bigint_1, 
    parent_uuid_2, 
    parent_char_36_3, 
    parent_varchar_36_4)
REFERENCES "R1M_4_BGT_UID_Cha_Var_P" (
    bigint_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_INT_BGT_UID_P (Parent) <-> R1M_5_SRL_BGS_INT_BGT_UID_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_BGT_UID_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_BGT_UID_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_bigint_4 BIGINT NOT NULL,
    parent_uuid_5 UUID NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_INT_BGT_UID_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_INT_BGT_UID_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_uuid_5)
REFERENCES "R1M_5_SRL_BGS_INT_BGT_UID_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_INT_BGT_Cha_P (Parent) <-> R1M_5_SRL_BGS_INT_BGT_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_BGT_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_BGT_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_bigint_4 BIGINT NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_INT_BGT_Cha_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_INT_BGT_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_char_36_5)
REFERENCES "R1M_5_SRL_BGS_INT_BGT_Cha_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    char_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_INT_BGT_Var_P (Parent) <-> R1M_5_SRL_BGS_INT_BGT_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_BGT_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_BGT_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_bigint_4 BIGINT NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_INT_BGT_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_INT_BGT_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_BGS_INT_BGT_Var_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_INT_UID_Cha_P (Parent) <-> R1M_5_SRL_BGS_INT_UID_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_UID_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_UID_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_INT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_INT_UID_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_uuid_4, 
    parent_char_36_5)
REFERENCES "R1M_5_SRL_BGS_INT_UID_Cha_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    char_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_INT_UID_Var_P (Parent) <-> R1M_5_SRL_BGS_INT_UID_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_UID_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_UID_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_INT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_INT_UID_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_uuid_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_BGS_INT_UID_Var_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_INT_Cha_Var_P (Parent) <-> R1M_5_SRL_BGS_INT_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_INT_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_INT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_INT_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_BGS_INT_Cha_Var_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_BGT_UID_Cha_P (Parent) <-> R1M_5_SRL_BGS_BGT_UID_Cha_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_BGT_UID_Cha_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_BGT_UID_Cha_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_BGT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_BGT_UID_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5)
REFERENCES "R1M_5_SRL_BGS_BGT_UID_Cha_P" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    char_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_BGT_UID_Var_P (Parent) <-> R1M_5_SRL_BGS_BGT_UID_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_BGT_UID_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_BGT_UID_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_BGT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_BGT_UID_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_BGS_BGT_UID_Var_P" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_BGT_Cha_Var_P (Parent) <-> R1M_5_SRL_BGS_BGT_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_BGT_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_BGT_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_BGT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_BGT_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_BGS_BGT_Cha_Var_P" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGS_UID_Cha_Var_P (Parent) <-> R1M_5_SRL_BGS_UID_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_UID_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGS_UID_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGS_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGS_UID_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_BGS_UID_Cha_Var_P" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_INT_BGT_UID_Cha_P (Parent) <-> R1M_5_SRL_INT_BGT_UID_Cha_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_INT_BGT_UID_Cha_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_INT_BGT_UID_Cha_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_INT_BGT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_5_SRL_INT_BGT_UID_Cha_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5)
REFERENCES "R1M_5_SRL_INT_BGT_UID_Cha_P" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_INT_BGT_UID_Var_P (Parent) <-> R1M_5_SRL_INT_BGT_UID_Var_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_INT_BGT_UID_Var_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_INT_BGT_UID_Var_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_INT_BGT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_INT_BGT_UID_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_INT_BGT_UID_Var_P" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_INT_BGT_Cha_Var_P (Parent) <-> R1M_5_SRL_INT_BGT_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_INT_BGT_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_INT_BGT_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_INT_BGT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_INT_BGT_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_INT_BGT_Cha_Var_P" (
    serial_1, 
    integer_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_INT_UID_Cha_Var_P (Parent) <-> R1M_5_SRL_INT_UID_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_INT_UID_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_INT_UID_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_INT_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_INT_UID_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_INT_UID_Cha_Var_P" (
    serial_1, 
    integer_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_SRL_BGT_UID_Cha_Var_P (Parent) <-> R1M_5_SRL_BGT_UID_Cha_Var_C (Child)
-- KEY SCHEMA: SERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGT_UID_Cha_Var_P" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_SRL_BGT_UID_Cha_Var_C" (
    serial_1 SERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_SRL_BGT_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_SRL_BGT_UID_Cha_Var_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_SRL_BGT_UID_Cha_Var_P" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_BGS_INT_BGT_UID_Cha_P (Parent) <-> R1M_5_BGS_INT_BGT_UID_Cha_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_INT_BGT_UID_Cha_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_INT_BGT_UID_Cha_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_BGS_INT_BGT_UID_Cha_C"
ADD CONSTRAINT "fk_R1M_5_BGS_INT_BGT_UID_Cha_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5)
REFERENCES "R1M_5_BGS_INT_BGT_UID_Cha_P" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_BGS_INT_BGT_UID_Var_P (Parent) <-> R1M_5_BGS_INT_BGT_UID_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_INT_BGT_UID_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_INT_BGT_UID_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_BGS_INT_BGT_UID_Var_C"
ADD CONSTRAINT "fk_R1M_5_BGS_INT_BGT_UID_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_BGS_INT_BGT_UID_Var_P" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_BGS_INT_BGT_Cha_Var_P (Parent) <-> R1M_5_BGS_INT_BGT_Cha_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_INT_BGT_Cha_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_INT_BGT_Cha_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_BGS_INT_BGT_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_BGS_INT_BGT_Cha_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_BGS_INT_BGT_Cha_Var_P" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_BGS_INT_UID_Cha_Var_P (Parent) <-> R1M_5_BGS_INT_UID_Cha_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_INT_UID_Cha_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_INT_UID_Cha_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_BGS_INT_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_BGS_INT_UID_Cha_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_BGS_INT_UID_Cha_Var_P" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_BGS_BGT_UID_Cha_Var_P (Parent) <-> R1M_5_BGS_BGT_UID_Cha_Var_C (Child)
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_BGT_UID_Cha_Var_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_BGS_BGT_UID_Cha_Var_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_BGS_BGT_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_BGS_BGT_UID_Cha_Var_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_BGS_BGT_UID_Cha_Var_P" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_5_INT_BGT_UID_Cha_Var_P (Parent) <-> R1M_5_INT_BGT_UID_Cha_Var_C (Child)
-- KEY SCHEMA: INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_5_INT_BGT_UID_Cha_Var_P" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_5_INT_BGT_UID_Cha_Var_C" (
    integer_1 INTEGER NOT NULL,
    bigint_2 BIGINT NOT NULL,
    uuid_3 UUID NOT NULL,
    char_36_4 CHAR(36) NOT NULL,
    varchar_36_5 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_integer_1 INTEGER NOT NULL,
    parent_bigint_2 BIGINT NOT NULL,
    parent_uuid_3 UUID NOT NULL,
    parent_char_36_4 CHAR(36) NOT NULL,
    parent_varchar_36_5 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_5_INT_BGT_UID_Cha_Var_C"
ADD CONSTRAINT "fk_R1M_5_INT_BGT_UID_Cha_Var_C"
FOREIGN KEY (
    parent_integer_1, 
    parent_bigint_2, 
    parent_uuid_3, 
    parent_char_36_4, 
    parent_varchar_36_5)
REFERENCES "R1M_5_INT_BGT_UID_Cha_Var_P" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_6_SRL_BGS_INT_BGT_UD_Ch_P (Parent) <-> R1M_6_SRL_BGS_INT_BGT_UD_Ch_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_INT_BGT_UD_Ch_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    char_36_6 CHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_INT_BGT_UD_Ch_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    char_36_6 CHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_bigint_4 BIGINT NOT NULL,
    parent_uuid_5 UUID NOT NULL,
    parent_char_36_6 CHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_6_SRL_BGS_INT_BGT_UD_Ch_C"
ADD CONSTRAINT "fk_R1M_6_SRL_BGS_INT_BGT_UD_Ch_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_uuid_5, 
    parent_char_36_6)
REFERENCES "R1M_6_SRL_BGS_INT_BGT_UD_Ch_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    char_36_6)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_6_SRL_BGS_INT_BGT_UD_Vr_P (Parent) <-> R1M_6_SRL_BGS_INT_BGT_UD_Vr_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_INT_BGT_UD_Vr_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_INT_BGT_UD_Vr_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_bigint_4 BIGINT NOT NULL,
    parent_uuid_5 UUID NOT NULL,
    parent_varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_6_SRL_BGS_INT_BGT_UD_Vr_C"
ADD CONSTRAINT "fk_R1M_6_SRL_BGS_INT_BGT_UD_Vr_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_uuid_5, 
    parent_varchar_36_6)
REFERENCES "R1M_6_SRL_BGS_INT_BGT_UD_Vr_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    varchar_36_6)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_6_SRL_BGS_INT_BGT_Ch_Vr_P (Parent) <-> R1M_6_SRL_BGS_INT_BGT_Ch_Vr_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_INT_BGT_Ch_Vr_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_INT_BGT_Ch_Vr_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_bigint_4 BIGINT NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
    parent_varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_6_SRL_BGS_INT_BGT_Ch_Vr_C"
ADD CONSTRAINT "fk_R1M_6_SRL_BGS_INT_BGT_Ch_Vr_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1M_6_SRL_BGS_INT_BGT_Ch_Vr_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    char_36_5, 
    varchar_36_6)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_6_SRL_BGS_INT_UD_Ch_Vr_P (Parent) <-> R1M_6_SRL_BGS_INT_UD_Ch_Vr_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_INT_UD_Ch_Vr_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_INT_UD_Ch_Vr_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
    parent_varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_6_SRL_BGS_INT_UD_Ch_Vr_C"
ADD CONSTRAINT "fk_R1M_6_SRL_BGS_INT_UD_Ch_Vr_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_uuid_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1M_6_SRL_BGS_INT_UD_Ch_Vr_P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_6_SRL_BGS_BGT_UD_Ch_Vr_P (Parent) <-> R1M_6_SRL_BGS_BGT_UD_Ch_Vr_C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_BGT_UD_Ch_Vr_P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_BGS_BGT_UD_Ch_Vr_C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
    parent_varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_6_SRL_BGS_BGT_UD_Ch_Vr_C"
ADD CONSTRAINT "fk_R1M_6_SRL_BGS_BGT_UD_Ch_Vr_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1M_6_SRL_BGS_BGT_UD_Ch_Vr_P" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_6_SRL_INT_BGT_UD_Ch_Vr_P (Parent) <-> R1M_6_SRL_INT_BGT_UD_Ch_Vr_C (Child)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_INT_BGT_UD_Ch_Vr_P" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_6_SRL_INT_BGT_UD_Ch_Vr_C" (
    serial_1 SERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
    parent_varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_6_SRL_INT_BGT_UD_Ch_Vr_C"
ADD CONSTRAINT "fk_R1M_6_SRL_INT_BGT_UD_Ch_Vr_C"
FOREIGN KEY (
    parent_serial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1M_6_SRL_INT_BGT_UD_Ch_Vr_P" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_6_BGS_INT_BGT_UD_Ch_Vr_P (Parent) <-> R1M_6_BGS_INT_BGT_UD_Ch_Vr_C (Child)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_6_BGS_INT_BGT_UD_Ch_Vr_P" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_6_BGS_INT_BGT_UD_Ch_Vr_C" (
    bigserial_1 BIGSERIAL NOT NULL,
    integer_2 INTEGER NOT NULL,
    bigint_3 BIGINT NOT NULL,
    uuid_4 UUID NOT NULL,
    char_36_5 CHAR(36) NOT NULL,
    varchar_36_6 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_bigserial_1 BIGINT NOT NULL,
    parent_integer_2 INTEGER NOT NULL,
    parent_bigint_3 BIGINT NOT NULL,
    parent_uuid_4 UUID NOT NULL,
    parent_char_36_5 CHAR(36) NOT NULL,
    parent_varchar_36_6 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_6_BGS_INT_BGT_UD_Ch_Vr_C"
ADD CONSTRAINT "fk_R1M_6_BGS_INT_BGT_UD_Ch_Vr_C"
FOREIGN KEY (
    parent_bigserial_1, 
    parent_integer_2, 
    parent_bigint_3, 
    parent_uuid_4, 
    parent_char_36_5, 
    parent_varchar_36_6)
REFERENCES "R1M_6_BGS_INT_BGT_UD_Ch_Vr_P" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6)
ON DELETE CASCADE;


-- ================================================================================
-- RELATIONSHIP [1:M]: R1M_7_SRL_BGS_INT_BGT_UD_R1123P (Parent) <-> R1M_7_SRL_BGS_INT_BGT_UD_R1123C (Child)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Parent Table
CREATE TABLE IF NOT EXISTS "R1M_7_SRL_BGS_INT_BGT_UD_R1123P" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    char_36_6 CHAR(36) NOT NULL,
    varchar_36_7 VARCHAR(36) NOT NULL,
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

-- Create Child Table (1:M with Parent)
CREATE TABLE IF NOT EXISTS "R1M_7_SRL_BGS_INT_BGT_UD_R1123C" (
    serial_1 SERIAL NOT NULL,
    bigserial_2 BIGINT NOT NULL,
    integer_3 INTEGER NOT NULL,
    bigint_4 BIGINT NOT NULL,
    uuid_5 UUID NOT NULL,
    char_36_6 CHAR(36) NOT NULL,
    varchar_36_7 VARCHAR(36) NOT NULL,
    -- Foreign Key Reference Columns (1:M)
    parent_serial_1 INTEGER NOT NULL,
    parent_bigserial_2 BIGINT NOT NULL,
    parent_integer_3 INTEGER NOT NULL,
    parent_bigint_4 BIGINT NOT NULL,
    parent_uuid_5 UUID NOT NULL,
    parent_char_36_6 CHAR(36) NOT NULL,
    parent_varchar_36_7 VARCHAR(36) NOT NULL,
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

-- Establish 1:M Foreign Key Constraint
ALTER TABLE "R1M_7_SRL_BGS_INT_BGT_UD_R1123C"
ADD CONSTRAINT "fk_R1M_7_SRL_BGS_INT_BGT_UD_R1123C"
FOREIGN KEY (
    parent_serial_1, 
    parent_bigserial_2, 
    parent_integer_3, 
    parent_bigint_4, 
    parent_uuid_5, 
    parent_char_36_6, 
    parent_varchar_36_7)
REFERENCES "R1M_7_SRL_BGS_INT_BGT_UD_R1123P" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    char_36_6, 
    varchar_36_7)
ON DELETE CASCADE;

