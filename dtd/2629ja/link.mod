<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Hyperlinking module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/link.mod"
  -->

<!ENTITY % rfc2629ja.link.element "INCLUDE">
<![%rfc2629ja.link.element;[
<!ENTITY % rfc2629ja.link.content "%rfc2629ja.CONREF.content;">
<!ELEMENT %rfc2629ja.link.qname; %rfc2629ja.link.content;>
]]>
<!ENTITY % rfc2629ja.link.attlist "INCLUDE">
<![%rfc2629ja.link.attlist;[
<!ATTLIST %rfc2629ja.link.qname;
	number	%rfc2629.NUMBER.datatype;	#REQUIRED
	section	%rfc2629.NUMBER.datatype;	#IMPLIED
	type	(rfc|std|bcp|fyi)	#REQUIRED
	%rfc2629ja.common.attrib;>
]]>

<![%rfc2629.module;[
<!ENTITY % rfc2629ja.t.anchor.attlist "INCLUDE">
<![%rfc2629ja.t.anchor.attlist;[
<!ATTLIST %rfc2629.t.qname;
	%rfc2629ja.anchor.anchor.qname;	ID	#IMPLIED>
]]>
]]>

<!-- URI of Japanese version or Japanese translated version -->
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.reference.target-ja.attlist "INCLUDE">
<![%rfc2629ja.reference.target-ja.attlist;[
<!ATTLIST %rfc2629.reference.qname;
	%rfc2629ja.reference.target-ja.qname;	%URI.datatype;	#IMPLIED>
]]>
<!ENTITY % rfc2629ja.reference.text.attlist "INCLUDE">
<![%rfc2629ja.reference.text.attlist;[
<!ATTLIST %rfc2629.reference.qname;
	%rfc2629ja.text.text.qname;	CDATA	#IMPLIED>
]]>
]]>

<!ENTITY % rfc2629ja.mail.element "INCLUDE">
<![%rfc2629ja.mail.element;[
<!ENTITY % rfc2629ja.mail.content "%rfc2629ja.CONREF.content;">
<!ELEMENT %rfc2629ja.mail.qname; %rfc2629ja.mail.content;>
]]>
<!ENTITY % rfc2629ja.mail.attlist "INCLUDE">
<![%rfc2629ja.mail.attlist;[
<!ATTLIST %rfc2629ja.mail.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.uri-ref.element "INCLUDE">
<![%rfc2629ja.uri-ref.element;[
<!ENTITY % rfc2629ja.uri-ref.content "(#PCDATA|%rfc2629ja.inline.class;)*">
<!ELEMENT %rfc2629ja.uri-ref.qname; %rfc2629ja.uri-ref.content;>
]]>
<!ENTITY % rfc2629ja.uri-ref.attlist "INCLUDE">
<![%rfc2629ja.uri-ref.attlist;[
<!ATTLIST %rfc2629ja.uri-ref.qname;
	target	%URI.datatype;	#REQUIRED
	%rfc2629ja.common.attrib;>
]]>

<!-- <ja:definition word="defined word" traslation="定義される言葉">定義文</ja:definition> -->
<!ENTITY % rfc2629ja.definition.element "INCLUDE">
<![%rfc2629ja.definition.element;[
<!ENTITY % rfc2629ja.definition.content "(#PCDATA|%rfc2629ja.inline.class;)*">
<!ELEMENT %rfc2629ja.definition.qname; %rfc2629ja.definition.content;>
]]>
<!ENTITY % rfc2629ja.definition.attlist "INCLUDE">
<![%rfc2629ja.definition.attlist;[
<!ATTLIST %rfc2629ja.definition.qname;
	translation	CDATA	#IMPLIED
	word	CDATA	#REQUIRED
	%rfc2629ja.common.attrib;>
]]>

<!-- Reference to definition -->
<!ENTITY % rfc2629ja.word.element "INCLUDE">
<![%rfc2629ja.word.element;[
<!ENTITY % rfc2629ja.word.content "(#PCDATA|%rfc2629ja.inline.class;)*">
<!ELEMENT %rfc2629ja.word.qname; %rfc2629ja.word.content;>
]]>
<!ENTITY % rfc2629ja.word.attlist "INCLUDE">
<![%rfc2629ja.word.attlist;[
<!ATTLIST %rfc2629ja.word.qname;
	name	CDATA	#REQUIRED
	%rfc2629ja.common.attrib;>
]]>

<!-- end of link.mod -->
