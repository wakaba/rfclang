<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Block structural module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/blkstruct.mod"
  -->

<!ENTITY % rfc2629ja.example.element "INCLUDE">
<![%rfc2629ja.example.element;[
<!ENTITY % rfc2629ja.example.content "(#PCDATA|%rfc2629ja.inline.class;)*">
<!ELEMENT %rfc2629ja.example.qname; %rfc2629ja.example.content;>
]]>
<!ENTITY % rfc2629ja.example.attlist "INCLUDE">
<![%rfc2629ja.example.attlist;[
<!ATTLIST %rfc2629ja.example.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.insert.element "INCLUDE">
<![%rfc2629ja.insert.element;[
<!ENTITY % rfc2629ja.insert.content "EMPTY">
<!ELEMENT %rfc2629ja.insert.qname; %rfc2629ja.insert.content;>
]]>
<!ENTITY % rfc2629ja.insert.attlist "INCLUDE">
<![%rfc2629ja.insert.attlist;[
<!ATTLIST %rfc2629ja.insert.qname;
	section	(author-address|full-copyright|references|toc)	#REQUIRED
	%rfc2629ja.common.attrib;>
<![%rfc2629ja.prefixed;[
<!ATTLIST %rfc2629ja.insert.qname;
	title-prefix	CDATA	#IMPLIED
	%rfc2629ja.insert.title-prefix.qname;	CDATA	#IMPLIED>
]]>
]]>

<!ENTITY % rfc2629ja.note.element "INCLUDE">
<![%rfc2629ja.note.element;[
<!ENTITY % rfc2629ja.note.content "(%rfc2629.TEXT.datatype;|%rfc2629ja.block.class;|%rfc2629ja.inline.class;)*">
<!-- Like h:ins, breaking block-inline structure,
     eg. rfc2629:t/ja:note/rfc2629:t is forbidden -->
<!ELEMENT %rfc2629ja.note.qname; %rfc2629ja.note.content;>
]]>
<!ENTITY % rfc2629ja.note.attlist "INCLUDE">
<![%rfc2629ja.note.attlist;[
<!ATTLIST %rfc2629ja.note.qname;
	%rfc2629ja.common.attrib;>
]]>

<![%XHTML.module;[
<![%XHTML.list.module;[
<!ENTITY % rfc2629ja.ul.list-item.attlist "INCLUDE">
<![%rfc2629ja.ul.list-item.attlist;[
<!ATTLIST %ul.qname;
	%rfc2629ja.ul.list-item.qname;	(none)	#IMPLIED>
]]>
]]>
]]>

<!ENTITY % rfc2629ja.back.element "INCLUDE">
<![%rfc2629ja.back.element;[
<!ENTITY % rfc2629ja.back.content "(%rfc2629.section.qname;|%rfc2629ja.insert.qname;)+">
<!ELEMENT %rfc2629ja.back.qname; %rfc2629ja.back.content;>
]]>
<!ENTITY % rfc2629ja.back.attlist "INCLUDE">
<![%rfc2629ja.back.attlist;[
<!ATTLIST %rfc2629ja.back.qname;
	%rfc2629ja.common.attrib;>
]]>

<![%rfc2629.module;[
<!ENTITY % rfc2629ja.t.hangText-ja.attlist "INCLUDE">
<![%rfc2629ja.t.hangText-ja.attlist;[
<!ATTLIST %rfc2629.t.qname;
	%rfc2629ja.t.hangText-ja.qname;	CDATA	#IMPLIED>
]]>
]]>


<!-- end of blkstruct.mod -->
