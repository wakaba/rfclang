<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Translation module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/translation.mod"
  -->

<!ENTITY % rfc2629ja.pair.element "INCLUDE">
<![%rfc2629ja.pair.element;[
<!ENTITY % rfc2629ja.pair.content "(%rfc2629ja.l.qname;)+">
<!ELEMENT %rfc2629ja.pair.qname; %rfc2629ja.pair.content;>
]]>
<!ENTITY % rfc2629ja.pair.attlist "INCLUDE">
<![%rfc2629ja.pair.attlist;[
<!ATTLIST %rfc2629ja.pair.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.l.element "INCLUDE">
<![%rfc2629ja.l.element;[
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.l.content "(%rfc2629.CTEXT.datatype;|%rfc2629.inline.class;|%rfc2629.artwork.qname;|%rfc2629ja.artwork.qname;|%rfc2629.preamble.qname;|%rfc2629.postamble.qname;)*">
]]>
<!ENTITY % rfc2629ja.l.content "(%rfc2629.CTEXT.datatype;)*">
<!-- can contain rfc2629[ja]:{artwork|{pre|post}amble} only when "rfc2629:figure/ja:pair/ja:l/rfc2629:*" -->
<!ELEMENT %rfc2629ja.l.qname; %rfc2629ja.l.content;>
]]>
<!ENTITY % rfc2629ja.l.attlist "INCLUDE">
<![%rfc2629ja.l.attlist;[
<!ATTLIST %rfc2629ja.l.qname;
	%rfc2629ja.common.attrib;>
]]>

<!-- obsolete : use rfc2629:title[@xml:lang] instead -->
<!ENTITY % rfc2629ja.title.element "INCLUDE">
<![%rfc2629ja.title.element;[
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.title.content "(%rfc2629.CTEXT.datatype;|%rfc2629.inline.class;)*">
]]>
<!ENTITY % rfc2629ja.title.content "(%rfc2629.CTEXT.datatype;)*">
<!ELEMENT %rfc2629ja.title.qname; %rfc2629ja.title.content;>
]]>
<!ENTITY % rfc2629ja.title.attlist "INCLUDE">
<![%rfc2629ja.title.attlist;[
<!ATTLIST %rfc2629ja.title.qname;
	abbrev	CDATA	#IMPLIED
	%rfc2629ja.common.attrib;>
]]>

<!-- obsolete : use rfc2629:title[@xml:lang] instead -->
<!ENTITY % rfc2629ja.title-ja.element "INCLUDE">
<![%rfc2629ja.title-ja.element;[
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.title-ja.content "(%rfc2629.CTEXT.datatype;|%rfc2629.inline.class;)*">
]]>
<!ENTITY % rfc2629ja.title-ja.content "(%rfc2629.CTEXT.datatype;)*">
<!ELEMENT %rfc2629ja.title-ja.qname; %rfc2629ja.title-ja.content;>
]]>
<!ENTITY % rfc2629ja.title-ja.attlist "INCLUDE">
<![%rfc2629ja.title-ja.attlist;[
<!ATTLIST %rfc2629ja.title-ja.qname;
	abbrev	CDATA	#IMPLIED
	%rfc2629ja.common.attrib;>
]]>

<![%rfc2629.module;[
<![%rfc2629ja.prefixed;[
<!ENTITY % rfc2629ja.section.title-ja.attlist "INCLUDE">
<![%rfc2629ja.section.title-ja.attlist;[
<!ATTLIST %rfc2629.section.qname;
	%rfc2629ja.section.title-ja.qname;	CDATA	#IMPLIED>
]]>
]]>
]]>

<!-- end of translation.mod -->
