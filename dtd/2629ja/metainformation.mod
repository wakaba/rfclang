<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Meta information module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/metainformation.mod"
  -->

<!ENTITY % rfc2629ja.front.element "INCLUDE">
<![%rfc2629ja.front.element;[
<!ENTITY % rfc2629ja.front.content "(%rfc2629.author.qname;*,%rfc2629ja.copyright.qname;,date,keyword*)">
<!ELEMENT %rfc2629ja.front.qname; %rfc2629ja.front.content;>
]]>
<!ENTITY % rfc2629ja.front.attlist "INCLUDE">
<![%rfc2629ja.front.attlist;[
<!ATTLIST %rfc2629ja.front.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.copyright.element "INCLUDE">
<![%rfc2629ja.copyright.element;[
<!ENTITY % rfc2629ja.copyright.content "(%rfc2629ja.item.qname;)*">
<!ELEMENT %rfc2629ja.copyright.qname; %rfc2629ja.copyright.content;>
]]>
<!ENTITY % rfc2629ja.copyright.attlist "INCLUDE">
<![%rfc2629ja.copyright.attlist;[
<!ATTLIST %rfc2629ja.copyright.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.item.element "INCLUDE">
<![%rfc2629ja.item.element;[
<!ENTITY % rfc2629ja.item.content "(%rfc2629.CTEXT.datatype;|%rfc2629.inline.class;)*">
<!ELEMENT %rfc2629ja.item.qname; %rfc2629ja.item.content;>
]]>
<!ENTITY % rfc2629ja.item.attlist "INCLUDE">
<![%rfc2629ja.item.attlist;[
<!ATTLIST %rfc2629ja.item.qname;
	%rfc2629ja.common.attrib;>
]]>

<!-- end of metainformation.mod -->
