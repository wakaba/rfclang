<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     QName module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
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
<!ENTITY % rfc2629ja.xmlns.decl.attrib
	"xmlns:%rfc2629ja.prefix;	%URI.datatype;	#FIXED '%rfc2629ja.xmlns;'">
]]>
<!ENTITY % rfc2629ja.xmlns.decl.attrib
	"xmlns	%URI.datatype;	#FIXED '%rfc2629ja.xmlns;'">

<![%rfc2629ja.prefixed;[
<!ENTITY % NS.decl.attrib
	"%rfc2629ja.xmlns.decl.attrib;
	%rfc2629ja.xmlns.extra.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%rfc2629ja.xmlns.extra.attrib;">

<![%rfc2629ja.prefixed;[
<!ENTITY % rfc2629ja.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % rfc2629ja.xmlns.attrib
	"%rfc2629ja.xmlns.decl.attrib;
	%NS.decl.attrib;">

<!ENTITY % rfc2629ja.add-info.qname "%rfc2629ja.pfx;add-info">
<!ENTITY % rfc2629ja.artwork.qname "%rfc2629ja.pfx;artwork">
<!ENTITY % rfc2629ja.back.qname "%rfc2629ja.pfx;back">
<!ENTITY % rfc2629ja.change.qname "%rfc2629ja.pfx;change">
<!ENTITY % rfc2629ja.copyright.qname "%rfc2629ja.pfx;copyright">
<!ENTITY % rfc2629ja.definition.qname "%rfc2629ja.pfx;definition">
<!ENTITY % rfc2629ja.email.qname "%rfc2629ja.pfx;email">
<!ENTITY % rfc2629ja.example.qname "%rfc2629ja.pfx;example">
<!ENTITY % rfc2629ja.front.qname "%rfc2629ja.pfx;front">
<!ENTITY % rfc2629ja.full-statement.qname "%rfc2629ja.pfx;full-statement">
<!ENTITY % rfc2629ja.insert.qname "%rfc2629ja.pfx;insert">
<!ENTITY % rfc2629ja.item.qname "%rfc2629ja.pfx;item">
<!ENTITY % rfc2629ja.l.qname "%rfc2629ja.pfx;l">
<!ENTITY % rfc2629ja.link.qname "%rfc2629ja.pfx;link">
<!ENTITY % rfc2629ja.mail.qname "%rfc2629ja.pfx;mail">
<!ENTITY % rfc2629ja.note.qname "%rfc2629ja.pfx;note">
<!ENTITY % rfc2629ja.organization.qname "%rfc2629ja.pfx;organization">
<!ENTITY % rfc2629ja.pair.qname "%rfc2629ja.pfx;pair">
<!ENTITY % rfc2629ja.publisher.qname "%rfc2629ja.pfx;publisher">
<!ENTITY % rfc2629ja.title.qname "%rfc2629ja.pfx;title">
<!ENTITY % rfc2629ja.title-ja.qname "%rfc2629ja.pfx;title-ja">
<!ENTITY % rfc2629ja.uri-ref.qname "%rfc2629ja.pfx;uri-ref">
<!ENTITY % rfc2629ja.word.qname "%rfc2629ja.pfx;word">

<!ENTITY % rfc2629ja.anchor.anchor.qname "%rfc2629ja.prefix;:anchor">
<!ENTITY % rfc2629ja.t.hangText-ja.qname "%rfc2629ja.prefix;:hangText-ja">
<!ENTITY % rfc2629ja.header-name.header-name.qname "%rfc2629ja.prefix;:header-name">
<!ENTITY % rfc2629ja.author.id.qname "%rfc2629ja.prefix;:id">
<!ENTITY % rfc2629ja.author.ref.qname "%rfc2629ja.prefix;:ref">
<!ENTITY % rfc2629ja.show.show.qname "%rfc2629ja.prefix;:show">
<!ENTITY % rfc2629ja.reference.target-ja.qname "%rfc2629ja.prefix;:target-ja">
<!ENTITY % rfc2629ja.text.text.qname "%rfc2629ja.prefix;:text">
<!ENTITY % rfc2629ja.section.title-ja.qname "%rfc2629ja.prefix;:title-ja">
<!ENTITY % rfc2629ja.insert.title-prefix.qname "%rfc2629ja.prefix;:title-prefix">
<!ENTITY % rfc2629ja.ul.list-item.qname "%rfc2629ja.prefix;:list-item">

<!-- end of qname.mod -->
