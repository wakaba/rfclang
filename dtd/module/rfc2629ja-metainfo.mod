<!-- ...................................................................... -->
<!-- Japanese Translation Markup Framework for RFC 2629 Markups
             Metainformational Module ..................................... -->
<!-- file: rfc2629ja-metainfo.mod
     
     This is an additional markup vocabulary to support RFC translations.
     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:43:53+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/module/rfc2629ja-metainfo.mod"
     
     ...................................................................... -->

<!-- Metainformational

       add-info, change, copyright, email, front, full-statement, item, organization, publisher
-->

<![%rfc2629ja.rfc2629.module;[
<!ENTITY % rfc2629ja.front.content "(%rfc2629.author.qname;|%rfc2629.date.qname;|%rfc2629.keyword.qname;|%rfc2629ja.copyright.qname;|%rfc2629ja.change.qname;%rfc2629ja.front.extra.class;)+">
<!-- end of rfc2629ja.rfc2629 -->]]>

<!-- front: Metainformation about the translation ...... -->

<!ENTITY % rfc2629ja.front.element "INCLUDE">
<![%rfc2629ja.front.element;[
<!ENTITY % rfc2629ja.front.content "(%rfc2629ja.copyright.qname;|%rfc2629ja.change.qname;%rfc2629ja.front.extra.class;)+">
<!ENTITY % rfc2629ja.front.qname "front">
<!ENTITY % rfc2629ja.front.tagmin.start "-">
<!ENTITY % rfc2629ja.front.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.front.tagmin "%rfc2629ja.front.tagmin.start; %rfc2629ja.front.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.front.tagmin "">
<!ELEMENT %rfc2629ja.front.qname; %rfc2629ja.front.tagmin; %rfc2629ja.front.content;>
<!-- end of rfc2629ja.front.element -->]]>

<!ENTITY % rfc2629ja.front.attlist "INCLUDE">
<![%rfc2629ja.front.attlist;[
<!ATTLIST %rfc2629ja.front.qname;
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.front.attlist -->]]>

<!-- change ............................................ -->

<!ENTITY % rfc2629ja.change.element "INCLUDE">
<![%rfc2629ja.change.element;[
<!ENTITY % rfc2629ja.change.content "(%rfc2629ja.item.qname;)+">
<!ENTITY % rfc2629ja.change.qname "change">
<!ENTITY % rfc2629ja.change.tagmin.start "-">
<!ENTITY % rfc2629ja.change.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.change.tagmin "%rfc2629ja.change.tagmin.start; %rfc2629ja.change.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.change.tagmin "">
<!ELEMENT %rfc2629ja.change.qname; %rfc2629ja.change.tagmin; %rfc2629ja.change.content;>
<!-- end of rfc2629ja.change.element -->]]>

<!ENTITY % rfc2629ja.change.attlist "INCLUDE">
<![%rfc2629ja.change.attlist;[
<!ATTLIST %rfc2629ja.change.qname;
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.change.attlist -->]]>

<!-- copyright ......................................... -->

<!ENTITY % rfc2629ja.copyright.element "INCLUDE">
<![%rfc2629ja.copyright.element;[
<!ENTITY % rfc2629ja.copyright.content "(%rfc2629ja.item.qname;|%rfc2629ja.full-statement.qname;)+">
<!ENTITY % rfc2629ja.copyright.qname "copyright">
<!ENTITY % rfc2629ja.copyright.tagmin.start "-">
<!ENTITY % rfc2629ja.copyright.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.copyright.tagmin "%rfc2629ja.copyright.tagmin.start; %rfc2629ja.copyright.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.copyright.tagmin "">
<!ELEMENT %rfc2629ja.copyright.qname; %rfc2629ja.copyright.tagmin; %rfc2629ja.copyright.content;>
<!-- end of rfc2629ja.copyright.element -->]]>

<!ENTITY % rfc2629ja.copyright.attlist "INCLUDE">
<![%rfc2629ja.copyright.attlist;[
<!ATTLIST %rfc2629ja.copyright.qname;
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.copyright.attlist -->]]>

<![%rfc2629ja.rfc2629.module;[
<!ENTITY % rfc2629ja.item.content "(%rfc2629.TEXT.datatype;|%Inline.mix;|%rfc2629.t.qname;|%rfc2629.author.qname;)*">
<!-- end of rfc2629ja.rfc2629 -->]]>

<!-- item: ja:copyright/ja:item : %rfc2629.metaterm.content;
     ja:change/ja:item : (author,t*) ; @year, @month, @day
     (How bad design!)  -->

