<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Figure module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/link.mod"
  -->

<!-- Wrapper element for a rfc2629:artwork (preformatted ASCII text)
     and/or something an XML block level element -->
<!ENTITY % rfc2629ja.artwork.element "INCLUDE">
<![%rfc2629ja.artwork.element;[
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.artwork.content "((%rfc2629.artwork.qname;,(%rfc2629ja.block.class;)?)|%rfc2629ja.block.class;)">
]]>
<!ENTITY % rfc2629ja.artwork.content "(%rfc2629ja.block.class;)">
<!ELEMENT %rfc2629ja.artwork.qname; %rfc2629ja.artwork.content;>
]]>
<!ENTITY % rfc2629ja.artwork.attlist "INCLUDE">
<![%rfc2629ja.artwork.attlist;[
<!ATTLIST %rfc2629ja.artwork.qname;
	%rfc2629ja.common.attrib;>
]]>

<!-- end of figure.mod -->
