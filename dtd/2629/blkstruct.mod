<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     
     Block Structural module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/blkstruct.mod"
  -->

<!ENTITY % rfc2629.section.element "INCLUDE">
<![%rfc2629.section.element;[
<!ENTITY % rfc2629.section.content "(%rfc2629.block.class;)*">
<!ELEMENT %rfc2629.section.qname; %rfc2629.section.content;>
]]>
<!ENTITY % rfc2629.section.attlist "INCLUDE">
<![%rfc2629.section.attlist;[
<!ATTLIST %rfc2629.section.qname;
	%rfc2629.anchor.attrib;
	title	%rfc2629.ATEXT.datatype;	#REQUIRED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.t.element "INCLUDE">
<![%rfc2629.t.element;[
<!ENTITY % rfc2629.t.content "(%rfc2629.TEXT.datatype;|%rfc2629.list.qname;|%rfc2629.figure.qname;|%rfc2629.inline.class;|%rfc2629.vspace.qname;%rfc2629.blockcontent.class;)*">
<!ELEMENT %rfc2629.t.qname; %rfc2629.t.content;>
]]>
<!ENTITY % rfc2629.t.attlist "INCLUDE">
<![%rfc2629.t.attlist;[
<!ATTLIST %rfc2629.t.qname;
	hangText	%rfc2629.ATEXT.datatype;	#IMPLIED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.vspace.element "INCLUDE">
<![%rfc2629.vspace.element;[
<!ENTITY % rfc2629.vspace.content "EMPTY">
<!ELEMENT %rfc2629.vspace.qname; %rfc2629.vspace.content;>
]]>
<!ENTITY % rfc2629.vspace.attlist "INCLUDE">
<![%rfc2629.vspace.attlist;[
<!ATTLIST %rfc2629.vspace.qname;
	blankLines	%rfc2629.NUMBER.datatype;	"0"
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.abstract.element "INCLUDE">
<![%rfc2629.abstract.element;[
<!ENTITY % rfc2629.abstract.content "(%rfc2629.t.qname;)+">
<!ELEMENT %rfc2629.abstract.qname; %rfc2629.abstract.content;>
]]>
<!ENTITY % rfc2629.abstract.attlist "INCLUDE">
<![%rfc2629.abstract.attlist;[
<!ATTLIST %rfc2629.abstract.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.note.element "INCLUDE">
<![%rfc2629.note.element;[
<!ENTITY % rfc2629.note.content "(%rfc2629.t.qname;)+">
<!ELEMENT %rfc2629.note.qname; %rfc2629.note.content;>
]]>
<!ENTITY % rfc2629.note.attlist "INCLUDE">
<![%rfc2629.note.attlist;[
<!ATTLIST %rfc2629.note.qname;
	title	%rfc2629.ATEXT.datatype;	#REQUIRED
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.list.element "INCLUDE">
<![%rfc2629.list.element;[
<!ENTITY % rfc2629.list.content "(%rfc2629.t.qname;+)">
<!ELEMENT %rfc2629.list.qname; %rfc2629.list.content;>
]]>
<!ENTITY % rfc2629.list.attlist "INCLUDE">
<![%rfc2629.list.attlist;[
<!ATTLIST %rfc2629.list.qname;
	style	%rfc2629.ATEXT.datatype;	"empty"
	%rfc2629.common.attrib;>
]]>

<!-- end of blkstruct.mod -->
