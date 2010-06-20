<!-- ...................................................................... -->
<!-- Markup Language for IETF RFC Additional vocabularies used in rfc2629.xslt : 'ed'
             Hyperlink Module ............................................. -->
<!-- file: ed-hyperlink.mod
     

     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:43:53+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/module/ed-hyperlink.mod"
     
     ...................................................................... -->

<!-- Hyperlink

       link
-->

<!-- link: = XHTML1:link ............................... -->

<!ENTITY % ed.link.element "INCLUDE">
<![%ed.link.element;[
<!ENTITY % ed.link.content "EMPTY">
<!ENTITY % ed.link.qname "link">
<!ENTITY % ed.link.tagmin.start "-">
<!ENTITY % ed.link.tagmin.end "o">
<![%sgml.tag.minimizable;[
<!ENTITY % ed.link.tagmin "%ed.link.tagmin.start; %ed.link.tagmin.end;">
<!-- end of sgml.tag.minimizable -->]]>
<!ENTITY % ed.link.tagmin "">
<!ELEMENT %ed.link.qname; %ed.link.tagmin; %ed.link.content;>
<!-- end of ed.link.element -->]]>

<!ENTITY % ed.link.attlist "INCLUDE">
<![%ed.link.attlist;[
<!ATTLIST %ed.link.qname;
	href	%URI.datatype;	#REQUIRED
	rel	%LinkTypes.datatype;	#IMPLIED
	title	CDATA	#IMPLIED
	%ed.common.attrib;>
<!-- end of ed.link.attlist -->]]>


<!-- end of ed-hyperlink.mod -->
