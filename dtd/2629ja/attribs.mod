<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Common attributes module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/attribs.mod"
  -->

<!ENTITY % rfc2629ja.xml-lang.attrib
	"xml:lang	CDATA	#IMPLIED">

<!ENTITY % rfc2629ja.common.extra.attrib "">

<!ENTITY % rfc2629ja.common.attrib
	"xml:base	%URI.datatype;	#IMPLIED
	%rfc2629ja.xml-lang.attrib;
	xml:space	(default|preserve)	#IMPLIED
	%rfc2629ja.xmlns.attrib;">

<!-- Additional common attributes to RFC 2629 elements -->
<!ENTITY % rfc2629.common.extra.attrib
	"%rfc2629ja.xml-lang.attrib;">

<!-- end of attribs.mod -->
