<#-- 
================================================================================
 FACTOR GENERATOR: M:N SELF-RELATIONSHIP MATRIX (MULTI-DATABASE)
================================================================================
 Template: factor.combination.pk.multidatabase.columns.fk.MtoM.self.ftl
 Version:  1.3.0
 Purpose:  Generates self-referential M:N relationship schemas (Entity <-> Junction).
           Uses 'REMS_' and 'RJMS_' prefixes for schema coexistence.
 
 Configuration (CLI):
   ${PRV_SYS_GEN_TYPE|one|Private Gen list: one, many, copy}
   ${PRV_SYS_GEN_FILENAME|factor.combination.pk.multidatabase.columns.fk.MtoM.self.sql|Output filename}
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
  Purpose: Orchestrates the generation of M:N self-referential relationship sets.
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
          <#-- Using Relationship Entity M:N Self and Junction M:N Self prefixes -->
          <#local eName = shortenIdentifierEnterprise("RMNS_" + typeSuffix + "_E", 30)>
          <#local jName = shortenIdentifierEnterprise("RMNS_" + typeSuffix + "_J", 30)>

-- ================================================================================
-- RELATIONSHIP [M:N SELF]: ${eName} (Entity) <-> ${jName} (Junction Self)
-- KEY SCHEMA: ${combination?join(", ")}
-- ================================================================================

-- Create Entity Table
${getCreateTableStatement(eName, currentDb)} (
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

-- Create Junction Table (M:N Self-Ref)
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
    CONSTRAINT ${quoteIdentifier("fk_js1_" + jName, currentDb)}
    FOREIGN KEY (
    <#list combination as type>
        e1_${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    ) REFERENCES ${quoteIdentifier(eName, currentDb)} (
    <#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    ),
    CONSTRAINT ${quoteIdentifier("fk_js2_" + jName, currentDb)}
    FOREIGN KEY (
    <#list combination as type>
        e2_${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    ) REFERENCES ${quoteIdentifier(eName, currentDb)} (
    <#list combination as type>
        ${getColumnName(type, type?index + 1)}<#sep>, 
    </#list>
    )</#if>
);

<#if currentDb != "sqlite">
-- Establish Foreign Key 1 (Reference to Self)
ALTER TABLE ${quoteIdentifier(jName, currentDb)}
ADD CONSTRAINT ${quoteIdentifier("fk_js1_" + jName, currentDb)}
FOREIGN KEY (
<#list combination as type>
    e1_${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
)
REFERENCES ${quoteIdentifier(eName, currentDb)} (
<#list combination as type>
    ${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
);

-- Establish Foreign Key 2 (Reference to Self)
ALTER TABLE ${quoteIdentifier(jName, currentDb)}
ADD CONSTRAINT ${quoteIdentifier("fk_js2_" + jName, currentDb)}
FOREIGN KEY (
<#list combination as type>
    e2_${getColumnName(type, type?index + 1)}<#sep>, 
</#list>
)
REFERENCES ${quoteIdentifier(eName, currentDb)} (
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