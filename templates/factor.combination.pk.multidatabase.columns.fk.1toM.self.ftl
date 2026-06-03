<#-- 
================================================================================
 FACTOR GENERATOR: 1:M SELF-RELATIONSHIP MATRIX (MULTI-DATABASE)
================================================================================
 Template: factor.combination.pk.multidatabase.columns.fk.1toM.self.ftl
 Version:  1.3.0
 Purpose:  Generates hierarchical (1:M self-referential) relationship matrices.
           Uses 'RH1M_' prefix to indicate hierarchy and cardinality.
 
 Configuration (CLI):
   ${PRV_SYS_GEN_TYPE|one|Private Gen list: one, many, copy}
   ${PRV_SYS_GEN_FILENAME|factor.combination.pk.multidatabase.columns.fk.1toM.self.sql|Output filename}
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
  Purpose: Generates a table with a self-referential 1:M foreign key relationship 
           (e.g., Parent/Child hierarchy in one table) using composite PKs.
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
          <#-- Using Relationship Hierarchy 1:M prefix -->
          <#local tableName = shortenIdentifierEnterprise("R1MS_" + typeSuffix, 30)>

-- ================================================================================
-- HIERARCHY [1:M SELF]: ${tableName}
-- KEY SCHEMA: ${combination?join(", ")}
-- ================================================================================

-- Create Self-Referencing Table
${getCreateTableStatement(tableName, currentDb)} (
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
    -- Recursive Parent Reference Columns
<#list combination as type>
    parent_${getColumnName(type, type?index + 1)} ${replaceIdentityColumn(type, currentDb)},
</#list>
<@generateColumn dbType=currentDb alreadyHasIdentity=(identityCount > 0)/><#rt>
<#t>
    PRIMARY KEY (
<#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
    )<#if currentDb == "sqlite">,
    CONSTRAINT ${quoteIdentifier("fk_self_" + tableName, currentDb)}
    FOREIGN KEY (
    <#list combination as type>
        parent_${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    ) REFERENCES ${quoteIdentifier(tableName, currentDb)} (
    <#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    )</#if>
);

<#if currentDb != "sqlite">
-- Establish Self-Referential Foreign Key
ALTER TABLE ${quoteIdentifier(tableName, currentDb)}
ADD CONSTRAINT ${quoteIdentifier("fk_self_" + tableName, currentDb)}
FOREIGN KEY (
<#list combination as type>
    parent_${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
)
REFERENCES ${quoteIdentifier(tableName, currentDb)} (
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