<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     Additional vocabularies used by rfc2629.xslt
     
     QName module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629xslt/qname.mod"
  -->

<!ENTITY % NS.prefixed "INCLUDE">
<!ENTITY % myns.prefixed "%NS.prefixed;">
<!ENTITY % myns.xmlns "mailto:julian.reschke@greenbytes.de?subject=rcf2629.xslt">
<!ENTITY % myns.prefix "myns">
<![%myns.prefixed;[
<!ENTITY % myns.pfx "%myns.prefix;:">
]]>
<!ENTITY % myns.pfx "">
<!ENTITY % myns.xmlns.extra.attrib "">

<![%myns.prefixed;[
<!ENTITY % myns.xmlns.decl.attrib
	"xmlns:%myns.prefix;	%URI.datatype;	#FIXED '%myns.xmlns;'">
]]>
<!ENTITY % myns.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%myns.xmlns;'">

<![%myns.prefixed;[
<!ENTITY % NS.decl.attrib
	"%myns.xmlns.decl.attrib;
	%myns.xmlns.extra.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%myns.xmlns.extra.attrib;">

<![%myns.prefixed;[
<!ENTITY % myns.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % myns.xmlns.attrib
	"%myns.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!ENTITY % myns.section.unnumbered.qname "%myns.prefix;:unnumbered">

<!-- end of qname.mod -->
