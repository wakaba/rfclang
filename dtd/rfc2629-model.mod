<!-- ...................................................................... -->
<!-- Markup Language for IETF RFCs (RFC 2629) Document Model Module ....... -->
<!-- file: rfc2629-model.mod
     
     This is a XML based markup language for IETF RFC documents.
     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:44:39+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/rfc2629-model.mod"
     
     ...................................................................... -->

<!-- Document Model

     This model describes the groupings of element types that
     make up common content models.
-->

<!ENTITY % rfc2629.figure.class "%rfc2629.figure.qname;">

<!-- RFC 2629-bis says that although RFC 2629 allows the figure element to
     be nested within the t element, authors are strongly encouraged to
     avoid this usage. -->
<!ENTITY % rfc2629.t-figure.class "|%rfc2629.figure.class;">

<!ENTITY % rfc2629.hyperlink.class "%rfc2629.xref.qname;|%rfc2629.eref.qname;">

<!ENTITY % rfc2629.list.class "%rfc2629.list.qname;">

<!ENTITY % rfc2629.inline.class "%rfc2629.hyperlink.class;">

<!ENTITY % rfc2629.blockcontent.extra.class "">

<!ENTITY % rfc2629.blockcontent.class "%rfc2629.blockcontent.extra.class;">

<!ENTITY % rfc2629.block.class "%rfc2629.t.qname;|%rfc2629.figure.qname;|%rfc2629.section.qname;">

<!ENTITY % rfc2629.misc.class "%rfc2629.iref.qname;">

<!-- Terminal element representing a meta property -->
<!ENTITY % rfc2629.metaterm.content "(%rfc2629.CTEXT.datatype;)">

<!ENTITY % rfc2629.rfc-header.extra.class "">

<!ENTITY % rfc2629.rfc-header.class "%rfc2629.front.qname;%rfc2629.rfc-header.extra.class;">

<!ENTITY % rfc2629.front-title.extra.class "">

<!ENTITY % rfc2629.front-title.class "%rfc2629.title.qname;%rfc2629.front-title.extra.class;">

<!ENTITY % Misc.extra.class "">

<!-- neither block nor inline, and can
     essentially be used anywhere in the document body -->
<!ENTITY % Misc.class "%rfc2629.misc.class;%Misc.extra.class;">

<!ENTITY % Inline.extra.class "">

<!-- includes all inline elements -->
<!ENTITY % Inline.class "%rfc2629.inline.class;%Inline.extra.class;">

<!-- all inline elements, including %Misc.class; -->
<!ENTITY % Inline.mix "%Inline.class;%Misc.class;">

<!ENTITY % Block.extra.class "">

<!-- includes all block elements -->
<!ENTITY % Block.class "%rfc2629.block.class;%Block.extra.class;">

<!-- includes all block elements plus %Misc.class; -->
<!ENTITY % Block.mix "%Block.class;%Misc.class;">

<!ENTITY % Flow.mix "%Block.class;|%Inline.class;%Misc.class;">


<!-- end of rfc2629-model.mod -->
