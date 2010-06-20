<!-- ...................................................................... -->
<!-- Draft revision of RFC 2629 <http://xml.resource.org/authoring/draft-mrose-writing-rfcs.html>
             Hyperlink Module ............................................. -->
<!-- file: rfc2629bis-hyperlink.mod
     

     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:43:53+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/module/rfc2629bis-hyperlink.mod"
     
     ...................................................................... -->

<!-- Hyperlink


-->

<![%rfc2629bis.rfc2629.module;[
<!ENTITY % rfc2629bis.xref.add.attlist "INCLUDE">
<![%rfc2629bis.xref.add.attlist;[
<!ATTLIST %rfc2629.xref.qname;
	format	(counter|title|default)	"default">
<!-- end of rfc2629bis.xref.add.attlist -->]]>

<!ENTITY % rfc2629bis.iref.add.attlist "INCLUDE">
<![%rfc2629bis.iref.add.attlist;[
<!ATTLIST %rfc2629.iref.qname;
	primary	%rfc2629.truefalse.datatype;	"false">
<!-- end of rfc2629bis.iref.add.attlist -->]]>

<!ENTITY % rfc2629bis.references.add.attlist "INCLUDE">
<![%rfc2629bis.references.add.attlist;[
<!ATTLIST %rfc2629.reference.qname;
	title	%rfc2629.ATEXT.datatype;	"References">
<!-- end of rfc2629bis.references.add.attlist -->]]>

<!-- end of rfc2629bis.rfc2629 -->]]>


<!-- end of rfc2629bis-hyperlink.mod -->
