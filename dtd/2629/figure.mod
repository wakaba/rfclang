<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     
     Figure module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/figure.mod"
  -->

<!ENTITY % rfc2629.figure.element "INCLUDE">
<![%rfc2629.figure.element;[
<!ENTITY % rfc2629.figure.content "(%rfc2629.preamble.qname;?,%rfc2629.artwork.qname;,%rfc2629.postamble.qname;?)">
<!ELEMENT %rfc2629.figure.qname; %rfc2629.figure.content;>
]]>
<!ENTITY % rfc2629.figure.attlist "INCLUDE">
<![%rfc2629.figure.attlist;[
<!ATTLIST %rfc2629.figure.qname;
	anchor	ID	#IMPLIED
	title	%rfc2629.ATEXT.datatype;	""
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.preamble.element "INCLUDE">
<![%rfc2629.preamble.element;[
<!ENTITY % rfc2629.preamble.content "(%rfc2629.TEXT.datatype;|%rfc2629.inline.class;%rfc2629.blockcontent.class;)*">
<!ELEMENT %rfc2629.preamble.qname; %rfc2629.preamble.content;>
]]>
<!ENTITY % rfc2629.preamble.attlist "INCLUDE">
<![%rfc2629.preamble.attlist;[
<!ATTLIST %rfc2629.preamble.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.postamble.element "INCLUDE">
<![%rfc2629.postamble.element;[
<!ENTITY % rfc2629.postamble.content "(%rfc2629.TEXT.datatype;|%rfc2629.inline.class;%rfc2629.blockcontent.class;)*">
<!ELEMENT %rfc2629.postamble.qname; %rfc2629.postamble.content;>
]]>
<!ENTITY % rfc2629.postamble.attlist "INCLUDE">
<![%rfc2629.postamble.attlist;[
<!ATTLIST %rfc2629.postamble.qname;
	%rfc2629.common.attrib;>
]]>

<!ENTITY % rfc2629.artwork.element "INCLUDE">
<![%rfc2629.artwork.element;[
<!ENTITY % rfc2629.artwork.content "(%rfc2629.TEXT.datatype;)*">
<!ELEMENT %rfc2629.artwork.qname; %rfc2629.artwork.content;>
]]>
<!ENTITY % rfc2629.artwork.attlist "INCLUDE">
<![%rfc2629.artwork.attlist;[
<!ATTLIST %rfc2629.artwork.qname;
	xml:space	(default|preserve)	"preserve"
	name	%rfc2629.ATEXT.datatype;	""
	type	%rfc2629.ATEXT.datatype;	""
	%rfc2629.common.attrib;>
]]>

<!-- end of figure.mod -->
