<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     
     Document Structure module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/struct.mod"
  -->

<!ENTITY % rfc2629.rfc.element "INCLUDE">
<![%rfc2629.rfc.element;[
<!ENTITY % rfc2629.rfc.content "(%rfc2629.rfc-header.content;,%rfc2629.middle.qname;,%rfc2629.back.qname;?)">
<!ELEMENT %rfc2629.rfc.qname; %rfc2629.rfc.content;>
]]>
<!ENTITY % rfc2629.rfc.attlist "INCLUDE">
<![%rfc2629.rfc.attlist;[
<!ATTLIST %rfc2629.rfc.qname;
	number	%rfc2629.NUMBER.datatype;	#IMPLIED
	obsoletes	%rfc2629.NUMBERS.datatype;	""
	updates	%rfc2629.NUMBERS.datatype;	""
	category	(std|bcp|info|exp|historic)	"info"
	seriesNo	%rfc2629.NUMBER.datatype;	#IMPLIED
	ipr	(full2026|noDerivativeWorks2026|none)	#IMPLIED
	docName	%rfc2629.ATEXT.datatype;	#IMPLIED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.front.element "INCLUDE">
<![%rfc2629.front.element;[
<!ENTITY % rfc2629.front.content "(%rfc2629.front-title.content;,%rfc2629.author.qname;+,%rfc2629.date.qname;,%rfc2629.area.qname;*,%rfc2629.workgroup.qname;*,%rfc2629.keyword.qname;*,%rfc2629.abstract.qname;?,%rfc2629.note.qname;*)">
<!ELEMENT %rfc2629.front.qname; %rfc2629.front.content;>
]]>
<!ENTITY % rfc2629.front.attlist "INCLUDE">
<![%rfc2629.front.attlist;[
<!ATTLIST %rfc2629.front.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.middle.element "INCLUDE">
<![%rfc2629.middle.element;[
<!ENTITY % rfc2629.middle.content "(%rfc2629.section.qname;)+">
<!ELEMENT %rfc2629.middle.qname; %rfc2629.middle.content;>
]]>
<!ENTITY % rfc2629.middle.attlist "INCLUDE">
<![%rfc2629.middle.attlist;[
<!ATTLIST %rfc2629.middle.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.back.element "INCLUDE">
<![%rfc2629.back.element;[
<!ENTITY % rfc2629.back.content "(%rfc2629.references.qname;*,%rfc2629.section.qname;*)">
<!ELEMENT %rfc2629.back.qname; %rfc2629.back.content;>
]]>
<!ENTITY % rfc2629.back.attlist "INCLUDE">
<![%rfc2629.back.attlist;[
<!ATTLIST %rfc2629.back.qname;
	%rfc2629.common.attrib;>
]]>

<!-- end of struct.mod -->
