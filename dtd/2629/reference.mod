<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     
     Reference and hyperlink module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/reference.mod"
  -->

<!ENTITY % rfc2629.references.element "INCLUDE">
<![%rfc2629.references.element;[
<!ENTITY % rfc2629.references.content "(%rfc2629.reference.qname;+)">
<!ELEMENT %rfc2629.references.qname; %rfc2629.references.content;>
]]>
<!ENTITY % rfc2629.references.attlist "INCLUDE">
<![%rfc2629.references.attlist;[
<!ATTLIST %rfc2629.references.qname;
	abbrev	%rfc2629.ATEXT.datatype;	"References"
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.reference.element "INCLUDE">
<![%rfc2629.reference.element;[
<!ENTITY % rfc2629.reference.content "(%rfc2629.front.qname;,%rfc2629.seriesInfo.qname;*)">
<!ELEMENT %rfc2629.reference.qname; %rfc2629.reference.content;>
]]>
<!ENTITY % rfc2629.reference.attlist "INCLUDE">
<![%rfc2629.reference.attlist;[
<!ATTLIST %rfc2629.reference.qname;
	%rfc2629.anchor.attrib;
	target	%URI.datatype;	#IMPLIED
	%rfc2629.common.attrib;>
]]>

<!-- Link -->
<!ENTITY % rfc2629.xref.element "INCLUDE">
<![%rfc2629.xref.element;[
<!ENTITY % rfc2629.xref.content "(%rfc2629.CTEXT.datatype;)">
<!ELEMENT %rfc2629.xref.qname; %rfc2629.xref.content;>
]]>
<!ENTITY % rfc2629.xref.attlist "INCLUDE">
<![%rfc2629.xref.attlist;[
<!ATTLIST %rfc2629.xref.qname;
	target	IDREF	#REQUIRED
	pageno	(true|false)	"false"
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.eref.element "INCLUDE">
<![%rfc2629.eref.element;[
<!ENTITY % rfc2629.eref.content "(%rfc2629.CTEXT.datatype;)">
<!ELEMENT %rfc2629.eref.qname; %rfc2629.eref.content;>
]]>
<!ENTITY % rfc2629.eref.attlist "INCLUDE">
<![%rfc2629.eref.attlist;[
<!ATTLIST %rfc2629.eref.qname;
	target	%URI.datatype;	#REQUIRED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.iref.element "INCLUDE">
<![%rfc2629.iref.element;[
<!ENTITY % rfc2629.iref.content "EMPTY">
<!ELEMENT %rfc2629.iref.qname; %rfc2629.iref.content;>
]]>
<!ENTITY % rfc2629.iref.attlist "INCLUDE">
<![%rfc2629.iref.attlist;[
<!ATTLIST %rfc2629.iref.qname;
	item	%rfc2629.ATEXT.datatype;	#REQUIRED
	subitem	%rfc2629.ATEXT.datatype;	""
	primary	(true|false)	"false"
	%rfc2629.common.attrib;>
]]>

<!-- end of reference.mod -->