<!ENTITY % rfc2629ja.item.element "INCLUDE">
<![%rfc2629ja.item.element;[
<!ENTITY % rfc2629ja.item.content "(%rfc2629.TEXT.datatype;|%Inline.mix;)*">
<!ENTITY % rfc2629ja.item.qname "item">
<!ENTITY % rfc2629ja.item.tagmin.start "-">
<!ENTITY % rfc2629ja.item.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.item.tagmin "%rfc2629ja.item.tagmin.start; %rfc2629ja.item.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.item.tagmin "">
<!ELEMENT %rfc2629ja.item.qname; %rfc2629ja.item.tagmin; %rfc2629ja.item.content;>
<!-- end of rfc2629ja.item.element -->]]>

<!ENTITY % rfc2629ja.item.attlist "INCLUDE">
<![%rfc2629ja.item.attlist;[
<!ATTLIST %rfc2629ja.item.qname;
	year	%rfc2629.YEAR.datatype;	#IMPLIED
	month	%rfc2629ja.month.datatype;	#IMPLIED
	day	%rfc2629.DAY.datatype;	#IMPLIED
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.item.attlist -->]]>

<![%rfc2629ja.rfc2629.module;[
<!ENTITY % rfc2629ja.full-statement.content "(%rfc2629.t.qname;|%rfc2629.figure.qname;|%rfc2629.iref.qname;)+">
<!-- end of rfc2629ja.rfc2629 -->]]>

<!-- full-statement .................................... -->

<!ENTITY % rfc2629ja.full-statement.element "INCLUDE">
<![%rfc2629ja.full-statement.element;[
<!ENTITY % rfc2629ja.full-statement.content "ANY">
<!ENTITY % rfc2629ja.full-statement.qname "full-statement">
<!ENTITY % rfc2629ja.full-statement.tagmin.start "-">
<!ENTITY % rfc2629ja.full-statement.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.full-statement.tagmin "%rfc2629ja.full-statement.tagmin.start; %rfc2629ja.full-statement.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.full-statement.tagmin "">
<!ELEMENT %rfc2629ja.full-statement.qname; %rfc2629ja.full-statement.tagmin; %rfc2629ja.full-statement.content;>
<!-- end of rfc2629ja.full-statement.element -->]]>

<!ENTITY % rfc2629ja.full-statement.attlist "INCLUDE">
<![%rfc2629ja.full-statement.attlist;[
<!ATTLIST %rfc2629ja.full-statement.qname;
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.full-statement.attlist -->]]>

<![%rfc2629ja.rfc2629.module;[
<!-- Author information referring -->
<!ENTITY % rfc2629ja.author.idref.attlist "INCLUDE">
<![%rfc2629ja.author.idref.attlist;[
<!ATTLIST %rfc2629.author.qname;
	%rfc2629ja.id.attrib.qname;	ID	#IMPLIED
	%rfc2629ja.ref.attrib.qname;	IDREF	#IMPLIED>
<!-- end of rfc2629ja.author.idref.attlist -->]]>

<!-- Author's name shown in RFC header and other positions -->
<!ENTITY % rfc2629ja.author.shownname.attlist "INCLUDE">
<![%rfc2629ja.author.shownname.attlist;[
<!ATTLIST %rfc2629.author.qname;
	%rfc2629ja.header-name.attrib.qname;	CDATA	#IMPLIED
	%rfc2629ja.text.attrib.qname;	CDATA	#IMPLIED>
<!-- end of rfc2629ja.author.shownname.attlist -->]]>

<!-- Country name shown in RFC text -->
<!ENTITY % rfc2629ja.country.shownname.attlist "INCLUDE">
<![%rfc2629ja.country.shownname.attlist;[
<!ATTLIST %rfc2629.country.qname;
	%rfc2629ja.show.attrib.qname;	CDATA	#IMPLIED
	%rfc2629ja.text.attrib.qname;	CDATA	#IMPLIED>
<!-- end of rfc2629ja.country.shownname.attlist -->]]>

<!-- FAX number text shown in RFC -->
<!ENTITY % rfc2629ja.facsimile.shownname.attlist "INCLUDE">
<![%rfc2629ja.facsimile.shownname.attlist;[
<!ATTLIST %rfc2629.facsimile.qname;
	%rfc2629ja.text.attrib.qname;	CDATA	#IMPLIED>
<!-- end of rfc2629ja.facsimile.shownname.attlist -->]]>

<!-- Telephone number text shown in RFC -->
<!ENTITY % rfc2629ja.phone.shownname.attlist "INCLUDE">
<![%rfc2629ja.phone.shownname.attlist;[
<!ATTLIST %rfc2629.phone.qname;
	%rfc2629ja.text.attrib.qname;	CDATA	#IMPLIED>
<!-- end of rfc2629ja.phone.shownname.attlist -->]]>

<!-- end of rfc2629ja.rfc2629 -->]]>

<![%rfc2629ja.rfc2629.module;[
<!ENTITY % rfc2629ja.add-info.content "%rfc2629.metaterm.content;">
<!-- end of rfc2629ja.rfc2629 -->]]>

<!-- add-info .......................................... -->

