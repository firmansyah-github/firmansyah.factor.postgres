
-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_1_SRL_E (Entity) <-> RMNS_1_SRL_J (Junction Self)
-- KEY SCHEMA: SERIAL
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_1_SRL_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_1_SRL_J" (
    e1_serial_1 INTEGER NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
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
        e1_serial_1, 
        e2_serial_1    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_1_SRL_J"
ADD CONSTRAINT "fk_js1_RMNS_1_SRL_J"
FOREIGN KEY (
    e1_serial_1)
REFERENCES "RMNS_1_SRL_E" (
    serial_1);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_1_SRL_J"
ADD CONSTRAINT "fk_js2_RMNS_1_SRL_J"
FOREIGN KEY (
    e2_serial_1)
REFERENCES "RMNS_1_SRL_E" (
    serial_1);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_1_BGS_E (Entity) <-> RMNS_1_BGS_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_1_BGS_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_1_BGS_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
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
        e1_bigserial_1, 
        e2_bigserial_1    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_1_BGS_J"
ADD CONSTRAINT "fk_js1_RMNS_1_BGS_J"
FOREIGN KEY (
    e1_bigserial_1)
REFERENCES "RMNS_1_BGS_E" (
    bigserial_1);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_1_BGS_J"
ADD CONSTRAINT "fk_js2_RMNS_1_BGS_J"
FOREIGN KEY (
    e2_bigserial_1)
REFERENCES "RMNS_1_BGS_E" (
    bigserial_1);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_1_INT_E (Entity) <-> RMNS_1_INT_J (Junction Self)
-- KEY SCHEMA: INTEGER
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_1_INT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_1_INT_J" (
    e1_integer_1 INTEGER NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
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
        e1_integer_1, 
        e2_integer_1    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_1_INT_J"
ADD CONSTRAINT "fk_js1_RMNS_1_INT_J"
FOREIGN KEY (
    e1_integer_1)
REFERENCES "RMNS_1_INT_E" (
    integer_1);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_1_INT_J"
ADD CONSTRAINT "fk_js2_RMNS_1_INT_J"
FOREIGN KEY (
    e2_integer_1)
REFERENCES "RMNS_1_INT_E" (
    integer_1);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_1_BGT_E (Entity) <-> RMNS_1_BGT_J (Junction Self)
-- KEY SCHEMA: BIGINT
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_1_BGT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_1_BGT_J" (
    e1_bigint_1 BIGINT NOT NULL,
    e2_bigint_1 BIGINT NOT NULL,
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
        e1_bigint_1, 
        e2_bigint_1    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_1_BGT_J"
ADD CONSTRAINT "fk_js1_RMNS_1_BGT_J"
FOREIGN KEY (
    e1_bigint_1)
REFERENCES "RMNS_1_BGT_E" (
    bigint_1);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_1_BGT_J"
ADD CONSTRAINT "fk_js2_RMNS_1_BGT_J"
FOREIGN KEY (
    e2_bigint_1)
REFERENCES "RMNS_1_BGT_E" (
    bigint_1);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_1_UID_E (Entity) <-> RMNS_1_UID_J (Junction Self)
-- KEY SCHEMA: UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_1_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_1_UID_J" (
    e1_uuid_1 UUID NOT NULL,
    e2_uuid_1 UUID NOT NULL,
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
        e1_uuid_1, 
        e2_uuid_1    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_1_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_1_UID_J"
FOREIGN KEY (
    e1_uuid_1)
REFERENCES "RMNS_1_UID_E" (
    uuid_1);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_1_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_1_UID_J"
FOREIGN KEY (
    e2_uuid_1)
REFERENCES "RMNS_1_UID_E" (
    uuid_1);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_1_Cha_E (Entity) <-> RMNS_1_Cha_J (Junction Self)
-- KEY SCHEMA: CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_1_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_1_Cha_J" (
    e1_char_36_1 CHAR(36) NOT NULL,
    e2_char_36_1 CHAR(36) NOT NULL,
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
        e1_char_36_1, 
        e2_char_36_1    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_1_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_1_Cha_J"
FOREIGN KEY (
    e1_char_36_1)
REFERENCES "RMNS_1_Cha_E" (
    char_36_1);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_1_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_1_Cha_J"
FOREIGN KEY (
    e2_char_36_1)
REFERENCES "RMNS_1_Cha_E" (
    char_36_1);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_1_Var_E (Entity) <-> RMNS_1_Var_J (Junction Self)
-- KEY SCHEMA: VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_1_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_1_Var_J" (
    e1_varchar_36_1 VARCHAR(36) NOT NULL,
    e2_varchar_36_1 VARCHAR(36) NOT NULL,
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
        e1_varchar_36_1, 
        e2_varchar_36_1    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_1_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_1_Var_J"
FOREIGN KEY (
    e1_varchar_36_1)
REFERENCES "RMNS_1_Var_E" (
    varchar_36_1);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_1_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_1_Var_J"
FOREIGN KEY (
    e2_varchar_36_1)
REFERENCES "RMNS_1_Var_E" (
    varchar_36_1);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_SRL_BGS_E (Entity) <-> RMNS_2_SRL_BGS_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_BGS_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_BGS_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e2_serial_1, 
        e2_bigserial_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_BGS_J"
