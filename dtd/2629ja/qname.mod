<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     QName module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/qname.mod"
  -->

<!ENTITY % NS.prefixed "INCLUDE">
<!ENTITY % rfc2629ja.prefixed "%NS.prefixed;">
<!ENTITY % rfc2629ja.xmlns "http://suika.fam.cx/~wakaba/lang/rfc/translation/">
<!ENTITY % rfc2629ja.prefix "ja">
<![%rfc2629ja.prefixed;[
<!ENTITY % rfc2629ja.pfx "%rfc2629ja.prefix;:">
]]>
<!ENTITY % rfc2629ja.pfx "">
<!ENTITY % rfc2629ja.xmlns.extra.attrib "">

<![%rfc2629ja.prefixed;[
<!ENTITY % NS.decl.attrib
	"xmlns:%rfc2629ja.prefix;	%URI.datatype;	#FIXED	'%rfc2629ja.xmlns;'
	%rfc2629ja.xmlns.extra.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%rfc2629ja.xmlns.extra.attrib;">

<![%rfc2629ja.prefixed;[
<!ENTITY % rfc2629ja.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % rfc2629ja.xmlns.attrib
	"xmlns	%URI.datatype;	#FIXED	'%rfc2629ja.xmlns;'
	%NS.decl.attrib;">

<!ENTITY % rfc2629ja.title-ja.qname "%rfc2629ja.pfx;title-ja">
<!ENTITY % rfc2629ja.section.title-ja.qname "%rfc2629ja.prefix;:title-ja">
<!ENTITY % rfc2629ja.pair.qname "%rfc2629ja.pfx;pair">
<!ENTITY % rfc2629ja.l.qname "%rfc2629ja.pfx;l">
<!ENTITY % rfc2629ja.front.qname "%rfc2629ja.pfx;front">
<!ENTITY % rfc2629ja.copyright.qname "%rfc2629ja.pfx;copyright">
<!ENTITY % rfc2629ja.item.qname "%rfc2629ja.pfx;item">

<!-- end of qname.mod -->
