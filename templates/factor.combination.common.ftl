<#-- 
================================================================================
 TYPE ABBREVIATION FUNCTION
================================================================================
 Converts database types to consistent 3-character abbreviations for table naming
-->
<#function abbreviateType type>
    <#-- Convert to string and sanitize input -->
    <#local typeStr = type?string?trim?upper_case>
    
    <#-- Type abbreviation mapping -->
    <#local typeMap = {
        "SERIAL": "SRL",
        "BIGSERIAL": "BGS",
        "INTEGER": "INT",
        "BIGINT": "BGT",
        "UUID": "UID",
        "NUMBER": "NUM",
        "SMALLINT": "SML",
        "TEXT": "TXT"
    }>
    
    <#-- Return mapped value or generated abbreviation -->
    <#if typeMap[typeStr]??>
        <#return typeMap[typeStr]>
    <#else>
        <#-- Generate safe abbreviation from type name -->
        <#local firstChar = typeStr[0]?upper_case!?replace("[^A-Z]", "X")>
        <#local restChars = typeStr[1..]?lower_case?replace("[^a-z0-9]", "")>
        <#local abbrev = firstChar + (restChars[0..1]![]?join(""))>
        <#return abbrev?right_pad(3, "X")?substring(0, 3)>
    </#if>
</#function>

<#-- 
================================================================================
 IDENTIFIER QUOTING FUNCTION
================================================================================
 Handles database-specific identifier quoting (tables, columns)
-->
<#function quoteIdentifier identifier dbType="postgresql">
    <#return "\"${identifier}\"">
</#function>

<#-- 
================================================================================
 IDEMPOTENT STATEMENT HELPER
================================================================================
 Standardizes CREATE TABLE statements for databases supporting IF NOT EXISTS
-->
<#function getCreateTableStatement tableName currentDb="postgresql">
    <#local quotedTable = quoteIdentifier(tableName, currentDb)>
    <#return "CREATE TABLE IF NOT EXISTS ${quotedTable}">
</#function>

<#-- 
================================================================================
 IDENTIFIER SHORTENING FUNCTION (CLASSIC)
================================================================================
 Ensures identifiers don't exceed database length limits while preserving uniqueness
-->
<#function shortenIdentifier name maxLength>
    <#local maxBaseLength = maxLength - 5> <#-- Reserve space for underscore + hash -->
    <#local letters = name?replace("[^A-Za-z]", "", "r")?right_pad(2, "X")?substring(0, 2)?lower_case>
    <#local numbers = name?replace("[^0-9]", "", "r")>
    <#local hash = (letters + numbers + name?length + "0000")?substring(0,4)>
    <#local minLen = (name?length < maxBaseLength)?then(name?length, maxBaseLength)>
    <#local baseName = name?substring(0, minLen)>
    <#return "${baseName}_${hash}">
</#function>

<#-- 
================================================================================
 ENTERPRISE IDENTIFIER ABBREVIATION & SHORTENING SUITE
================================================================================
-->
<#function abbreviateWords name>
    <#if name?length <= 1><#return name></#if>
    <#local segments = name?split("_")>
    <#local abbrevSegments = []>
    <#list segments as segment>
        <#if segment?length gt 2>
            <#local firstChar = segment[0]>
            <#local rest = segment?substring(1)>
            <#local abbrevSegments = abbrevSegments + [firstChar + rest?replace("[AEIOUaeiou]", "", "r")]>
        <#else>
            <#local abbrevSegments = abbrevSegments + [segment]>
        </#if>
    </#list>
    <#return abbrevSegments?join("_")>
</#function>

<#function generateDeterministicSuffix name>
    <#local strLen = name?length>
    <#local abbrName = abbreviateWords(name)>
    <#local abbrLen = abbrName?length>
    <#local entropy = (strLen * 13 + abbrLen * 17 + (name?index_of("_") + 1) * 31) % 10000>
    <#local chars = name?replace("[^A-Za-z]", "", "r")?upper_case>
    <#local firstChar = (chars?length gt 0)?then(chars[0], "X")>
    <#local lastChar = (chars?length gt 1)?then(chars[chars?length - 1], "Y")>
    <#return "${firstChar}${entropy?c?left_pad(4, '0')}${lastChar}">
</#function>

<#function shortenIdentifierEnterprise name maxLength>
    <#if name?length <= maxLength>
        <#return name>
    </#if>
    <#local abbreviated = abbreviateWords(name)>
    <#local cleaned = abbreviated?replace("_+", "_", "r")?remove_beginning("_")?remove_ending("_")>
    <#if cleaned?length <= maxLength>
        <#return cleaned>
    </#if>
    <#local suffixLength = 5>
    <#local maxBaseLength = maxLength - suffixLength>
    <#local minCleanLen = (cleaned?length < maxBaseLength)?then(cleaned?length, maxBaseLength)>
    <#local baseName = cleaned?substring(0, minCleanLen)?remove_ending("_")>
    <#local hashSuffix = generateDeterministicSuffix(name)>
    <#return "${baseName}_${hashSuffix}">
</#function>

<#-- 
================================================================================
 COMBINATION GENERATION FUNCTION
