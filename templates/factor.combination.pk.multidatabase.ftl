<#-- 
================================================================================
 FACTOR GENERATOR: PK-ONLY MATRIX (MULTI-DATABASE)
================================================================================
 Template: factor.combination.pk.multidatabase.ftl
 Version:  1.3.0
 Purpose:  Generates minimalist SQL schema matrices focusing exclusively on 
           primary key data type combinations. 
           Uses 'MPK_' prefix to allow coexistence in a single schema.
 
 Configuration (CLI):
   ${PRV_SYS_GEN_TYPE|one|Private Gen list: one, many, copy}
   ${PRV_SYS_GEN_FILENAME|factor.combination.pk.multidatabase.sql|Output filename}
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
  Purpose: Orchestrates the generation of minimalist tables with composite PKs.
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
          <#-- Construct descriptive base name with Matrix PK Only prefix -->
          <#local baseName = "MPK_${combinationLength}_${abbrevs?join('_')}">
          <#local tableName = shortenIdentifierEnterprise(baseName, 30)>

-- ================================================================================
-- MATRIX [PK ONLY]: ${tableName}
-- SCHEMA: Composite PK (${combination?join(", ")})
-- ================================================================================

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
<#t>
    PRIMARY KEY (
<#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
    )
);

        </#list>
      </#list>
    </#if>
  </#list>
</#macro>

<#-- Execution Entry Point -->
<@generateTable dataTypesMap=dataTypesMap dbType=PUB_DB_TYPE/>