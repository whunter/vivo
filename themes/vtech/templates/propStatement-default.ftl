<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- VIVO-specific default object property statement template. 
    
     This template must be self-contained and not rely on other variables set for the individual page, because it
     is also used to generate the property statement during a deletion.  
-->

<#import "lib-meta-tags.ftl" as lmt>

<@showStatement statement />

<#macro showStatement statement>
    <#-- The query retrieves a type only for Persons. Post-processing will remove all but one. --> 
  	<#if statement.subclass??>
		<span>${statement.label!statement.localName!}</span>
	<#else>
    	<span>${statement.label!statement.localName!}</span>&nbsp; ${statement.title!statement.type!}
	</#if>
	<@lmt.addCitationMetaTag uri=(statement.specificObjectType) content=(statement.label!) />
</#macro>