================================================================================
-->
<#function getCombinations list, size, db="postgresql">
    <#local result = []>
    <#if size == 1>
        <#local candidates = []>
        <#list list as x>
            <#local candidates = candidates + [[x]]>
        </#list>
        <#return candidates>
    </#if>
    <#list 0..(list?size - size) as i>
        <#local current = list[i]>
        <#local remaining = list[(i+1)..]>
        <#local subCombinations = getCombinations(remaining, size-1, db)>
        <#list subCombinations as subCombination>
            <#local newCombination = [current] + subCombination>
            <#local result = result + [newCombination]>
        </#list>
    </#list>
    <#return result>
</#function>

<#-- 
================================================================================
 IDENTITY COLUMN DETECTION FUNCTION
================================================================================
-->
<#function isIdentityColumn type, db="postgresql">
    <#return type?matches(".*SERIAL.*")>
</#function>

<#--
================================================================================
replaceIdentityColumn FUNCTION
================================================================================
-->
<#function replaceIdentityColumn type, db="postgresql">
    <#return type?replace("BIGSERIAL", "BIGINT")?replace("SMALLSERIAL", "SMALLINT")?replace("SERIAL", "INTEGER")?trim>
</#function>

<#-- 
================================================================================
 COLUMN NAME GENERATION FUNCTION
================================================================================
-->
<#function getColumnName type index>
    <#local sanitized = type?lower_case?replace("[^a-z0-9]", "_", "r")?replace("_+", "_", "r")?remove_ending("_")>
    <#if sanitized?length == 0><#local sanitized = "col"></#if>
    <#return "${sanitized}_${index}">
</#function>

<#-- 
================================================================================
 DATABASE TYPE DEFINITIONS
================================================================================
-->
<#assign dataTypesMap = {
    "postgresql": ["SERIAL", "BIGSERIAL", "INTEGER", "BIGINT", "UUID", "CHAR(36)", "VARCHAR(36)"]
} />

<#assign dataTypesMapAllColumn = {
    "postgresql": [
        {"name": "serial_col", "type": "SERIAL"},
        {"name": "bigserial_col", "type": "BIGSERIAL"},
        {"name": "smallserial_col", "type": "SMALLSERIAL"},
        {"name": "integer_col", "type": "INTEGER"},
        {"name": "bigint_col", "type": "BIGINT"},
        {"name": "smallint_col", "type": "SMALLINT"},
        {"name": "numeric_col", "type": "NUMERIC(10,2)"},
        {"name": "decimal_col", "type": "DECIMAL(10,2)"},
        {"name": "real_col", "type": "REAL"},
        {"name": "double_col", "type": "DOUBLE PRECISION"},
        {"name": "money_col", "type": "MONEY"},
        {"name": "varchar_col", "type": "VARCHAR(255)"},
        {"name": "char_col", "type": "CHAR(10)"},
        {"name": "text_col", "type": "TEXT"},
        {"name": "bytea_col", "type": "BYTEA"},
        {"name": "boolean_col", "type": "BOOLEAN"},
        {"name": "date_col", "type": "DATE"},
        {"name": "time_col", "type": "TIME"},
        {"name": "timetz_col", "type": "TIME WITH TIME ZONE"},
        {"name": "timestamp_col", "type": "TIMESTAMP"},
        {"name": "timestamptz_col", "type": "TIMESTAMP WITH TIME ZONE"},
        {"name": "interval_col", "type": "INTERVAL"},
        {"name": "json_col", "type": "JSON"},
        {"name": "jsonb_col", "type": "JSONB"},
        {"name": "uuid_col", "type": "UUID"},
        {"name": "xml_col", "type": "XML"},
        {"name": "inet_col", "type": "INET"},
        {"name": "cidr_col", "type": "CIDR"},
        {"name": "macaddr_col", "type": "MACADDR"},
        {"name": "bit_col", "type": "BIT(8)"},
        {"name": "varbit_col", "type": "BIT VARYING(64)"},
        {"name": "int_array_col", "type": "INTEGER[]"},
        {"name": "text_array_col", "type": "TEXT[]"},
        {"name": "point_col", "type": "POINT"},
        {"name": "line_col", "type": "LINE"},
        {"name": "lseg_col", "type": "LSEG"},
        {"name": "box_col", "type": "BOX"},
        {"name": "path_col", "type": "PATH"},
        {"name": "polygon_col", "type": "POLYGON"},
        {"name": "circle_col", "type": "CIRCLE"}
    ]
} />

<#macro generateColumn dbType indent="    " alreadyHasIdentity=false>
  <#if dataTypesMapAllColumn[dbType]??>
    <#local identityUsed = alreadyHasIdentity>
    <#list dataTypesMapAllColumn[dbType] as column>
      <#local colType = column.type>
      <#if isIdentityColumn(colType, dbType)>
        <#if identityUsed>
          <#local colType = replaceIdentityColumn(colType, dbType)>
        <#else>
          <#local identityUsed = true>
        </#if>
      </#if>
    ${indent}${column.name} ${colType},<#lt>
    </#list>
  <#else>
    <#stop "Unsupported database type: ${dbType}">
  </#if>
</#macro>