<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     
     Document Model module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/model.mod"
  -->

<!ENTITY % rfc2629.inline.extra.class "">
<!ENTITY % rfc2629.inline.common.class "%rfc2629.xref.qname;|%rfc2629.eref.qname;|%rfc2629.iref.qname;">
<!ENTITY % rfc2629.inline.class "%rfc2629.inline.common.class;%rfc2629.inline.extra.class;">

<!ENTITY % rfc2629.block.extra.class "">
<!ENTITY % rfc2629.block.class "%rfc2629.t.qname;|%rfc2629.figure.qname;|%rfc2629.iref.qname;|%rfc2629.section.qname;%rfc2629.block.extra.class;">

<!ENTITY % rfc2629.blockcontent.extra.class "">
<!ENTITY % rfc2629.blockcontent.class "%rfc2629.blockcontent.extra.class;">

<!ENTITY % rfc2629.rfc-header.extra.content "">
<!ENTITY % rfc2629.rfc-header.content "%rfc2629.front.qname;%rfc2629.rfc-header.extra.content;">

<!ENTITY % rfc2629.front-title.extra.content "">
<!ENTITY % rfc2629.front-title.content "%rfc2629.title.qname;%rfc2629.front-title.extra.content;">

<!-- Content of terminal meta information element -->
<!ENTITY % rfc2629.metaterm.content "(%rfc2629.CTEXT.datatype;)">

<!-- end of model.mod -->