<!ENTITY % rfc2629ja.add-info.element "INCLUDE">
<![%rfc2629ja.add-info.element;[
<!ENTITY % rfc2629ja.add-info.content "(%rfc2629.TEXT.datatype;)*">
<!ENTITY % rfc2629ja.add-info.qname "add-info">
<!ENTITY % rfc2629ja.add-info.tagmin.start "-">
<!ENTITY % rfc2629ja.add-info.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.add-info.tagmin "%rfc2629ja.add-info.tagmin.start; %rfc2629ja.add-info.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.add-info.tagmin "">
<!ELEMENT %rfc2629ja.add-info.qname; %rfc2629ja.add-info.tagmin; %rfc2629ja.add-info.content;>
<!-- end of rfc2629ja.add-info.element -->]]>

<!ENTITY % rfc2629ja.add-info.attlist "INCLUDE">
<![%rfc2629ja.add-info.attlist;[
<!ATTLIST %rfc2629ja.add-info.qname;
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.add-info.attlist -->]]>

<![%rfc2629ja.rfc2629.module;[
<!ENTITY % rfc2629ja.organization.content "%rfc2629.metaterm.content;">
<!-- end of rfc2629ja.rfc2629 -->]]>

<!-- organization: An additional organization
     (for authors belonging to multiple organizations)
     Obsolete : use rfc2629:organization
     with some changes to the content model of rfc2629:front  -->

<!ENTITY % rfc2629ja.organization.element "INCLUDE">
<![%rfc2629ja.organization.element;[
<!ENTITY % rfc2629ja.organization.content "(%rfc2629.TEXT.datatype;)*">
<!ENTITY % rfc2629ja.organization.qname "organization">
<!ENTITY % rfc2629ja.organization.tagmin.start "-">
<!ENTITY % rfc2629ja.organization.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.organization.tagmin "%rfc2629ja.organization.tagmin.start; %rfc2629ja.organization.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.organization.tagmin "">
<!ELEMENT %rfc2629ja.organization.qname; %rfc2629ja.organization.tagmin; %rfc2629ja.organization.content;>
<!-- end of rfc2629ja.organization.element -->]]>

<!ENTITY % rfc2629ja.organization.attlist "INCLUDE">
<![%rfc2629ja.organization.attlist;[
<!ATTLIST %rfc2629ja.organization.qname;
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.organization.attlist -->]]>

<![%rfc2629ja.rfc2629.module;[
<!ENTITY % rfc2629ja.email.content "%rfc2629.metaterm.content;">
<!-- end of rfc2629ja.rfc2629 -->]]>

<!-- email: An additional Internet mail address
     (for authors who have multiple Internet mail addresses)
     Obsolete : use rfc2629:email
     with some changes to the content model of rfc2629:front  -->

<!ENTITY % rfc2629ja.email.element "INCLUDE">
<![%rfc2629ja.email.element;[
<!ENTITY % rfc2629ja.email.content "(%rfc2629.TEXT.datatype;)*">
<!ENTITY % rfc2629ja.email.qname "email">
<!ENTITY % rfc2629ja.email.tagmin.start "-">
<!ENTITY % rfc2629ja.email.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.email.tagmin "%rfc2629ja.email.tagmin.start; %rfc2629ja.email.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.email.tagmin "">
<!ELEMENT %rfc2629ja.email.qname; %rfc2629ja.email.tagmin; %rfc2629ja.email.content;>
<!-- end of rfc2629ja.email.element -->]]>

<!ENTITY % rfc2629ja.email.attlist "INCLUDE">
<![%rfc2629ja.email.attlist;[
<!ATTLIST %rfc2629ja.email.qname;
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.email.attlist -->]]>

<!-- publisher: A publisher of the document ............ -->

<!ENTITY % rfc2629ja.publisher.element "INCLUDE">
<![%rfc2629ja.publisher.element;[
<!ENTITY % rfc2629ja.publisher.content "EMPTY">
<!ENTITY % rfc2629ja.publisher.qname "publisher">
<!ENTITY % rfc2629ja.publisher.tagmin.start "-">
<!ENTITY % rfc2629ja.publisher.tagmin.end "o">
<![%sgml.tag.minimizable;[
<!ENTITY % rfc2629ja.publisher.tagmin "%rfc2629ja.publisher.tagmin.start; %rfc2629ja.publisher.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % rfc2629ja.publisher.tagmin "">
<!ELEMENT %rfc2629ja.publisher.qname; %rfc2629ja.publisher.tagmin; %rfc2629ja.publisher.content;>
<!-- end of rfc2629ja.publisher.element -->]]>

<!ENTITY % rfc2629ja.publisher.attlist "INCLUDE">
<![%rfc2629ja.publisher.attlist;[
<!ATTLIST %rfc2629ja.publisher.qname;
	fullname	CDATA	#IMPLIED
	%rfc2629ja.common.attrib;>
<!-- end of rfc2629ja.publisher.attlist -->]]>


<!-- end of rfc2629ja-metainfo.mod -->
