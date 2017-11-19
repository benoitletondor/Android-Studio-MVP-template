<?xml version="1.0"?>
<globals>
    <#assign relativePackage='.view.impl'>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="relativePackage" type="string" value="${relativePackage}"/>
    <global id="packageName" type="string" value="${packageName}${relativePackage}"/>
    <#include "../common/common_globals.xml.ftl" />
    
</globals>
