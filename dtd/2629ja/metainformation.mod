<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Meta information module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/metainformation.mod"
  -->

<!ENTITY % rfc2629ja.front.element "INCLUDE">
<![%rfc2629ja.front.element;[
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.front.content "(%rfc2629.author.qname;|%rfc2629ja.copyright.qname;|%rfc2629.date.qname;|%rfc2629.keyword.qname;|%rfc2629ja.change.qname;%rfc2629ja.front.extra.class;)+">
]]>
<!ENTITY % rfc2629ja.front.content "(%rfc2629ja.copyright.qname;|%rfc2629ja.change.qname;%rfc2629ja.front.extra.class;)+">
<!ELEMENT %rfc2629ja.front.qname; %rfc2629ja.front.content;>
]]>
<!ENTITY % rfc2629ja.front.attlist "INCLUDE">
<![%rfc2629ja.front.attlist;[
<!ATTLIST %rfc2629ja.front.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.change.element "INCLUDE">
<![%rfc2629ja.change.element;[
<!ENTITY % rfc2629ja.change.content "(%rfc2629ja.item.qname;)+">
<!ELEMENT %rfc2629ja.change.qname; %rfc2629ja.change.content;>
]]>
<!ENTITY % rfc2629ja.change.attlist "INCLUDE">
<![%rfc2629ja.change.attlist;[
<!ATTLIST %rfc2629ja.change.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.copyright.element "INCLUDE">
<![%rfc2629ja.copyright.element;[
<!ENTITY % rfc2629ja.copyright.content "(%rfc2629ja.item.qname;|%rfc2629ja.full-statement.qname;)+">
<!ELEMENT %rfc2629ja.copyright.qname; %rfc2629ja.copyright.content;>
]]>
<!ENTITY % rfc2629ja.copyright.attlist "INCLUDE">
<![%rfc2629ja.copyright.attlist;[
<!ATTLIST %rfc2629ja.copyright.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.item.element "INCLUDE">
<![%rfc2629ja.item.element;[
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.item.content "(%rfc2629.CTEXT.datatype;|%rfc2629.inline.class;|%rfc2629.t.qname;|%rfc2629.author.qname;)*">
]]>
<!ENTITY % rfc2629ja.item.content "(%rfc2629.CTEXT.datatype;)*">
<!-- ja:copyright/ja:item : %rfc2629.metaterm.content;
     ja:change/ja:item : (author,t*) ; @year, @month, @day
    (How bad design!)
  -->
<!ELEMENT %rfc2629ja.item.qname; %rfc2629ja.item.content;>
]]>
<!ENTITY % rfc2629ja.item.attlist "INCLUDE">
<![%rfc2629ja.item.attlist;[
<!ATTLIST %rfc2629ja.item.qname;
	year	%rfc2629.YEAR.datatype;	#IMPLIED
	month	%rfc2629.MONTH.datatype;	#IMPLIED
	day	%rfc2629.DAY.datatype;	#IMPLIED
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.full-statement.element "INCLUDE">
<![%rfc2629ja.full-statement.element;[
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.full-statement.content "(%rfc2629.t.qname;|%rfc2629.figure.qname;|%rfc2629.iref.qname;)+">
]]>
<!ENTITY % rfc2629ja.full-statement.content "ANY">
<!ELEMENT %rfc2629ja.full-statement.qname; %rfc2629ja.full-statement.content;>
]]>
<!ENTITY % rfc2629ja.full-statement.attlist "INCLUDE">
<![%rfc2629ja.full-statement.attlist;[
<!ATTLIST %rfc2629ja.full-statement.qname;
	%rfc2629ja.common.attrib;>
]]>

<![%rfc2629.module;[
<![%rfc2629ja.prefixed;[
<!ENTITY % rfc2629ja.author.id.attlist "INCLUDE">
<![%rfc2629ja.author.id.attlist;[
<!ATTLIST %rfc2629.author.qname;
	%rfc2629ja.author.id.qname;	ID	#IMPLIED>
]]>
<!ENTITY % rfc2629ja.author.ref.attlist "INCLUDE">
<![%rfc2629ja.author.ref.attlist;[
<!ATTLIST %rfc2629.author.qname;
	%rfc2629ja.author.ref.qname;	IDREF	#IMPLIED>
]]>
<!ENTITY % rfc2629ja.author.header-name.attlist "INCLUDE">
<![%rfc2629ja.author.header-name.attlist;[
<!ATTLIST %rfc2629.author.qname;
	%rfc2629ja.header-name.header-name.qname;	CDATA	#IMPLIED>
]]>
<!ENTITY % rfc2629ja.author.text.attlist "INCLUDE">
<![%rfc2629ja.author.text.attlist;[
<!ATTLIST %rfc2629.author.qname;
	%rfc2629ja.text.text.qname;	CDATA	#IMPLIED>
]]>
<!ENTITY % rfc2629ja.country.show.attlist "INCLUDE">
<![%rfc2629ja.country.show.attlist;[
<!ATTLIST %rfc2629.country.qname;
	%rfc2629ja.show.show.qname;	CDATA	#IMPLIED>
]]>
<!ENTITY % rfc2629ja.country.text.attlist "INCLUDE">
<![%rfc2629ja.country.text.attlist;[
<!ATTLIST %rfc2629.country.qname;
	%rfc2629ja.text.text.qname;	CDATA	#IMPLIED>
]]>
<!ENTITY % rfc2629ja.facsimile.text.attlist "INCLUDE">
<![%rfc2629ja.facsimile.text.attlist;[
<!ATTLIST %rfc2629.facsimile.qname;
	%rfc2629ja.text.text.qname;	CDATA	#IMPLIED>
]]>
<!ENTITY % rfc2629ja.phone.text.attlist "INCLUDE">
<![%rfc2629ja.phone.text.attlist;[
<!ATTLIST %rfc2629.phone.qname;
	%rfc2629ja.text.text.qname;	CDATA	#IMPLIED>
]]>
<!-- ja:text	name shown in RFC document -->
]]>
]]>

<!ENTITY % rfc2629ja.add-info.element "INCLUDE">
<![%rfc2629ja.add-info.element;[
<![%rfc2629.module;[
<!ENTITY % rfc2629ja.add-info.content "%rfc2629.metaterm.content;">
]]>
<!ENTITY % rfc2629ja.add-info.content "(%rfc2629.CTEXT.datatype;)*">
<!ELEMENT %rfc2629ja.add-info.qname; %rfc2629ja.add-info.content;>
]]>
<!ENTITY % rfc2629ja.add-info.attlist "INCLUDE">
<![%rfc2629ja.add-info.attlist;[
<!ATTLIST %rfc2629ja.add-info.qname;
	%rfc2629ja.common.attrib;>
]]>

<!-- Additional organization -->
<!-- Obsolete : use rfc2629:organization
                with some change to the rfc2629:front content model -->
<!ENTITY % rfc2629ja.organization.element "INCLUDE">
<![%rfc2629ja.organization.element;[
<!ENTITY % rfc2629ja.organization.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629ja.organization.qname; %rfc2629ja.organization.content;>
]]>
<!ENTITY % rfc2629ja.organization.attlist "INCLUDE">
<![%rfc2629ja.organization.attlist;[
<!ATTLIST %rfc2629ja.organization.qname;
	%rfc2629ja.common.attrib;>
]]>

<!-- Additional email address -->
<!-- Obsolete : use rfc2629:email
                with some change to the rfc2629:front content model -->
<!ENTITY % rfc2629ja.email.element "INCLUDE">
<![%rfc2629ja.email.element;[
<!ENTITY % rfc2629ja.email.content "%rfc2629.metaterm.content;">
<!ELEMENT %rfc2629ja.email.qname; %rfc2629ja.email.content;>
]]>
<!ENTITY % rfc2629ja.email.attlist "INCLUDE">
<![%rfc2629ja.email.attlist;[
<!ATTLIST %rfc2629ja.email.qname;
	%rfc2629ja.common.attrib;>
]]>

<!ENTITY % rfc2629ja.publisher.element "INCLUDE">
<![%rfc2629ja.publisher.element;[
<!ENTITY % rfc2629ja.publisher.content "EMPTY">
<!ELEMENT %rfc2629ja.publisher.qname; %rfc2629ja.publisher.content;>
]]>
<!ENTITY % rfc2629ja.publisher.attlist "INCLUDE">
<![%rfc2629ja.publisher.attlist;[
<!ATTLIST %rfc2629ja.publisher.qname;
	fullname	CDATA	#IMPLIED
	%rfc2629ja.common.attrib;>
]]>

<!-- end of metainformation.mod -->
