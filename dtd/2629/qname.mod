<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     
     QName module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/qname.mod"
  -->

<!ENTITY % NS.prefixed "IGNORE">
<!ENTITY % rfc2629.prefixed "%NS.prefixed;">
<!ENTITY % rfc2629.xmlns "urn:x-suika-fam-cx:markup:ietf:rfc:2629:">
<!ENTITY % rfc2629.prefix "">
<![%rfc2629.prefixed;[
<!ENTITY % rfc2629.pfx "%rfc2629.prefix;:">
]]>
<!ENTITY % rfc2629.pfx "">
<!ENTITY % rfc2629.xmlns.extra.attrib "">

<![%rfc2629.prefixed;[
<!ENTITY % NS.decl.attrib
	"xmlns:%rfc2629.prefix;	%URI.datatype;	#FIXED	'%rfc2629.xmlns;'
	%rfc2629.xmlns.extra.attrib;">
]]>
<!ENTITY % NS.decl.attrib
	"%rfc2629.xmlns.extra.attrib;">

<![%rfc2629.prefixed;[
<!ENTITY % rfc2629.xmlns.attrib
	"%NS.decl.attrib;">
]]>
<!ENTITY % rfc2629.xmlns.attrib
	"xmlns	%URI.datatype;	#FIXED	'%rfc2629.xmlns;'
	%NS.decl.attrib;">

<!ENTITY % rfc2629.rfc.qname "%rfc2629.pfx;rfc">
<!ENTITY % rfc2629.front.qname "%rfc2629.pfx;front">
<!ENTITY % rfc2629.title.qname "%rfc2629.pfx;title">
<!ENTITY % rfc2629.author.qname "%rfc2629.pfx;author">
<!ENTITY % rfc2629.organization.qname "%rfc2629.pfx;organization">
<!ENTITY % rfc2629.address.qname "%rfc2629.pfx;address">
<!ENTITY % rfc2629.postal.qname "%rfc2629.pfx;postal">
<!ENTITY % rfc2629.code.qname "%rfc2629.pfx;code">
<!ENTITY % rfc2629.street.qname "%rfc2629.pfx;street">
<!ENTITY % rfc2629.city.qname "%rfc2629.pfx;city">
<!ENTITY % rfc2629.region.qname "%rfc2629.pfx;region">
<!ENTITY % rfc2629.country.qname "%rfc2629.pfx;country">
<!ENTITY % rfc2629.phone.qname "%rfc2629.pfx;phone">
<!ENTITY % rfc2629.facsimile.qname "%rfc2629.pfx;facsimile">
<!ENTITY % rfc2629.email.qname "%rfc2629.pfx;email">
<!ENTITY % rfc2629.uri.qname "%rfc2629.pfx;uri">
<!ENTITY % rfc2629.date.qname "%rfc2629.pfx;date">
<!ENTITY % rfc2629.area.qname "%rfc2629.pfx;area">
<!ENTITY % rfc2629.workgroup.qname "%rfc2629.pfx;workgroup">
<!ENTITY % rfc2629.keyword.qname "%rfc2629.pfx;keyword">
<!ENTITY % rfc2629.abstract.qname "%rfc2629.pfx;abstract">
<!ENTITY % rfc2629.note.qname "%rfc2629.pfx;note">
<!ENTITY % rfc2629.middle.qname "%rfc2629.pfx;middle">
<!ENTITY % rfc2629.section.qname "%rfc2629.pfx;section">
<!ENTITY % rfc2629.t.qname "%rfc2629.pfx;t">
<!ENTITY % rfc2629.list.qname "%rfc2629.pfx;list">
<!ENTITY % rfc2629.xref.qname "%rfc2629.pfx;xref">
<!ENTITY % rfc2629.eref.qname "%rfc2629.pfx;eref">
<!ENTITY % rfc2629.iref.qname "%rfc2629.pfx;iref">
<!ENTITY % rfc2629.vspace.qname "%rfc2629.pfx;vspace">
<!ENTITY % rfc2629.figure.qname "%rfc2629.pfx;figure">
<!ENTITY % rfc2629.preamble.qname "%rfc2629.pfx;preamble">
<!ENTITY % rfc2629.artwork.qname "%rfc2629.pfx;artwork">
<!ENTITY % rfc2629.postamble.qname "%rfc2629.pfx;postamble">
<!ENTITY % rfc2629.back.qname "%rfc2629.pfx;back">
<!ENTITY % rfc2629.references.qname "%rfc2629.pfx;references">
<!ENTITY % rfc2629.reference.qname "%rfc2629.pfx;reference">
<!ENTITY % rfc2629.seriesInfo.qname "%rfc2629.pfx;seriesInfo">

<!-- end of qname.mod -->
