<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     
     Meta information module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/metainformation.mod"
  -->

<!ENTITY % rfc2629.title.element "INCLUDE">
<![%rfc2629.title.element;[
<!ENTITY % rfc2629.title.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.title.qname; %rfc2629.title.content;>
]]>
<!ENTITY % rfc2629.title.attlist "INCLUDE">
<![%rfc2629.title.attlist;[
<!ATTLIST %rfc2629.title.qname;
	abbrev	%rfc2629.ATEXT.datatype;	#IMPLIED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.author.element "INCLUDE">
<![%rfc2629.author.element;[
<!ENTITY % rfc2629.author.content "(%rfc2629.organization.qname;,%rfc2629.address.qname;?)">
<!ELEMENT %rfc2629.author.qname; %rfc2629.author.content;>
]]>
<!ENTITY % rfc2629.author.attlist "INCLUDE">
<![%rfc2629.author.attlist;[
<!ATTLIST %rfc2629.author.qname;
	initials	%rfc2629.ATEXT.datatype;	#IMPLIED
	surname	%rfc2629.ATEXT.datatype;	#IMPLIED
	fullname	%rfc2629.ATEXT.datatype;	#IMPLIED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.organization.element "INCLUDE">
<![%rfc2629.organization.element;[
<!ENTITY % rfc2629.organization.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.organization.qname; %rfc2629.organization.content;>
]]>
<!ENTITY % rfc2629.organization.attlist "INCLUDE">
<![%rfc2629.organization.attlist;[
<!ATTLIST %rfc2629.organization.qname;
	abbrev	%rfc2629.ATEXT.datatype;	#IMPLIED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.address.element "INCLUDE">
<![%rfc2629.address.element;[
<!ENTITY % rfc2629.address.content "(%rfc2629.postal.qname;?,%rfc2629.phone.qname;?,%rfc2629.facsimile.qname;?,%rfc2629.email.qname;?,%rfc2629.uri.qname;?)">
<!ELEMENT %rfc2629.address.qname; %rfc2629.address.content;>
]]>
<!ENTITY % rfc2629.address.attlist "INCLUDE">
<![%rfc2629.address.attlist;[
<!ATTLIST %rfc2629.address.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.postal.element "INCLUDE">
<![%rfc2629.postal.element;[
<!ENTITY % rfc2629.postal.content "(%rfc2629.street.qname;+,(%rfc2629.city.qname;|%rfc2629.region.qname;|%rfc2629.code.qname;|%rfc2629.country.qname;)*)">
<!-- at most one of each the city, region, code, and country
     elements may be present -->
<!ELEMENT %rfc2629.postal.qname; %rfc2629.postal.content;>
]]>
<!ENTITY % rfc2629.postal.attlist "INCLUDE">
<![%rfc2629.postal.attlist;[
<!ATTLIST %rfc2629.postal.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.street.element "INCLUDE">
<![%rfc2629.street.element;[
<!ENTITY % rfc2629.street.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.street.qname; %rfc2629.street.content;>
]]>
<!ENTITY % rfc2629.street.attlist "INCLUDE">
<![%rfc2629.street.attlist;[
<!ATTLIST %rfc2629.street.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.city.element "INCLUDE">
<![%rfc2629.city.element;[
<!ENTITY % rfc2629.city.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.city.qname; %rfc2629.city.content;>
]]>
<!ENTITY % rfc2629.city.attlist "INCLUDE">
<![%rfc2629.city.attlist;[
<!ATTLIST %rfc2629.city.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.region.element "INCLUDE">
<![%rfc2629.region.element;[
<!ENTITY % rfc2629.region.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.region.qname; %rfc2629.region.content;>
]]>
<!ENTITY % rfc2629.region.attlist "INCLUDE">
<![%rfc2629.region.attlist;[
<!ATTLIST %rfc2629.region.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.code.element "INCLUDE">
<![%rfc2629.code.element;[
<!ENTITY % rfc2629.code.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.code.qname; %rfc2629.code.content;>
]]>
<!ENTITY % rfc2629.code.attlist "INCLUDE">
<![%rfc2629.code.attlist;[
<!ATTLIST %rfc2629.code.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.country.element "INCLUDE">
<![%rfc2629.country.element;[
<!ENTITY % rfc2629.country.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.country.qname; %rfc2629.country.content;>
]]>
<!ENTITY % rfc2629.country.attlist "INCLUDE">
<![%rfc2629.country.attlist;[
<!ATTLIST %rfc2629.country.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.phone.element "INCLUDE">
<![%rfc2629.phone.element;[
<!ENTITY % rfc2629.phone.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.phone.qname; %rfc2629.phone.content;>
]]>
<!ENTITY % rfc2629.phone.attlist "INCLUDE">
<![%rfc2629.phone.attlist;[
<!ATTLIST %rfc2629.phone.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.facsimile.element "INCLUDE">
<![%rfc2629.facsimile.element;[
<!ENTITY % rfc2629.facsimile.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.facsimile.qname; %rfc2629.facsimile.content;>
]]>
<!ENTITY % rfc2629.facsimile.attlist "INCLUDE">
<![%rfc2629.facsimile.attlist;[
<!ATTLIST %rfc2629.facsimile.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.email.element "INCLUDE">
<![%rfc2629.email.element;[
<!ENTITY % rfc2629.email.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.email.qname; %rfc2629.email.content;>
]]>
<!ENTITY % rfc2629.email.attlist "INCLUDE">
<![%rfc2629.email.attlist;[
<!ATTLIST %rfc2629.email.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.uri.element "INCLUDE">
<![%rfc2629.uri.element;[
<!ENTITY % rfc2629.uri.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.uri.qname; %rfc2629.uri.content;>
]]>
<!ENTITY % rfc2629.uri.attlist "INCLUDE">
<![%rfc2629.uri.attlist;[
<!ATTLIST %rfc2629.uri.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.date.element "INCLUDE">
<![%rfc2629.date.element;[
<!ENTITY % rfc2629.date.content "EMPTY">
<!ELEMENT %rfc2629.date.qname; %rfc2629.date.content;>
]]>
<!ENTITY % rfc2629.date.attlist "INCLUDE">
<![%rfc2629.date.attlist;[
<!ATTLIST %rfc2629.date.qname;
	day	%rfc2629.DAY.datatype;	#IMPLIED
	month	%rfc2629.MONTH.datatype;	#REQUIRED
	year	%rfc2629.YEAR.datatype;	#REQUIRED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.area.element "INCLUDE">
<![%rfc2629.area.element;[
<!ENTITY % rfc2629.area.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.area.qname; %rfc2629.area.content;>
]]>
<!ENTITY % rfc2629.area.attlist "INCLUDE">
<![%rfc2629.area.attlist;[
<!ATTLIST %rfc2629.area.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.workgroup.element "INCLUDE">
<![%rfc2629.workgroup.element;[
<!ENTITY % rfc2629.workgroup.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.workgroup.qname; %rfc2629.workgroup.content;>
]]>
<!ENTITY % rfc2629.workgroup.attlist "INCLUDE">
<![%rfc2629.workgroup.attlist;[
<!ATTLIST %rfc2629.workgroup.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.keyword.element "INCLUDE">
<![%rfc2629.keyword.element;[
<!ENTITY % rfc2629.keyword.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629.keyword.qname; %rfc2629.keyword.content;>
]]>
<!ENTITY % rfc2629.keyword.attlist "INCLUDE">
<![%rfc2629.keyword.attlist;[
<!ATTLIST %rfc2629.keyword.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.seriesInfo.element "INCLUDE">
<![%rfc2629.seriesInfo.element;[
<!ENTITY % rfc2629.seriesInfo.content "EMPTY">
<!ELEMENT %rfc2629.seriesInfo.qname; %rfc2629.seriesInfo.content;>
]]>
<!ENTITY % rfc2629.seriesInfo.attlist "INCLUDE">
<![%rfc2629.seriesInfo.attlist;[
<!ATTLIST %rfc2629.seriesInfo.qname;
	name	%rfc2629.ATEXT.datatype;	#REQUIRED
	value	%rfc2629.ATEXT.datatype;	#REQUIRED
	%rfc2629.common.attrib;>
]]>

<!-- end of metainformation.mod -->
