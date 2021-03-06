<!-- ...................................................................... -->
<!-- Markup Language for IETF RFCs (RFC 2629) Document Structure Module ... -->
<!-- file: rfc2629-struct.mod
     
     This is a XML based markup language for IETF RFC documents.
     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:43:53+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/rfc2629-struct.mod"
     
     ...................................................................... -->

<!-- Document Structure

       back, front, middle, rfc

     This module defines the major structural element types and
     their attributes.
-->

<!-- rfc ............................................... -->

<!ENTITY % rfc2629.rfc.element "INCLUDE">
<![%rfc2629.rfc.element;[
<!ENTITY % rfc2629.rfc.content "(%rfc2629.front.qname;,%rfc2629.middle.qname;,%rfc2629.back.qname;?)">
<!ENTITY % rfc2629.rfc.qname "rfc">
<!ENTITY % rfc2629.rfc.tagmin.start "-">
<!ENTITY % rfc2629.rfc.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629.rfc.tagmin "%rfc2629.rfc.tagmin.start; %rfc2629.rfc.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629.rfc.tagmin "">
<!ELEMENT %rfc2629.rfc.qname; %rfc2629.rfc.tagmin; %rfc2629.rfc.content;>
<!-- end of rfc2629.rfc.element -->]]>

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
<!-- end of rfc2629.rfc.attlist -->]]>

<!-- front ............................................. -->

<!ENTITY % rfc2629.front.element "INCLUDE">
<![%rfc2629.front.element;[
<!ENTITY % rfc2629.front.content "(%rfc2629.front-title.class;,%rfc2629.author.qname;+,%rfc2629.date.qname;,%rfc2629.area.qname;*,%rfc2629.workgroup.qname;*,%rfc2629.keyword.qname;*,%rfc2629.abstract.qname;?,%rfc2629.note.qname;*)">
<!ENTITY % rfc2629.front.qname "front">
<!ENTITY % rfc2629.front.tagmin.start "-">
<!ENTITY % rfc2629.front.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629.front.tagmin "%rfc2629.front.tagmin.start; %rfc2629.front.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629.front.tagmin "">
<!ELEMENT %rfc2629.front.qname; %rfc2629.front.tagmin; %rfc2629.front.content;>
<!-- end of rfc2629.front.element -->]]>

<!ENTITY % rfc2629.front.attlist "INCLUDE">
<![%rfc2629.front.attlist;[
<!ATTLIST %rfc2629.front.qname;
	%rfc2629.common.attrib;>
<!-- end of rfc2629.front.attlist -->]]>

<!-- middle ............................................ -->

<!ENTITY % rfc2629.middle.element "INCLUDE">
<![%rfc2629.middle.element;[
<!ENTITY % rfc2629.middle.content "(%rfc2629.section.qname;)+">
<!ENTITY % rfc2629.middle.qname "middle">
<!ENTITY % rfc2629.middle.tagmin.start "-">
<!ENTITY % rfc2629.middle.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629.middle.tagmin "%rfc2629.middle.tagmin.start; %rfc2629.middle.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629.middle.tagmin "">
<!ELEMENT %rfc2629.middle.qname; %rfc2629.middle.tagmin; %rfc2629.middle.content;>
<!-- end of rfc2629.middle.element -->]]>

<!ENTITY % rfc2629.middle.attlist "INCLUDE">
<![%rfc2629.middle.attlist;[
<!ATTLIST %rfc2629.middle.qname;
	%rfc2629.common.attrib;>
<!-- end of rfc2629.middle.attlist -->]]>

<!-- back .............................................. -->

<!ENTITY % rfc2629.back.element "INCLUDE">
<![%rfc2629.back.element;[
<!ENTITY % rfc2629.back.content "(%rfc2629.references.qname;*,%rfc2629.section.qname;*)">
<!ENTITY % rfc2629.back.qname "back">
<!ENTITY % rfc2629.back.tagmin.start "-">
<!ENTITY % rfc2629.back.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629.back.tagmin "%rfc2629.back.tagmin.start; %rfc2629.back.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629.back.tagmin "">
<!ELEMENT %rfc2629.back.qname; %rfc2629.back.tagmin; %rfc2629.back.content;>
<!-- end of rfc2629.back.element -->]]>

<!ENTITY % rfc2629.back.attlist "INCLUDE">
<![%rfc2629.back.attlist;[
<!ATTLIST %rfc2629.back.qname;
	%rfc2629.common.attrib;>
<!-- end of rfc2629.back.attlist -->]]>


<!-- end of rfc2629-struct.mod -->
