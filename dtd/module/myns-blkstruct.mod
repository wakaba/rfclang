<!-- ...................................................................... -->
<!-- Markup Language for IETF RFC Additional vocabularies used in rfc2629.xslt
             Block Structual Module ....................................... -->
<!-- file: myns-blkstruct.mod
     

     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:43:53+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/module/myns-blkstruct.mod"
     
     ...................................................................... -->

<!-- Block Structual

       item

     This module declares the element types and their attributes used
     to support block-level structural markup.
-->

<![%myns.rfc2629.module;[
<!ENTITY % myns.section.unnumbered.attlist "INCLUDE">
<![%myns.section.unnumbered.attlist;[
<!ATTLIST %rfc2629.section.qname;
	%myns.unnumbered.attrib.qname;	%myns.yesno.datatype;	#IMPLIED>
<!-- end of myns.section.unnumbered.attlist -->]]>

<!-- end of myns.rfc2629 -->]]>

<!-- item: Used in XSLT stylesheet. .................... -->

<!ENTITY % myns.item.element "INCLUDE">
<![%myns.item.element;[
<!ENTITY % myns.item.content "ANY">
<!ENTITY % myns.item.qname "item">
<!ENTITY % myns.item.tagmin.start "-">
<!ENTITY % myns.item.tagmin.end "-">
<![%sgml.tag.minimizable;[
<!ENTITY % myns.item.tagmin "%myns.item.tagmin.start; %myns.item.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % myns.item.tagmin "">
<!ELEMENT %myns.item.qname; %myns.item.tagmin; %myns.item.content;>
<!-- end of myns.item.element -->]]>

<!ENTITY % myns.item.attlist "INCLUDE">
<![%myns.item.attlist;[
<!ATTLIST %myns.item.qname;
	%myns.common.attrib;>
<!-- end of myns.item.attlist -->]]>


<!-- end of myns-blkstruct.mod -->