ADD CONSTRAINT "fk_js1_RMNS_2_SRL_BGS_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2)
REFERENCES "RMNS_2_SRL_BGS_E" (
    serial_1, 
    bigserial_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_BGS_J"
ADD CONSTRAINT "fk_js2_RMNS_2_SRL_BGS_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2)
REFERENCES "RMNS_2_SRL_BGS_E" (
    serial_1, 
    bigserial_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_SRL_INT_E (Entity) <-> RMNS_2_SRL_INT_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_INT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_INT_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e2_serial_1, 
        e2_integer_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_INT_J"
ADD CONSTRAINT "fk_js1_RMNS_2_SRL_INT_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2)
REFERENCES "RMNS_2_SRL_INT_E" (
    serial_1, 
    integer_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_INT_J"
ADD CONSTRAINT "fk_js2_RMNS_2_SRL_INT_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2)
REFERENCES "RMNS_2_SRL_INT_E" (
    serial_1, 
    integer_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_SRL_BGT_E (Entity) <-> RMNS_2_SRL_BGT_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGINT
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_BGT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_BGT_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
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
        e1_serial_1, 
        e1_bigint_2, 
        e2_serial_1, 
        e2_bigint_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_BGT_J"
ADD CONSTRAINT "fk_js1_RMNS_2_SRL_BGT_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigint_2)
REFERENCES "RMNS_2_SRL_BGT_E" (
    serial_1, 
    bigint_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_BGT_J"
ADD CONSTRAINT "fk_js2_RMNS_2_SRL_BGT_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigint_2)
REFERENCES "RMNS_2_SRL_BGT_E" (
    serial_1, 
    bigint_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_SRL_UID_E (Entity) <-> RMNS_2_SRL_UID_J (Junction Self)
-- KEY SCHEMA: SERIAL, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_UID_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_uuid_2 UUID NOT NULL,
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
        e1_serial_1, 
        e1_uuid_2, 
        e2_serial_1, 
        e2_uuid_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_2_SRL_UID_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_uuid_2)
REFERENCES "RMNS_2_SRL_UID_E" (
    serial_1, 
    uuid_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_2_SRL_UID_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_uuid_2)
REFERENCES "RMNS_2_SRL_UID_E" (
    serial_1, 
    uuid_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_SRL_Cha_E (Entity) <-> RMNS_2_SRL_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_char_36_2, 
        e2_serial_1, 
        e2_char_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_2_SRL_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_char_36_2)
REFERENCES "RMNS_2_SRL_Cha_E" (
    serial_1, 
    char_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_2_SRL_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_char_36_2)
REFERENCES "RMNS_2_SRL_Cha_E" (
    serial_1, 
    char_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_SRL_Var_E (Entity) <-> RMNS_2_SRL_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_SRL_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_varchar_36_2 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_varchar_36_2 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_varchar_36_2, 
        e2_serial_1, 
        e2_varchar_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_2_SRL_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_varchar_36_2)
REFERENCES "RMNS_2_SRL_Var_E" (
    serial_1, 
    varchar_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_SRL_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_2_SRL_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_varchar_36_2)
REFERENCES "RMNS_2_SRL_Var_E" (
    serial_1, 
    varchar_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_BGS_INT_E (Entity) <-> RMNS_2_BGS_INT_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_INT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_INT_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e2_bigserial_1, 
        e2_integer_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_INT_J"
ADD CONSTRAINT "fk_js1_RMNS_2_BGS_INT_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2)
REFERENCES "RMNS_2_BGS_INT_E" (
    bigserial_1, 
    integer_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_INT_J"
ADD CONSTRAINT "fk_js2_RMNS_2_BGS_INT_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2)
REFERENCES "RMNS_2_BGS_INT_E" (
    bigserial_1, 
    integer_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_BGS_BGT_E (Entity) <-> RMNS_2_BGS_BGT_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, BIGINT
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_BGT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_BGT_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
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
        e1_bigserial_1, 
        e1_bigint_2, 
        e2_bigserial_1, 
        e2_bigint_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_BGT_J"
ADD CONSTRAINT "fk_js1_RMNS_2_BGS_BGT_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_bigint_2)
REFERENCES "RMNS_2_BGS_BGT_E" (
    bigserial_1, 
    bigint_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_BGT_J"
ADD CONSTRAINT "fk_js2_RMNS_2_BGS_BGT_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_bigint_2)
REFERENCES "RMNS_2_BGS_BGT_E" (
    bigserial_1, 
    bigint_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_BGS_UID_E (Entity) <-> RMNS_2_BGS_UID_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_UID_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_uuid_2 UUID NOT NULL,
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
        e1_bigserial_1, 
        e1_uuid_2, 
        e2_bigserial_1, 
        e2_uuid_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_2_BGS_UID_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_uuid_2)
REFERENCES "RMNS_2_BGS_UID_E" (
    bigserial_1, 
    uuid_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_2_BGS_UID_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_uuid_2)
REFERENCES "RMNS_2_BGS_UID_E" (
    bigserial_1, 
    uuid_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_BGS_Cha_E (Entity) <-> RMNS_2_BGS_Cha_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_Cha_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_char_36_2, 
        e2_bigserial_1, 
        e2_char_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_2_BGS_Cha_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_char_36_2)
REFERENCES "RMNS_2_BGS_Cha_E" (
    bigserial_1, 
    char_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_2_BGS_Cha_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_char_36_2)
REFERENCES "RMNS_2_BGS_Cha_E" (
    bigserial_1, 
    char_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_BGS_Var_E (Entity) <-> RMNS_2_BGS_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_BGS_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_varchar_36_2 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_varchar_36_2 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_varchar_36_2, 
        e2_bigserial_1, 
        e2_varchar_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_2_BGS_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_varchar_36_2)
REFERENCES "RMNS_2_BGS_Var_E" (
    bigserial_1, 
    varchar_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_BGS_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_2_BGS_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_varchar_36_2)
REFERENCES "RMNS_2_BGS_Var_E" (
    bigserial_1, 
    varchar_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_INT_BGT_E (Entity) <-> RMNS_2_INT_BGT_J (Junction Self)
-- KEY SCHEMA: INTEGER, BIGINT
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_INT_BGT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_INT_BGT_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
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
        e1_integer_1, 
        e1_bigint_2, 
        e2_integer_1, 
        e2_bigint_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_INT_BGT_J"
ADD CONSTRAINT "fk_js1_RMNS_2_INT_BGT_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_bigint_2)
REFERENCES "RMNS_2_INT_BGT_E" (
    integer_1, 
    bigint_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_INT_BGT_J"
ADD CONSTRAINT "fk_js2_RMNS_2_INT_BGT_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_bigint_2)
REFERENCES "RMNS_2_INT_BGT_E" (
    integer_1, 
    bigint_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_INT_UID_E (Entity) <-> RMNS_2_INT_UID_J (Junction Self)
-- KEY SCHEMA: INTEGER, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_INT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_INT_UID_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_uuid_2 UUID NOT NULL,
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
        e1_integer_1, 
        e1_uuid_2, 
        e2_integer_1, 
        e2_uuid_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_INT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_2_INT_UID_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_uuid_2)
REFERENCES "RMNS_2_INT_UID_E" (
    integer_1, 
    uuid_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_INT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_2_INT_UID_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_uuid_2)
REFERENCES "RMNS_2_INT_UID_E" (
    integer_1, 
    uuid_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_INT_Cha_E (Entity) <-> RMNS_2_INT_Cha_J (Junction Self)
-- KEY SCHEMA: INTEGER, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_INT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_INT_Cha_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_char_36_2, 
        e2_integer_1, 
        e2_char_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_INT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_2_INT_Cha_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_char_36_2)
REFERENCES "RMNS_2_INT_Cha_E" (
    integer_1, 
    char_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_INT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_2_INT_Cha_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_char_36_2)
REFERENCES "RMNS_2_INT_Cha_E" (
    integer_1, 
    char_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_INT_Var_E (Entity) <-> RMNS_2_INT_Var_J (Junction Self)
-- KEY SCHEMA: INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_INT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_INT_Var_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_varchar_36_2 VARCHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_varchar_36_2 VARCHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_varchar_36_2, 
        e2_integer_1, 
        e2_varchar_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_INT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_2_INT_Var_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_varchar_36_2)
REFERENCES "RMNS_2_INT_Var_E" (
    integer_1, 
    varchar_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_INT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_2_INT_Var_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_varchar_36_2)
REFERENCES "RMNS_2_INT_Var_E" (
    integer_1, 
    varchar_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_BGT_UID_E (Entity) <-> RMNS_2_BGT_UID_J (Junction Self)
-- KEY SCHEMA: BIGINT, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_BGT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_BGT_UID_J" (
    e1_bigint_1 BIGINT NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e2_bigint_1 BIGINT NOT NULL,
    e2_uuid_2 UUID NOT NULL,
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
        e1_bigint_1, 
        e1_uuid_2, 
        e2_bigint_1, 
        e2_uuid_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_BGT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_2_BGT_UID_J"
FOREIGN KEY (
    e1_bigint_1, 
    e1_uuid_2)
REFERENCES "RMNS_2_BGT_UID_E" (
    bigint_1, 
    uuid_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_BGT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_2_BGT_UID_J"
FOREIGN KEY (
    e2_bigint_1, 
    e2_uuid_2)
REFERENCES "RMNS_2_BGT_UID_E" (
    bigint_1, 
    uuid_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_BGT_Cha_E (Entity) <-> RMNS_2_BGT_Cha_J (Junction Self)
-- KEY SCHEMA: BIGINT, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_BGT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_BGT_Cha_J" (
    e1_bigint_1 BIGINT NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e2_bigint_1 BIGINT NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
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
        e1_bigint_1, 
        e1_char_36_2, 
        e2_bigint_1, 
        e2_char_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_BGT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_2_BGT_Cha_J"
FOREIGN KEY (
    e1_bigint_1, 
    e1_char_36_2)
REFERENCES "RMNS_2_BGT_Cha_E" (
    bigint_1, 
    char_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_BGT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_2_BGT_Cha_J"
FOREIGN KEY (
    e2_bigint_1, 
    e2_char_36_2)
REFERENCES "RMNS_2_BGT_Cha_E" (
    bigint_1, 
    char_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_BGT_Var_E (Entity) <-> RMNS_2_BGT_Var_J (Junction Self)
-- KEY SCHEMA: BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_BGT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_BGT_Var_J" (
    e1_bigint_1 BIGINT NOT NULL,
    e1_varchar_36_2 VARCHAR(36) NOT NULL,
    e2_bigint_1 BIGINT NOT NULL,
    e2_varchar_36_2 VARCHAR(36) NOT NULL,
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
        e1_bigint_1, 
        e1_varchar_36_2, 
        e2_bigint_1, 
        e2_varchar_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_BGT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_2_BGT_Var_J"
FOREIGN KEY (
    e1_bigint_1, 
    e1_varchar_36_2)
REFERENCES "RMNS_2_BGT_Var_E" (
    bigint_1, 
    varchar_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_BGT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_2_BGT_Var_J"
FOREIGN KEY (
    e2_bigint_1, 
    e2_varchar_36_2)
REFERENCES "RMNS_2_BGT_Var_E" (
    bigint_1, 
    varchar_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_UID_Cha_E (Entity) <-> RMNS_2_UID_Cha_J (Junction Self)
-- KEY SCHEMA: UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_UID_Cha_J" (
    e1_uuid_1 UUID NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e2_uuid_1 UUID NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
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
        e1_uuid_1, 
        e1_char_36_2, 
        e2_uuid_1, 
        e2_char_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_2_UID_Cha_J"
FOREIGN KEY (
    e1_uuid_1, 
    e1_char_36_2)
REFERENCES "RMNS_2_UID_Cha_E" (
    uuid_1, 
    char_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_2_UID_Cha_J"
FOREIGN KEY (
    e2_uuid_1, 
    e2_char_36_2)
REFERENCES "RMNS_2_UID_Cha_E" (
    uuid_1, 
    char_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_UID_Var_E (Entity) <-> RMNS_2_UID_Var_J (Junction Self)
-- KEY SCHEMA: UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_UID_Var_J" (
    e1_uuid_1 UUID NOT NULL,
    e1_varchar_36_2 VARCHAR(36) NOT NULL,
    e2_uuid_1 UUID NOT NULL,
    e2_varchar_36_2 VARCHAR(36) NOT NULL,
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
        e1_uuid_1, 
        e1_varchar_36_2, 
        e2_uuid_1, 
        e2_varchar_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_2_UID_Var_J"
FOREIGN KEY (
    e1_uuid_1, 
    e1_varchar_36_2)
REFERENCES "RMNS_2_UID_Var_E" (
    uuid_1, 
    varchar_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_2_UID_Var_J"
FOREIGN KEY (
    e2_uuid_1, 
    e2_varchar_36_2)
REFERENCES "RMNS_2_UID_Var_E" (
    uuid_1, 
    varchar_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_2_Cha_Var_E (Entity) <-> RMNS_2_Cha_Var_J (Junction Self)
-- KEY SCHEMA: CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_2_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_2_Cha_Var_J" (
    e1_char_36_1 CHAR(36) NOT NULL,
    e1_varchar_36_2 VARCHAR(36) NOT NULL,
    e2_char_36_1 CHAR(36) NOT NULL,
    e2_varchar_36_2 VARCHAR(36) NOT NULL,
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
        e1_char_36_1, 
        e1_varchar_36_2, 
        e2_char_36_1, 
        e2_varchar_36_2    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_2_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_2_Cha_Var_J"
FOREIGN KEY (
    e1_char_36_1, 
    e1_varchar_36_2)
REFERENCES "RMNS_2_Cha_Var_E" (
    char_36_1, 
    varchar_36_2);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_2_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_2_Cha_Var_J"
FOREIGN KEY (
    e2_char_36_1, 
    e2_varchar_36_2)
REFERENCES "RMNS_2_Cha_Var_E" (
    char_36_1, 
    varchar_36_2);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_BGS_INT_E (Entity) <-> RMNS_3_SRL_BGS_INT_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_INT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_INT_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_INT_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_BGS_INT_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3)
REFERENCES "RMNS_3_SRL_BGS_INT_E" (
    serial_1, 
    bigserial_2, 
    integer_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_INT_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_BGS_INT_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3)
REFERENCES "RMNS_3_SRL_BGS_INT_E" (
    serial_1, 
    bigserial_2, 
    integer_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_BGS_BGT_E (Entity) <-> RMNS_3_SRL_BGS_BGT_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_BGT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_BGT_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_bigint_3, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_bigint_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_BGT_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_BGS_BGT_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_bigint_3)
REFERENCES "RMNS_3_SRL_BGS_BGT_E" (
    serial_1, 
    bigserial_2, 
    bigint_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_BGT_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_BGS_BGT_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_bigint_3)
REFERENCES "RMNS_3_SRL_BGS_BGT_E" (
    serial_1, 
    bigserial_2, 
    bigint_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_BGS_UID_E (Entity) <-> RMNS_3_SRL_BGS_UID_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_UID_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_uuid_3, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_uuid_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_BGS_UID_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_uuid_3)
REFERENCES "RMNS_3_SRL_BGS_UID_E" (
    serial_1, 
    bigserial_2, 
    uuid_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_BGS_UID_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_uuid_3)
REFERENCES "RMNS_3_SRL_BGS_UID_E" (
    serial_1, 
    bigserial_2, 
    uuid_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_BGS_Cha_E (Entity) <-> RMNS_3_SRL_BGS_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_char_36_3, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_BGS_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_SRL_BGS_Cha_E" (
    serial_1, 
    bigserial_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_BGS_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_SRL_BGS_Cha_E" (
    serial_1, 
    bigserial_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_BGS_Var_E (Entity) <-> RMNS_3_SRL_BGS_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGS_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_varchar_36_3, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_BGS_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_SRL_BGS_Var_E" (
    serial_1, 
    bigserial_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGS_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_BGS_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_SRL_BGS_Var_E" (
    serial_1, 
    bigserial_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_INT_BGT_E (Entity) <-> RMNS_3_SRL_INT_BGT_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_INT_BGT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_INT_BGT_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e2_serial_1, 
        e2_integer_2, 
        e2_bigint_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_INT_BGT_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_INT_BGT_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_bigint_3)
REFERENCES "RMNS_3_SRL_INT_BGT_E" (
    serial_1, 
    integer_2, 
    bigint_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_INT_BGT_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_INT_BGT_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_bigint_3)
REFERENCES "RMNS_3_SRL_INT_BGT_E" (
    serial_1, 
    integer_2, 
    bigint_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_INT_UID_E (Entity) <-> RMNS_3_SRL_INT_UID_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_INT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_INT_UID_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_uuid_3 UUID NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_uuid_3, 
        e2_serial_1, 
        e2_integer_2, 
        e2_uuid_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_INT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_INT_UID_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_uuid_3)
REFERENCES "RMNS_3_SRL_INT_UID_E" (
    serial_1, 
    integer_2, 
    uuid_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_INT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_INT_UID_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_uuid_3)
REFERENCES "RMNS_3_SRL_INT_UID_E" (
    serial_1, 
    integer_2, 
    uuid_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_INT_Cha_E (Entity) <-> RMNS_3_SRL_INT_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_INT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_INT_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_char_36_3, 
        e2_serial_1, 
        e2_integer_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_INT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_INT_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_SRL_INT_Cha_E" (
    serial_1, 
    integer_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_INT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_INT_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_SRL_INT_Cha_E" (
    serial_1, 
    integer_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_INT_Var_E (Entity) <-> RMNS_3_SRL_INT_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_INT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_INT_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_varchar_36_3, 
        e2_serial_1, 
        e2_integer_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_INT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_INT_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_SRL_INT_Var_E" (
    serial_1, 
    integer_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_INT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_INT_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_SRL_INT_Var_E" (
    serial_1, 
    integer_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_BGT_UID_E (Entity) <-> RMNS_3_SRL_BGT_UID_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGINT, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGT_UID_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
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
        e1_serial_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e2_serial_1, 
        e2_bigint_2, 
        e2_uuid_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_BGT_UID_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigint_2, 
    e1_uuid_3)
REFERENCES "RMNS_3_SRL_BGT_UID_E" (
    serial_1, 
    bigint_2, 
    uuid_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_BGT_UID_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigint_2, 
    e2_uuid_3)
REFERENCES "RMNS_3_SRL_BGT_UID_E" (
    serial_1, 
    bigint_2, 
    uuid_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_BGT_Cha_E (Entity) <-> RMNS_3_SRL_BGT_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGT_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigint_2, 
        e1_char_36_3, 
        e2_serial_1, 
        e2_bigint_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_BGT_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigint_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_SRL_BGT_Cha_E" (
    serial_1, 
    bigint_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_BGT_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigint_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_SRL_BGT_Cha_E" (
    serial_1, 
    bigint_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_BGT_Var_E (Entity) <-> RMNS_3_SRL_BGT_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_BGT_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigint_2, 
        e1_varchar_36_3, 
        e2_serial_1, 
        e2_bigint_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_BGT_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigint_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_SRL_BGT_Var_E" (
    serial_1, 
    bigint_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_BGT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_BGT_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigint_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_SRL_BGT_Var_E" (
    serial_1, 
    bigint_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_UID_Cha_E (Entity) <-> RMNS_3_SRL_UID_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_UID_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_uuid_2, 
        e1_char_36_3, 
        e2_serial_1, 
        e2_uuid_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_UID_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_uuid_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_SRL_UID_Cha_E" (
    serial_1, 
    uuid_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_UID_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_uuid_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_SRL_UID_Cha_E" (
    serial_1, 
    uuid_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_UID_Var_E (Entity) <-> RMNS_3_SRL_UID_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_UID_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_uuid_2, 
        e1_varchar_36_3, 
        e2_serial_1, 
        e2_uuid_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_UID_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_uuid_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_SRL_UID_Var_E" (
    serial_1, 
    uuid_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_UID_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_uuid_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_SRL_UID_Var_E" (
    serial_1, 
    uuid_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_SRL_Cha_Var_E (Entity) <-> RMNS_3_SRL_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_SRL_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_char_36_2, 
        e1_varchar_36_3, 
        e2_serial_1, 
        e2_char_36_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_SRL_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_char_36_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_SRL_Cha_Var_E" (
    serial_1, 
    char_36_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_SRL_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_SRL_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_char_36_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_SRL_Cha_Var_E" (
    serial_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_INT_BGT_E (Entity) <-> RMNS_3_BGS_INT_BGT_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_INT_BGT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_INT_BGT_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_bigint_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_INT_BGT_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_INT_BGT_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_bigint_3)
REFERENCES "RMNS_3_BGS_INT_BGT_E" (
    bigserial_1, 
    integer_2, 
    bigint_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_INT_BGT_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_INT_BGT_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_bigint_3)
REFERENCES "RMNS_3_BGS_INT_BGT_E" (
    bigserial_1, 
    integer_2, 
    bigint_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_INT_UID_E (Entity) <-> RMNS_3_BGS_INT_UID_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_INT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_INT_UID_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_uuid_3 UUID NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_uuid_3, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_uuid_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_INT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_INT_UID_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_uuid_3)
REFERENCES "RMNS_3_BGS_INT_UID_E" (
    bigserial_1, 
    integer_2, 
    uuid_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_INT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_INT_UID_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_uuid_3)
REFERENCES "RMNS_3_BGS_INT_UID_E" (
    bigserial_1, 
    integer_2, 
    uuid_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_INT_Cha_E (Entity) <-> RMNS_3_BGS_INT_Cha_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_INT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_INT_Cha_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_char_36_3, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_INT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_INT_Cha_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_BGS_INT_Cha_E" (
    bigserial_1, 
    integer_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_INT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_INT_Cha_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_BGS_INT_Cha_E" (
    bigserial_1, 
    integer_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_INT_Var_E (Entity) <-> RMNS_3_BGS_INT_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_INT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_INT_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_varchar_36_3, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_INT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_INT_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_BGS_INT_Var_E" (
    bigserial_1, 
    integer_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_INT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_INT_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_BGS_INT_Var_E" (
    bigserial_1, 
    integer_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_BGT_UID_E (Entity) <-> RMNS_3_BGS_BGT_UID_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_BGT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_BGT_UID_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
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
        e1_bigserial_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e2_bigserial_1, 
        e2_bigint_2, 
        e2_uuid_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_BGT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_BGT_UID_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_bigint_2, 
    e1_uuid_3)
REFERENCES "RMNS_3_BGS_BGT_UID_E" (
    bigserial_1, 
    bigint_2, 
    uuid_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_BGT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_BGT_UID_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_bigint_2, 
    e2_uuid_3)
REFERENCES "RMNS_3_BGS_BGT_UID_E" (
    bigserial_1, 
    bigint_2, 
    uuid_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_BGT_Cha_E (Entity) <-> RMNS_3_BGS_BGT_Cha_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_BGT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_BGT_Cha_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_bigint_2, 
        e1_char_36_3, 
        e2_bigserial_1, 
        e2_bigint_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_BGT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_BGT_Cha_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_bigint_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_BGS_BGT_Cha_E" (
    bigserial_1, 
    bigint_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_BGT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_BGT_Cha_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_bigint_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_BGS_BGT_Cha_E" (
    bigserial_1, 
    bigint_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_BGT_Var_E (Entity) <-> RMNS_3_BGS_BGT_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_BGT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_BGT_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_bigint_2, 
        e1_varchar_36_3, 
        e2_bigserial_1, 
        e2_bigint_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_BGT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_BGT_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_bigint_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_BGS_BGT_Var_E" (
    bigserial_1, 
    bigint_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_BGT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_BGT_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_bigint_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_BGS_BGT_Var_E" (
    bigserial_1, 
    bigint_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_UID_Cha_E (Entity) <-> RMNS_3_BGS_UID_Cha_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_UID_Cha_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_uuid_2, 
        e1_char_36_3, 
        e2_bigserial_1, 
        e2_uuid_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_UID_Cha_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_uuid_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_BGS_UID_Cha_E" (
    bigserial_1, 
    uuid_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_UID_Cha_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_uuid_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_BGS_UID_Cha_E" (
    bigserial_1, 
    uuid_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_UID_Var_E (Entity) <-> RMNS_3_BGS_UID_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_UID_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_uuid_2, 
        e1_varchar_36_3, 
        e2_bigserial_1, 
        e2_uuid_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_UID_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_uuid_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_BGS_UID_Var_E" (
    bigserial_1, 
    uuid_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_UID_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_uuid_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_BGS_UID_Var_E" (
    bigserial_1, 
    uuid_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGS_Cha_Var_E (Entity) <-> RMNS_3_BGS_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGS_Cha_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_char_36_2, 
        e1_varchar_36_3, 
        e2_bigserial_1, 
        e2_char_36_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGS_Cha_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_char_36_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_BGS_Cha_Var_E" (
    bigserial_1, 
    char_36_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGS_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGS_Cha_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_char_36_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_BGS_Cha_Var_E" (
    bigserial_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_INT_BGT_UID_E (Entity) <-> RMNS_3_INT_BGT_UID_J (Junction Self)
-- KEY SCHEMA: INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_BGT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_BGT_UID_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
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
        e1_integer_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e2_integer_1, 
        e2_bigint_2, 
        e2_uuid_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_INT_BGT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_3_INT_BGT_UID_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_bigint_2, 
    e1_uuid_3)
REFERENCES "RMNS_3_INT_BGT_UID_E" (
    integer_1, 
    bigint_2, 
    uuid_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_INT_BGT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_3_INT_BGT_UID_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_bigint_2, 
    e2_uuid_3)
REFERENCES "RMNS_3_INT_BGT_UID_E" (
    integer_1, 
    bigint_2, 
    uuid_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_INT_BGT_Cha_E (Entity) <-> RMNS_3_INT_BGT_Cha_J (Junction Self)
-- KEY SCHEMA: INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_BGT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_BGT_Cha_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_bigint_2, 
        e1_char_36_3, 
        e2_integer_1, 
        e2_bigint_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_INT_BGT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_INT_BGT_Cha_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_bigint_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_INT_BGT_Cha_E" (
    integer_1, 
    bigint_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_INT_BGT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_INT_BGT_Cha_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_bigint_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_INT_BGT_Cha_E" (
    integer_1, 
    bigint_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_INT_BGT_Var_E (Entity) <-> RMNS_3_INT_BGT_Var_J (Junction Self)
-- KEY SCHEMA: INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_BGT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_BGT_Var_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_bigint_2, 
        e1_varchar_36_3, 
        e2_integer_1, 
        e2_bigint_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_INT_BGT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_INT_BGT_Var_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_bigint_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_INT_BGT_Var_E" (
    integer_1, 
    bigint_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_INT_BGT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_INT_BGT_Var_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_bigint_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_INT_BGT_Var_E" (
    integer_1, 
    bigint_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_INT_UID_Cha_E (Entity) <-> RMNS_3_INT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_UID_Cha_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_uuid_2, 
        e1_char_36_3, 
        e2_integer_1, 
        e2_uuid_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_INT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_INT_UID_Cha_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_uuid_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_INT_UID_Cha_E" (
    integer_1, 
    uuid_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_INT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_INT_UID_Cha_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_uuid_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_INT_UID_Cha_E" (
    integer_1, 
    uuid_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_INT_UID_Var_E (Entity) <-> RMNS_3_INT_UID_Var_J (Junction Self)
-- KEY SCHEMA: INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_UID_Var_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_uuid_2, 
        e1_varchar_36_3, 
        e2_integer_1, 
        e2_uuid_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_INT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_INT_UID_Var_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_uuid_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_INT_UID_Var_E" (
    integer_1, 
    uuid_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_INT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_INT_UID_Var_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_uuid_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_INT_UID_Var_E" (
    integer_1, 
    uuid_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_INT_Cha_Var_E (Entity) <-> RMNS_3_INT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_INT_Cha_Var_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_char_36_2, 
        e1_varchar_36_3, 
        e2_integer_1, 
        e2_char_36_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_INT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_INT_Cha_Var_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_char_36_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_INT_Cha_Var_E" (
    integer_1, 
    char_36_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_INT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_INT_Cha_Var_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_char_36_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_INT_Cha_Var_E" (
    integer_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGT_UID_Cha_E (Entity) <-> RMNS_3_BGT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGT_UID_Cha_J" (
    e1_bigint_1 BIGINT NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e2_bigint_1 BIGINT NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
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
        e1_bigint_1, 
        e1_uuid_2, 
        e1_char_36_3, 
        e2_bigint_1, 
        e2_uuid_2, 
        e2_char_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGT_UID_Cha_J"
FOREIGN KEY (
    e1_bigint_1, 
    e1_uuid_2, 
    e1_char_36_3)
REFERENCES "RMNS_3_BGT_UID_Cha_E" (
    bigint_1, 
    uuid_2, 
    char_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGT_UID_Cha_J"
FOREIGN KEY (
    e2_bigint_1, 
    e2_uuid_2, 
    e2_char_36_3)
REFERENCES "RMNS_3_BGT_UID_Cha_E" (
    bigint_1, 
    uuid_2, 
    char_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGT_UID_Var_E (Entity) <-> RMNS_3_BGT_UID_Var_J (Junction Self)
-- KEY SCHEMA: BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGT_UID_Var_J" (
    e1_bigint_1 BIGINT NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_bigint_1 BIGINT NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_bigint_1, 
        e1_uuid_2, 
        e1_varchar_36_3, 
        e2_bigint_1, 
        e2_uuid_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGT_UID_Var_J"
FOREIGN KEY (
    e1_bigint_1, 
    e1_uuid_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_BGT_UID_Var_E" (
    bigint_1, 
    uuid_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGT_UID_Var_J"
FOREIGN KEY (
    e2_bigint_1, 
    e2_uuid_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_BGT_UID_Var_E" (
    bigint_1, 
    uuid_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_BGT_Cha_Var_E (Entity) <-> RMNS_3_BGT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_BGT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_BGT_Cha_Var_J" (
    e1_bigint_1 BIGINT NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_bigint_1 BIGINT NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_bigint_1, 
        e1_char_36_2, 
        e1_varchar_36_3, 
        e2_bigint_1, 
        e2_char_36_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_BGT_Cha_Var_J"
FOREIGN KEY (
    e1_bigint_1, 
    e1_char_36_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_BGT_Cha_Var_E" (
    bigint_1, 
    char_36_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_BGT_Cha_Var_J"
FOREIGN KEY (
    e2_bigint_1, 
    e2_char_36_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_BGT_Cha_Var_E" (
    bigint_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_3_UID_Cha_Var_E (Entity) <-> RMNS_3_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_3_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_3_UID_Cha_Var_J" (
    e1_uuid_1 UUID NOT NULL,
    e1_char_36_2 CHAR(36) NOT NULL,
    e1_varchar_36_3 VARCHAR(36) NOT NULL,
    e2_uuid_1 UUID NOT NULL,
    e2_char_36_2 CHAR(36) NOT NULL,
    e2_varchar_36_3 VARCHAR(36) NOT NULL,
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
        e1_uuid_1, 
        e1_char_36_2, 
        e1_varchar_36_3, 
        e2_uuid_1, 
        e2_char_36_2, 
        e2_varchar_36_3    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_3_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_3_UID_Cha_Var_J"
FOREIGN KEY (
    e1_uuid_1, 
    e1_char_36_2, 
    e1_varchar_36_3)
REFERENCES "RMNS_3_UID_Cha_Var_E" (
    uuid_1, 
    char_36_2, 
    varchar_36_3);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_3_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_3_UID_Cha_Var_J"
FOREIGN KEY (
    e2_uuid_1, 
    e2_char_36_2, 
    e2_varchar_36_3)
REFERENCES "RMNS_3_UID_Cha_Var_E" (
    uuid_1, 
    char_36_2, 
    varchar_36_3);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_INT_BGT_E (Entity) <-> RMNS_4_SRL_BGS_INT_BGT_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_INT_BGT_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_INT_BGT_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_bigint_4 BIGINT NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_bigint_4 BIGINT NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_bigint_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_bigint_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_INT_BGT_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_INT_BGT_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_bigint_4)
REFERENCES "RMNS_4_SRL_BGS_INT_BGT_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_INT_BGT_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_INT_BGT_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_bigint_4)
REFERENCES "RMNS_4_SRL_BGS_INT_BGT_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_INT_UID_E (Entity) <-> RMNS_4_SRL_BGS_INT_UID_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_INT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_INT_UID_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_uuid_4 UUID NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_uuid_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_uuid_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_INT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_INT_UID_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_uuid_4)
REFERENCES "RMNS_4_SRL_BGS_INT_UID_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_INT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_INT_UID_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_uuid_4)
REFERENCES "RMNS_4_SRL_BGS_INT_UID_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_INT_Cha_E (Entity) <-> RMNS_4_SRL_BGS_INT_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_INT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_INT_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_char_36_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_INT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_INT_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_SRL_BGS_INT_Cha_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_INT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_INT_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_SRL_BGS_INT_Cha_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_INT_Var_E (Entity) <-> RMNS_4_SRL_BGS_INT_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_INT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_INT_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_INT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_INT_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGS_INT_Var_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_INT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_INT_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGS_INT_Var_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_BGT_UID_E (Entity) <-> RMNS_4_SRL_BGS_BGT_UID_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_BGT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_BGT_UID_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_bigint_3, 
        e2_uuid_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_BGT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_BGT_UID_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_bigint_3, 
    e1_uuid_4)
REFERENCES "RMNS_4_SRL_BGS_BGT_UID_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_BGT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_BGT_UID_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_bigint_3, 
    e2_uuid_4)
REFERENCES "RMNS_4_SRL_BGS_BGT_UID_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_BGT_Cha_E (Entity) <-> RMNS_4_SRL_BGS_BGT_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_BGT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_BGT_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_bigint_3, 
        e1_char_36_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_bigint_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_BGT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_BGT_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_bigint_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_SRL_BGS_BGT_Cha_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_BGT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_BGT_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_bigint_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_SRL_BGS_BGT_Cha_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_BGT_Var_E (Entity) <-> RMNS_4_SRL_BGS_BGT_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_BGT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_BGT_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_bigint_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_bigint_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_BGT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_BGT_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_bigint_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGS_BGT_Var_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_BGT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_BGT_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_bigint_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGS_BGT_Var_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_UID_Cha_E (Entity) <-> RMNS_4_SRL_BGS_UID_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_UID_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_uuid_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_UID_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_uuid_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_SRL_BGS_UID_Cha_E" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_UID_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_uuid_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_SRL_BGS_UID_Cha_E" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_UID_Var_E (Entity) <-> RMNS_4_SRL_BGS_UID_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_UID_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_uuid_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_uuid_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_UID_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_uuid_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGS_UID_Var_E" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_UID_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_uuid_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGS_UID_Var_E" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGS_Cha_Var_E (Entity) <-> RMNS_4_SRL_BGS_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGS_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGS_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGS_Cha_Var_E" (
    serial_1, 
    bigserial_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGS_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGS_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGS_Cha_Var_E" (
    serial_1, 
    bigserial_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_INT_BGT_UID_E (Entity) <-> RMNS_4_SRL_INT_BGT_UID_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_BGT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_BGT_UID_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e2_serial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_uuid_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_BGT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_INT_BGT_UID_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_uuid_4)
REFERENCES "RMNS_4_SRL_INT_BGT_UID_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_BGT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_INT_BGT_UID_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_uuid_4)
REFERENCES "RMNS_4_SRL_INT_BGT_UID_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_INT_BGT_Cha_E (Entity) <-> RMNS_4_SRL_INT_BGT_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_BGT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_BGT_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_char_36_4, 
        e2_serial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_BGT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_INT_BGT_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_SRL_INT_BGT_Cha_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_BGT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_INT_BGT_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_SRL_INT_BGT_Cha_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_INT_BGT_Var_E (Entity) <-> RMNS_4_SRL_INT_BGT_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_BGT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_BGT_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_BGT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_INT_BGT_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_INT_BGT_Var_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_BGT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_INT_BGT_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_INT_BGT_Var_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_INT_UID_Cha_E (Entity) <-> RMNS_4_SRL_INT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_UID_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e2_serial_1, 
        e2_integer_2, 
        e2_uuid_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_INT_UID_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_uuid_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_SRL_INT_UID_Cha_E" (
    serial_1, 
    integer_2, 
    uuid_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_INT_UID_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_uuid_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_SRL_INT_UID_Cha_E" (
    serial_1, 
    integer_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_INT_UID_Var_E (Entity) <-> RMNS_4_SRL_INT_UID_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_UID_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_uuid_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_integer_2, 
        e2_uuid_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_INT_UID_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_uuid_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_INT_UID_Var_E" (
    serial_1, 
    integer_2, 
    uuid_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_INT_UID_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_uuid_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_INT_UID_Var_E" (
    serial_1, 
    integer_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_INT_Cha_Var_E (Entity) <-> RMNS_4_SRL_INT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_INT_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_integer_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_INT_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_INT_Cha_Var_E" (
    serial_1, 
    integer_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_INT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_INT_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_INT_Cha_Var_E" (
    serial_1, 
    integer_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGT_UID_Cha_E (Entity) <-> RMNS_4_SRL_BGT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGT_UID_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e2_serial_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGT_UID_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_SRL_BGT_UID_Cha_E" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGT_UID_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_SRL_BGT_UID_Cha_E" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGT_UID_Var_E (Entity) <-> RMNS_4_SRL_BGT_UID_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGT_UID_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGT_UID_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGT_UID_Var_E" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGT_UID_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGT_UID_Var_E" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_BGT_Cha_Var_E (Entity) <-> RMNS_4_SRL_BGT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_BGT_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigint_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_bigint_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_BGT_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigint_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGT_Cha_Var_E" (
    serial_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_BGT_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigint_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_BGT_Cha_Var_E" (
    serial_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_SRL_UID_Cha_Var_E (Entity) <-> RMNS_4_SRL_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_SRL_UID_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_uuid_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_serial_1, 
        e2_uuid_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_SRL_UID_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_uuid_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_SRL_UID_Cha_Var_E" (
    serial_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_SRL_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_SRL_UID_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_uuid_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_SRL_UID_Cha_Var_E" (
    serial_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_INT_BGT_UID_E (Entity) <-> RMNS_4_BGS_INT_BGT_UID_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_BGT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_BGT_UID_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_uuid_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_BGT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_INT_BGT_UID_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_uuid_4)
REFERENCES "RMNS_4_BGS_INT_BGT_UID_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_BGT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_INT_BGT_UID_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_uuid_4)
REFERENCES "RMNS_4_BGS_INT_BGT_UID_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_INT_BGT_Cha_E (Entity) <-> RMNS_4_BGS_INT_BGT_Cha_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_BGT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_BGT_Cha_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_char_36_4, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_BGT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_INT_BGT_Cha_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_BGS_INT_BGT_Cha_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_BGT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_INT_BGT_Cha_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_BGS_INT_BGT_Cha_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_INT_BGT_Var_E (Entity) <-> RMNS_4_BGS_INT_BGT_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_BGT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_BGT_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_varchar_36_4, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_BGT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_INT_BGT_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_BGS_INT_BGT_Var_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_BGT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_INT_BGT_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_BGS_INT_BGT_Var_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_INT_UID_Cha_E (Entity) <-> RMNS_4_BGS_INT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_UID_Cha_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_uuid_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_INT_UID_Cha_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_uuid_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_BGS_INT_UID_Cha_E" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_INT_UID_Cha_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_uuid_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_BGS_INT_UID_Cha_E" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_INT_UID_Var_E (Entity) <-> RMNS_4_BGS_INT_UID_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_UID_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_uuid_3, 
        e1_varchar_36_4, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_uuid_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_INT_UID_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_uuid_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_BGS_INT_UID_Var_E" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_INT_UID_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_uuid_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_BGS_INT_UID_Var_E" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_INT_Cha_Var_E (Entity) <-> RMNS_4_BGS_INT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_INT_Cha_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_INT_Cha_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_BGS_INT_Cha_Var_E" (
    bigserial_1, 
    integer_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_INT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_INT_Cha_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_BGS_INT_Cha_Var_E" (
    bigserial_1, 
    integer_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_BGT_UID_Cha_E (Entity) <-> RMNS_4_BGS_BGT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_BGT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_BGT_UID_Cha_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e2_bigserial_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_BGT_UID_Cha_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_BGS_BGT_UID_Cha_E" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_BGT_UID_Cha_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_BGS_BGT_UID_Cha_E" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_BGT_UID_Var_E (Entity) <-> RMNS_4_BGS_BGT_UID_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_BGT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_BGT_UID_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_varchar_36_4, 
        e2_bigserial_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_BGT_UID_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_BGS_BGT_UID_Var_E" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_BGT_UID_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_BGS_BGT_UID_Var_E" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_BGT_Cha_Var_E (Entity) <-> RMNS_4_BGS_BGT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_BGT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_BGT_Cha_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_bigint_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_bigserial_1, 
        e2_bigint_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_BGT_Cha_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_bigint_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_BGS_BGT_Cha_Var_E" (
    bigserial_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_BGT_Cha_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_bigint_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_BGS_BGT_Cha_Var_E" (
    bigserial_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGS_UID_Cha_Var_E (Entity) <-> RMNS_4_BGS_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGS_UID_Cha_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_uuid_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_bigserial_1, 
        e2_uuid_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGS_UID_Cha_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_uuid_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_BGS_UID_Cha_Var_E" (
    bigserial_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGS_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGS_UID_Cha_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_uuid_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_BGS_UID_Cha_Var_E" (
    bigserial_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_INT_BGT_UID_Cha_E (Entity) <-> RMNS_4_INT_BGT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_INT_BGT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_INT_BGT_UID_Cha_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e2_integer_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_char_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_INT_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_4_INT_BGT_UID_Cha_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_char_36_4)
REFERENCES "RMNS_4_INT_BGT_UID_Cha_E" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_INT_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_4_INT_BGT_UID_Cha_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_char_36_4)
REFERENCES "RMNS_4_INT_BGT_UID_Cha_E" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    char_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_INT_BGT_UID_Var_E (Entity) <-> RMNS_4_INT_BGT_UID_Var_J (Junction Self)
-- KEY SCHEMA: INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_INT_BGT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_INT_BGT_UID_Var_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_varchar_36_4, 
        e2_integer_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_INT_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_INT_BGT_UID_Var_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_INT_BGT_UID_Var_E" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_INT_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_INT_BGT_UID_Var_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_INT_BGT_UID_Var_E" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_INT_BGT_Cha_Var_E (Entity) <-> RMNS_4_INT_BGT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_INT_BGT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_INT_BGT_Cha_Var_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_bigint_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_integer_1, 
        e2_bigint_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_INT_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_INT_BGT_Cha_Var_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_bigint_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_INT_BGT_Cha_Var_E" (
    integer_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_INT_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_INT_BGT_Cha_Var_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_bigint_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_INT_BGT_Cha_Var_E" (
    integer_1, 
    bigint_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_INT_UID_Cha_Var_E (Entity) <-> RMNS_4_INT_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_INT_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_INT_UID_Cha_Var_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_uuid_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_integer_1, 
        e2_uuid_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_INT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_INT_UID_Cha_Var_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_uuid_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_INT_UID_Cha_Var_E" (
    integer_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_INT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_INT_UID_Cha_Var_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_uuid_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_INT_UID_Cha_Var_E" (
    integer_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_4_BGT_UID_Cha_Var_E (Entity) <-> RMNS_4_BGT_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_4_BGT_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_4_BGT_UID_Cha_Var_J" (
    e1_bigint_1 BIGINT NOT NULL,
    e1_uuid_2 UUID NOT NULL,
    e1_char_36_3 CHAR(36) NOT NULL,
    e1_varchar_36_4 VARCHAR(36) NOT NULL,
    e2_bigint_1 BIGINT NOT NULL,
    e2_uuid_2 UUID NOT NULL,
    e2_char_36_3 CHAR(36) NOT NULL,
    e2_varchar_36_4 VARCHAR(36) NOT NULL,
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
        e1_bigint_1, 
        e1_uuid_2, 
        e1_char_36_3, 
        e1_varchar_36_4, 
        e2_bigint_1, 
        e2_uuid_2, 
        e2_char_36_3, 
        e2_varchar_36_4    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_4_BGT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_4_BGT_UID_Cha_Var_J"
FOREIGN KEY (
    e1_bigint_1, 
    e1_uuid_2, 
    e1_char_36_3, 
    e1_varchar_36_4)
REFERENCES "RMNS_4_BGT_UID_Cha_Var_E" (
    bigint_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_4_BGT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_4_BGT_UID_Cha_Var_J"
FOREIGN KEY (
    e2_bigint_1, 
    e2_uuid_2, 
    e2_char_36_3, 
    e2_varchar_36_4)
REFERENCES "RMNS_4_BGT_UID_Cha_Var_E" (
    bigint_1, 
    uuid_2, 
    char_36_3, 
    varchar_36_4);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_INT_BGT_UID_E (Entity) <-> RMNS_5_SRL_BGS_INT_BGT_UID_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_BGT_UID_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_BGT_UID_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_bigint_4 BIGINT NOT NULL,
    e1_uuid_5 UUID NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_bigint_4 BIGINT NOT NULL,
    e2_uuid_5 UUID NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_bigint_4, 
        e1_uuid_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_bigint_4, 
        e2_uuid_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_BGT_UID_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_INT_BGT_UID_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_bigint_4, 
    e1_uuid_5)
REFERENCES "RMNS_5_SRL_BGS_INT_BGT_UID_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_BGT_UID_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_INT_BGT_UID_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_bigint_4, 
    e2_uuid_5)
REFERENCES "RMNS_5_SRL_BGS_INT_BGT_UID_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_INT_BGT_Cha_E (Entity) <-> RMNS_5_SRL_BGS_INT_BGT_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_BGT_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_BGT_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_bigint_4 BIGINT NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_bigint_4 BIGINT NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_bigint_4, 
        e1_char_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_bigint_4, 
        e2_char_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_BGT_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_INT_BGT_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_bigint_4, 
    e1_char_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_BGT_Cha_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    char_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_BGT_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_INT_BGT_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_bigint_4, 
    e2_char_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_BGT_Cha_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    char_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_INT_BGT_Var_E (Entity) <-> RMNS_5_SRL_BGS_INT_BGT_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_BGT_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_BGT_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_bigint_4 BIGINT NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_bigint_4 BIGINT NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_bigint_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_bigint_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_BGT_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_INT_BGT_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_bigint_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_BGT_Var_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_BGT_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_INT_BGT_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_bigint_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_BGT_Var_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_INT_UID_Cha_E (Entity) <-> RMNS_5_SRL_BGS_INT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_UID_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_uuid_4, 
        e1_char_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_uuid_4, 
        e2_char_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_INT_UID_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_uuid_4, 
    e1_char_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_UID_Cha_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    char_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_INT_UID_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_uuid_4, 
    e2_char_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_UID_Cha_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    char_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_INT_UID_Var_E (Entity) <-> RMNS_5_SRL_BGS_INT_UID_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_UID_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_uuid_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_uuid_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_INT_UID_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_uuid_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_UID_Var_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_INT_UID_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_uuid_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_UID_Var_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_INT_Cha_Var_E (Entity) <-> RMNS_5_SRL_BGS_INT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_INT_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_INT_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_Cha_Var_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_INT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_INT_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_INT_Cha_Var_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_BGT_UID_Cha_E (Entity) <-> RMNS_5_SRL_BGS_BGT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_BGT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_BGT_UID_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_char_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_char_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_BGT_UID_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_char_36_5)
REFERENCES "RMNS_5_SRL_BGS_BGT_UID_Cha_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_BGT_UID_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_char_36_5)
REFERENCES "RMNS_5_SRL_BGS_BGT_UID_Cha_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_BGT_UID_Var_E (Entity) <-> RMNS_5_SRL_BGS_BGT_UID_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_BGT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_BGT_UID_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_BGT_UID_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_BGT_UID_Var_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_BGT_UID_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_BGT_UID_Var_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_BGT_Cha_Var_E (Entity) <-> RMNS_5_SRL_BGS_BGT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_BGT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_BGT_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_bigint_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_bigint_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_BGT_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_bigint_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_BGT_Cha_Var_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_BGT_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_bigint_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_BGT_Cha_Var_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGS_UID_Cha_Var_E (Entity) <-> RMNS_5_SRL_BGS_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGS_UID_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_uuid_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGS_UID_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_uuid_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_UID_Cha_Var_E" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGS_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGS_UID_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_uuid_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGS_UID_Cha_Var_E" (
    serial_1, 
    bigserial_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_INT_BGT_UID_Cha_E (Entity) <-> RMNS_5_SRL_INT_BGT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_INT_BGT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_INT_BGT_UID_Cha_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_char_36_5, 
        e2_serial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_char_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_INT_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_INT_BGT_UID_Cha_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_char_36_5)
REFERENCES "RMNS_5_SRL_INT_BGT_UID_Cha_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_INT_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_INT_BGT_UID_Cha_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_char_36_5)
REFERENCES "RMNS_5_SRL_INT_BGT_UID_Cha_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_INT_BGT_UID_Var_E (Entity) <-> RMNS_5_SRL_INT_BGT_UID_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_INT_BGT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_INT_BGT_UID_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_INT_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_INT_BGT_UID_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_INT_BGT_UID_Var_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_INT_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_INT_BGT_UID_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_INT_BGT_UID_Var_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_INT_BGT_Cha_Var_E (Entity) <-> RMNS_5_SRL_INT_BGT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_INT_BGT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_INT_BGT_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_INT_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_INT_BGT_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_INT_BGT_Cha_Var_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_INT_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_INT_BGT_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_INT_BGT_Cha_Var_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_INT_UID_Cha_Var_E (Entity) <-> RMNS_5_SRL_INT_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_INT_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_INT_UID_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_integer_2, 
        e2_uuid_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_INT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_INT_UID_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_uuid_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_INT_UID_Cha_Var_E" (
    serial_1, 
    integer_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_INT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_INT_UID_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_uuid_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_INT_UID_Cha_Var_E" (
    serial_1, 
    integer_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_SRL_BGT_UID_Cha_Var_E (Entity) <-> RMNS_5_SRL_BGT_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGT_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_SRL_BGT_UID_Cha_Var_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_serial_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_SRL_BGT_UID_Cha_Var_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGT_UID_Cha_Var_E" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_SRL_BGT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_SRL_BGT_UID_Cha_Var_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_SRL_BGT_UID_Cha_Var_E" (
    serial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_BGS_INT_BGT_UID_Cha_E (Entity) <-> RMNS_5_BGS_INT_BGT_UID_Cha_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_INT_BGT_UID_Cha_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_INT_BGT_UID_Cha_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_char_36_5, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_char_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_INT_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js1_RMNS_5_BGS_INT_BGT_UID_Cha_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_char_36_5)
REFERENCES "RMNS_5_BGS_INT_BGT_UID_Cha_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_INT_BGT_UID_Cha_J"
ADD CONSTRAINT "fk_js2_RMNS_5_BGS_INT_BGT_UID_Cha_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_char_36_5)
REFERENCES "RMNS_5_BGS_INT_BGT_UID_Cha_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_BGS_INT_BGT_UID_Var_E (Entity) <-> RMNS_5_BGS_INT_BGT_UID_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_INT_BGT_UID_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_INT_BGT_UID_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_varchar_36_5, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_INT_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_BGS_INT_BGT_UID_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_BGS_INT_BGT_UID_Var_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_INT_BGT_UID_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_BGS_INT_BGT_UID_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_BGS_INT_BGT_UID_Var_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_BGS_INT_BGT_Cha_Var_E (Entity) <-> RMNS_5_BGS_INT_BGT_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_INT_BGT_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_INT_BGT_Cha_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_INT_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_BGS_INT_BGT_Cha_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_BGS_INT_BGT_Cha_Var_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_INT_BGT_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_BGS_INT_BGT_Cha_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_BGS_INT_BGT_Cha_Var_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_BGS_INT_UID_Cha_Var_E (Entity) <-> RMNS_5_BGS_INT_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_INT_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_INT_UID_Cha_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_uuid_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_INT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_BGS_INT_UID_Cha_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_uuid_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_BGS_INT_UID_Cha_Var_E" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_INT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_BGS_INT_UID_Cha_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_uuid_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_BGS_INT_UID_Cha_Var_E" (
    bigserial_1, 
    integer_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_BGS_BGT_UID_Cha_Var_E (Entity) <-> RMNS_5_BGS_BGT_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_BGT_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_BGS_BGT_UID_Cha_Var_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_bigserial_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_BGT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_BGS_BGT_UID_Cha_Var_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_BGS_BGT_UID_Cha_Var_E" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_BGS_BGT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_BGS_BGT_UID_Cha_Var_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_BGS_BGT_UID_Cha_Var_E" (
    bigserial_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_5_INT_BGT_UID_Cha_Var_E (Entity) <-> RMNS_5_INT_BGT_UID_Cha_Var_J (Junction Self)
-- KEY SCHEMA: INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_5_INT_BGT_UID_Cha_Var_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_5_INT_BGT_UID_Cha_Var_J" (
    e1_integer_1 INTEGER NOT NULL,
    e1_bigint_2 BIGINT NOT NULL,
    e1_uuid_3 UUID NOT NULL,
    e1_char_36_4 CHAR(36) NOT NULL,
    e1_varchar_36_5 VARCHAR(36) NOT NULL,
    e2_integer_1 INTEGER NOT NULL,
    e2_bigint_2 BIGINT NOT NULL,
    e2_uuid_3 UUID NOT NULL,
    e2_char_36_4 CHAR(36) NOT NULL,
    e2_varchar_36_5 VARCHAR(36) NOT NULL,
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
        e1_integer_1, 
        e1_bigint_2, 
        e1_uuid_3, 
        e1_char_36_4, 
        e1_varchar_36_5, 
        e2_integer_1, 
        e2_bigint_2, 
        e2_uuid_3, 
        e2_char_36_4, 
        e2_varchar_36_5    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_5_INT_BGT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js1_RMNS_5_INT_BGT_UID_Cha_Var_J"
FOREIGN KEY (
    e1_integer_1, 
    e1_bigint_2, 
    e1_uuid_3, 
    e1_char_36_4, 
    e1_varchar_36_5)
REFERENCES "RMNS_5_INT_BGT_UID_Cha_Var_E" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_5_INT_BGT_UID_Cha_Var_J"
ADD CONSTRAINT "fk_js2_RMNS_5_INT_BGT_UID_Cha_Var_J"
FOREIGN KEY (
    e2_integer_1, 
    e2_bigint_2, 
    e2_uuid_3, 
    e2_char_36_4, 
    e2_varchar_36_5)
REFERENCES "RMNS_5_INT_BGT_UID_Cha_Var_E" (
    integer_1, 
    bigint_2, 
    uuid_3, 
    char_36_4, 
    varchar_36_5);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_6_SRL_BGS_INT_BGT_UD_Ch_E (Entity) <-> RMNS_6_SRL_BGS_INT_BGT_UD_Ch_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_INT_BGT_UD_Ch_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_INT_BGT_UD_Ch_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_bigint_4 BIGINT NOT NULL,
    e1_uuid_5 UUID NOT NULL,
    e1_char_36_6 CHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_bigint_4 BIGINT NOT NULL,
    e2_uuid_5 UUID NOT NULL,
    e2_char_36_6 CHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_bigint_4, 
        e1_uuid_5, 
        e1_char_36_6, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_bigint_4, 
        e2_uuid_5, 
        e2_char_36_6    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_INT_BGT_UD_Ch_J"
ADD CONSTRAINT "fk_js1_RMNS_6_SRL_BGS_INT_BGT_UD_Ch_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_bigint_4, 
    e1_uuid_5, 
    e1_char_36_6)
REFERENCES "RMNS_6_SRL_BGS_INT_BGT_UD_Ch_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    char_36_6);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_INT_BGT_UD_Ch_J"
ADD CONSTRAINT "fk_js2_RMNS_6_SRL_BGS_INT_BGT_UD_Ch_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_bigint_4, 
    e2_uuid_5, 
    e2_char_36_6)
REFERENCES "RMNS_6_SRL_BGS_INT_BGT_UD_Ch_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    char_36_6);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_6_SRL_BGS_INT_BGT_UD_Vr_E (Entity) <-> RMNS_6_SRL_BGS_INT_BGT_UD_Vr_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_INT_BGT_UD_Vr_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_INT_BGT_UD_Vr_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_bigint_4 BIGINT NOT NULL,
    e1_uuid_5 UUID NOT NULL,
    e1_varchar_36_6 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_bigint_4 BIGINT NOT NULL,
    e2_uuid_5 UUID NOT NULL,
    e2_varchar_36_6 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_bigint_4, 
        e1_uuid_5, 
        e1_varchar_36_6, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_bigint_4, 
        e2_uuid_5, 
        e2_varchar_36_6    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_INT_BGT_UD_Vr_J"
ADD CONSTRAINT "fk_js1_RMNS_6_SRL_BGS_INT_BGT_UD_Vr_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_bigint_4, 
    e1_uuid_5, 
    e1_varchar_36_6)
REFERENCES "RMNS_6_SRL_BGS_INT_BGT_UD_Vr_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    varchar_36_6);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_INT_BGT_UD_Vr_J"
ADD CONSTRAINT "fk_js2_RMNS_6_SRL_BGS_INT_BGT_UD_Vr_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_bigint_4, 
    e2_uuid_5, 
    e2_varchar_36_6)
REFERENCES "RMNS_6_SRL_BGS_INT_BGT_UD_Vr_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    varchar_36_6);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_E (Entity) <-> RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_bigint_4 BIGINT NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e1_varchar_36_6 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_bigint_4 BIGINT NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
    e2_varchar_36_6 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_bigint_4, 
        e1_char_36_5, 
        e1_varchar_36_6, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_bigint_4, 
        e2_char_36_5, 
        e2_varchar_36_6    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_J"
ADD CONSTRAINT "fk_js1_RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_bigint_4, 
    e1_char_36_5, 
    e1_varchar_36_6)
REFERENCES "RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    char_36_5, 
    varchar_36_6);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_J"
ADD CONSTRAINT "fk_js2_RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_bigint_4, 
    e2_char_36_5, 
    e2_varchar_36_6)
REFERENCES "RMNS_6_SRL_BGS_INT_BGT_Ch_Vr_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_6_SRL_BGS_INT_UD_Ch_Vr_E (Entity) <-> RMNS_6_SRL_BGS_INT_UD_Ch_Vr_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_INT_UD_Ch_Vr_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_INT_UD_Ch_Vr_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e1_varchar_36_6 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
    e2_varchar_36_6 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_uuid_4, 
        e1_char_36_5, 
        e1_varchar_36_6, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_uuid_4, 
        e2_char_36_5, 
        e2_varchar_36_6    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_INT_UD_Ch_Vr_J"
ADD CONSTRAINT "fk_js1_RMNS_6_SRL_BGS_INT_UD_Ch_Vr_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_uuid_4, 
    e1_char_36_5, 
    e1_varchar_36_6)
REFERENCES "RMNS_6_SRL_BGS_INT_UD_Ch_Vr_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_INT_UD_Ch_Vr_J"
ADD CONSTRAINT "fk_js2_RMNS_6_SRL_BGS_INT_UD_Ch_Vr_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_uuid_4, 
    e2_char_36_5, 
    e2_varchar_36_6)
REFERENCES "RMNS_6_SRL_BGS_INT_UD_Ch_Vr_E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_E (Entity) <-> RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e1_varchar_36_6 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
    e2_varchar_36_6 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_char_36_5, 
        e1_varchar_36_6, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_char_36_5, 
        e2_varchar_36_6    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_J"
ADD CONSTRAINT "fk_js1_RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_char_36_5, 
    e1_varchar_36_6)
REFERENCES "RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_J"
ADD CONSTRAINT "fk_js2_RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_char_36_5, 
    e2_varchar_36_6)
REFERENCES "RMNS_6_SRL_BGS_BGT_UD_Ch_Vr_E" (
    serial_1, 
    bigserial_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_6_SRL_INT_BGT_UD_Ch_Vr_E (Entity) <-> RMNS_6_SRL_INT_BGT_UD_Ch_Vr_J (Junction Self)
-- KEY SCHEMA: SERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_INT_BGT_UD_Ch_Vr_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_6_SRL_INT_BGT_UD_Ch_Vr_J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e1_varchar_36_6 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
    e2_varchar_36_6 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_char_36_5, 
        e1_varchar_36_6, 
        e2_serial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_char_36_5, 
        e2_varchar_36_6    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_INT_BGT_UD_Ch_Vr_J"
ADD CONSTRAINT "fk_js1_RMNS_6_SRL_INT_BGT_UD_Ch_Vr_J"
FOREIGN KEY (
    e1_serial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_char_36_5, 
    e1_varchar_36_6)
REFERENCES "RMNS_6_SRL_INT_BGT_UD_Ch_Vr_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_6_SRL_INT_BGT_UD_Ch_Vr_J"
ADD CONSTRAINT "fk_js2_RMNS_6_SRL_INT_BGT_UD_Ch_Vr_J"
FOREIGN KEY (
    e2_serial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_char_36_5, 
    e2_varchar_36_6)
REFERENCES "RMNS_6_SRL_INT_BGT_UD_Ch_Vr_E" (
    serial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_6_BGS_INT_BGT_UD_Ch_Vr_E (Entity) <-> RMNS_6_BGS_INT_BGT_UD_Ch_Vr_J (Junction Self)
-- KEY SCHEMA: BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_6_BGS_INT_BGT_UD_Ch_Vr_E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_6_BGS_INT_BGT_UD_Ch_Vr_J" (
    e1_bigserial_1 BIGINT NOT NULL,
    e1_integer_2 INTEGER NOT NULL,
    e1_bigint_3 BIGINT NOT NULL,
    e1_uuid_4 UUID NOT NULL,
    e1_char_36_5 CHAR(36) NOT NULL,
    e1_varchar_36_6 VARCHAR(36) NOT NULL,
    e2_bigserial_1 BIGINT NOT NULL,
    e2_integer_2 INTEGER NOT NULL,
    e2_bigint_3 BIGINT NOT NULL,
    e2_uuid_4 UUID NOT NULL,
    e2_char_36_5 CHAR(36) NOT NULL,
    e2_varchar_36_6 VARCHAR(36) NOT NULL,
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
        e1_bigserial_1, 
        e1_integer_2, 
        e1_bigint_3, 
        e1_uuid_4, 
        e1_char_36_5, 
        e1_varchar_36_6, 
        e2_bigserial_1, 
        e2_integer_2, 
        e2_bigint_3, 
        e2_uuid_4, 
        e2_char_36_5, 
        e2_varchar_36_6    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_6_BGS_INT_BGT_UD_Ch_Vr_J"
ADD CONSTRAINT "fk_js1_RMNS_6_BGS_INT_BGT_UD_Ch_Vr_J"
FOREIGN KEY (
    e1_bigserial_1, 
    e1_integer_2, 
    e1_bigint_3, 
    e1_uuid_4, 
    e1_char_36_5, 
    e1_varchar_36_6)
REFERENCES "RMNS_6_BGS_INT_BGT_UD_Ch_Vr_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_6_BGS_INT_BGT_UD_Ch_Vr_J"
ADD CONSTRAINT "fk_js2_RMNS_6_BGS_INT_BGT_UD_Ch_Vr_J"
FOREIGN KEY (
    e2_bigserial_1, 
    e2_integer_2, 
    e2_bigint_3, 
    e2_uuid_4, 
    e2_char_36_5, 
    e2_varchar_36_6)
REFERENCES "RMNS_6_BGS_INT_BGT_UD_Ch_Vr_E" (
    bigserial_1, 
    integer_2, 
    bigint_3, 
    uuid_4, 
    char_36_5, 
    varchar_36_6);


-- ================================================================================
-- RELATIONSHIP [M:N SELF]: RMNS_7_SRL_BGS_INT_BGT_UD_R1184E (Entity) <-> RMNS_7_SRL_BGS_INT_BGT_UD_R1184J (Junction Self)
-- KEY SCHEMA: SERIAL, BIGSERIAL, INTEGER, BIGINT, UUID, CHAR(36), VARCHAR(36)
-- ================================================================================

-- Create Entity Table
CREATE TABLE IF NOT EXISTS "RMNS_7_SRL_BGS_INT_BGT_UD_R1184E" (
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

-- Create Junction Table (M:N Self-Ref)
CREATE TABLE IF NOT EXISTS "RMNS_7_SRL_BGS_INT_BGT_UD_R1184J" (
    e1_serial_1 INTEGER NOT NULL,
    e1_bigserial_2 BIGINT NOT NULL,
    e1_integer_3 INTEGER NOT NULL,
    e1_bigint_4 BIGINT NOT NULL,
    e1_uuid_5 UUID NOT NULL,
    e1_char_36_6 CHAR(36) NOT NULL,
    e1_varchar_36_7 VARCHAR(36) NOT NULL,
    e2_serial_1 INTEGER NOT NULL,
    e2_bigserial_2 BIGINT NOT NULL,
    e2_integer_3 INTEGER NOT NULL,
    e2_bigint_4 BIGINT NOT NULL,
    e2_uuid_5 UUID NOT NULL,
    e2_char_36_6 CHAR(36) NOT NULL,
    e2_varchar_36_7 VARCHAR(36) NOT NULL,
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
        e1_serial_1, 
        e1_bigserial_2, 
        e1_integer_3, 
        e1_bigint_4, 
        e1_uuid_5, 
        e1_char_36_6, 
        e1_varchar_36_7, 
        e2_serial_1, 
        e2_bigserial_2, 
        e2_integer_3, 
        e2_bigint_4, 
        e2_uuid_5, 
        e2_char_36_6, 
        e2_varchar_36_7    )
);

-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE "RMNS_7_SRL_BGS_INT_BGT_UD_R1184J"
ADD CONSTRAINT "fk_js1_RMNS_7_SRL_BGS_INT_BGT_UD_R1184J"
FOREIGN KEY (
    e1_serial_1, 
    e1_bigserial_2, 
    e1_integer_3, 
    e1_bigint_4, 
    e1_uuid_5, 
    e1_char_36_6, 
    e1_varchar_36_7)
REFERENCES "RMNS_7_SRL_BGS_INT_BGT_UD_R1184E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    char_36_6, 
    varchar_36_7);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE "RMNS_7_SRL_BGS_INT_BGT_UD_R1184J"
ADD CONSTRAINT "fk_js2_RMNS_7_SRL_BGS_INT_BGT_UD_R1184J"
FOREIGN KEY (
    e2_serial_1, 
    e2_bigserial_2, 
    e2_integer_3, 
    e2_bigint_4, 
    e2_uuid_5, 
    e2_char_36_6, 
    e2_varchar_36_7)
REFERENCES "RMNS_7_SRL_BGS_INT_BGT_UD_R1184E" (
    serial_1, 
    bigserial_2, 
    integer_3, 
    bigint_4, 
    uuid_5, 
    char_36_6, 
    varchar_36_7);

