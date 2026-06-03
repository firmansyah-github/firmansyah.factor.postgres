<#-- 
================================================================================
 FACTOR GENERATOR: M:N RELATIONSHIP MATRIX (MULTI-DATABASE)
================================================================================
 Template: factor.combination.pk.multidatabase.columns.fk.MtoM.ftl
 Version:  1.3.0
 Purpose:  Generates M:N relationship schemas (Entity1 <-> Junction <-> Entity2).
           Uses 'REN1_', 'REN2_', 'RJMN_' prefixes for schema coexistence.
 
 Configuration (CLI):
   ${PRV_SYS_GEN_TYPE|one|Private Gen list: one, many, copy}
   ${PRV_SYS_GEN_FILENAME|factor.combination.pk.multidatabase.columns.fk.MtoM.sql|Output filename}
   ${PRV_SYS_IS_REPLACE|true|Overwrite existing file: true, false}
 
 Parameters:
   ${PUB_DB_TYPE|postgresql|Target RDBMS: postgresql, mysql, mariadb, sqlite, oracle, sqlserver, db2, h2}
================================================================================
-->
<#t>
<#include "factor.combination.common.ftl">
<#t>
<#-- 
  Macro: generateTable
  Purpose: Orchestrates the generation of M:N relationship table sets.
-->
<#macro generateTable dataTypesMap dbType="">
  <#list dataTypesMap?keys as currentDb>
    <#if !dbType?has_content || currentDb == dbType>
      <#local dataTypes = dataTypesMap[currentDb]>
      <#list 1..dataTypes?size as combinationLength>
        <#local combinations = getCombinations(dataTypes, combinationLength, currentDb)>
        <#list combinations as combination>
          <#local abbrevs = []>
          <#list combination as type>
            <#local abbrevs = abbrevs + [abbreviateType(type)]>
          </#list>
          <#local typeSuffix = "${combinationLength}_${abbrevs?join('_')}">
          <#-- Using Relationship Entity (1 or 2) and Junction suffixes -->
          <#local e1Name = shortenIdentifierEnterprise("RMN_" + typeSuffix + "_E1", 30)>
          <#local e2Name = shortenIdentifierEnterprise("RMN_" + typeSuffix + "_E2", 30)>
          <#local jName  = shortenIdentifierEnterprise("RMN_" + typeSuffix + "_J", 30)>

-- ================================================================================
-- RELATIONSHIP [M:N]: ${e1Name} <-> ${jName} <-> ${e2Name}
-- KEY SCHEMA: ${combination?join(", ")}
-- ================================================================================

-- Create Entity Table 1
${getCreateTableStatement(e1Name, currentDb)} (
          <#local identityCount1 = 0>
          <#list combination as type>
            <#local columnDef1 = type>
            <#if isIdentityColumn(type, currentDb)>
              <#local identityUsed1 = (identityCount1 > 0)>
              <#-- SQLite specific: cannot have column-level identity/PK if table-level PK is used -->
              <#if currentDb == "sqlite" || identityUsed1>
                <#local columnDef1 = replaceIdentityColumn(type, currentDb)>
              <#else>
                <#local identityCount1 = identityCount1 + 1>
              </#if>
            </#if>
    ${getColumnName(type, type?index + 1)} ${columnDef1} NOT NULL,
          </#list>
<@generateColumn dbType=currentDb alreadyHasIdentity=(identityCount1 > 0)/><#rt>
<#t>
    PRIMARY KEY (
<#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
    )
);

-- Create Entity Table 2
${getCreateTableStatement(e2Name, currentDb)} (
          <#local identityCount2 = 0>
          <#list combination as type>
            <#local columnDef2 = type>
            <#if isIdentityColumn(type, currentDb)>
              <#local identityUsed2 = (identityCount2 > 0)>
              <#-- SQLite specific: cannot have column-level identity/PK if table-level PK is used -->
              <#if currentDb == "sqlite" || identityUsed2>
                <#local columnDef2 = replaceIdentityColumn(type, currentDb)>
              <#else>
                <#local identityCount2 = identityCount2 + 1>
              </#if>
            </#if>
    ${getColumnName(type, type?index + 1)} ${columnDef2} NOT NULL,
          </#list>
<@generateColumn dbType=currentDb alreadyHasIdentity=(identityCount2 > 0)/><#rt>
<#t>
    PRIMARY KEY (
<#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
    )
);

-- Create Junction Table
${getCreateTableStatement(jName, currentDb)} (
<#list combination as type>
    e1_${getColumnName(type, type?index + 1)} ${replaceIdentityColumn(type, currentDb)} NOT NULL,
</#list>
<#list combination as type>
    e2_${getColumnName(type, type?index + 1)} ${replaceIdentityColumn(type, currentDb)} NOT NULL,
</#list>
<@generateColumn dbType=currentDb alreadyHasIdentity=false/><#rt>
<#t>
    PRIMARY KEY (
<#list combination as type>
        e1_${getColumnName(type, type?index + 1)}, 
</#list>
<#list combination as type>
        e2_${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
    )<#if currentDb == "sqlite">,
    CONSTRAINT ${quoteIdentifier("fk_j1_" + jName, currentDb)}
    FOREIGN KEY (
    <#list combination as type>
        e1_${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    ) REFERENCES ${quoteIdentifier(e1Name, currentDb)} (
    <#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    ),
    CONSTRAINT ${quoteIdentifier("fk_j2_" + jName, currentDb)}
    FOREIGN KEY (
    <#list combination as type>
        e2_${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    ) REFERENCES ${quoteIdentifier(e2Name, currentDb)} (
    <#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    )</#if>
);

<#if currentDb != "sqlite">
-- Establish Foreign Key to Entity 1
ALTER TABLE ${quoteIdentifier(jName, currentDb)}
ADD CONSTRAINT ${quoteIdentifier("fk_j1_" + jName, currentDb)}
FOREIGN KEY (
<#list combination as type>
    e1_${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
)
REFERENCES ${quoteIdentifier(e1Name, currentDb)} (
<#list combination as type>
    ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
);

-- Establish Foreign Key to Entity 2
ALTER TABLE ${quoteIdentifier(jName, currentDb)}
ADD CONSTRAINT ${quoteIdentifier("fk_j2_" + jName, currentDb)}
FOREIGN KEY (
<#list combination as type>
    e2_${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
)
REFERENCES ${quoteIdentifier(e2Name, currentDb)} (
<#list combination as type>
    ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
);
</#if>

        </#list>
      </#list>
    </#if>
  </#list>
</#macro>

<#-- Execution Entry Point -->
<@generateTable dataTypesMap=dataTypesMap dbType=PUB_DB_TYPE/>