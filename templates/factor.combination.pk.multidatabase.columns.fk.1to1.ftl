<#-- 
================================================================================
 FACTOR GENERATOR: 1:1 RELATIONSHIP MATRIX (MULTI-DATABASE)
================================================================================
 Template: factor.combination.pk.multidatabase.columns.fk.1to1.ftl
 Version:  1.3.0
 Purpose:  Generates parent-child table pairs with 1:1 relationships.
           Uses 'R11P_' and 'R11C_' prefixes for schema coexistence.
 
 Configuration (CLI):
   ${PRV_SYS_GEN_TYPE|one|Private Gen list: one, many, copy}
   ${PRV_SYS_GEN_FILENAME|factor.combination.pk.multidatabase.columns.fk.1to1.sql|Output filename}
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
  Purpose: Orchestrates the generation of parent-child pairs.
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
          <#-- Using Relationship 1:1 Parent / Child prefixes -->
          <#local parentName = shortenIdentifierEnterprise("R11_" + typeSuffix + "_P", 30)>
          <#local childName  = shortenIdentifierEnterprise("R11_" + typeSuffix + "_C", 30)>
         
-- ================================================================================
-- RELATIONSHIP [1:1]: ${parentName} (Parent) <-> ${childName} (Child)
-- KEY SCHEMA: ${combination?join(", ")}
-- ================================================================================

-- Create Parent Table
${getCreateTableStatement(parentName, currentDb)} (
          <#local identityCount = 0>
          <#list combination as type>
            <#local columnDef = type>
            <#if isIdentityColumn(type, currentDb)>
              <#local identityUsed = (identityCount > 0)>
              <#-- SQLite specific: cannot have column-level identity/PK if table-level PK is used -->
              <#if currentDb == "sqlite" || identityUsed>
                <#local columnDef = replaceIdentityColumn(type, currentDb)>
              <#else>
                <#local identityCount = identityCount + 1>
              </#if>
            </#if>
    ${getColumnName(type, type?index + 1)} ${columnDef} NOT NULL,
          </#list>
<@generateColumn dbType=currentDb alreadyHasIdentity=(identityCount > 0)/><#rt>
<#t>
    PRIMARY KEY (
<#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
    )
);

-- Create Child Table (1:1 with Parent)
${getCreateTableStatement(childName, currentDb)} (
<#list combination as type>
    ${getColumnName(type, type?index + 1)} ${replaceIdentityColumn(type, currentDb)} NOT NULL,
</#list>
<@generateColumn dbType=currentDb alreadyHasIdentity=false/><#rt>
<#t>
    PRIMARY KEY (
<#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
    )<#if currentDb == "sqlite">,
    CONSTRAINT ${quoteIdentifier("fk_" + childName, currentDb)}
    FOREIGN KEY (
    <#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    ) REFERENCES ${quoteIdentifier(parentName, currentDb)} (
    <#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    )</#if>
);

<#if currentDb != "sqlite">
-- Establish 1:1 Foreign Key Constraint
ALTER TABLE ${quoteIdentifier(childName, currentDb)}
ADD CONSTRAINT ${quoteIdentifier("fk_" + childName, currentDb)}
FOREIGN KEY (
<#list combination as type>
    ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
)
REFERENCES ${quoteIdentifier(parentName, currentDb)} (
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