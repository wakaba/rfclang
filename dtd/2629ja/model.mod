<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Document Model module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/model.mod"
  -->
<!-- This module should be included before non-translation 2629's
     document model submodule is included. -->

<!ENTITY % rfc2629.inline.extra.class "">

<!ENTITY % rfc2629.blockcontent.extra.class "|%rfc2629ja.pair.qname;">

<!ENTITY % rfc2629.rfc-header.extra.content ",%rfc2629ja.front.qname;?">

<!ENTITY % rfc2629.front-title.extra.content ",%rfc2629ja.title-ja.qname;">

<!-- Change of RFC 2629 content model -->
<!ENTITY % rfc2629.author.content "((%rfc2629.organization.qname;,%rfc2629.address.qname;?)|%rfc2629.address.qname;)">
<!ENTITY % rfc2629.figure.content "(%rfc2629.preamble.qname;?,(%rfc2629.artwork.qname;|%rfc2629ja.pair.qname;),%rfc2629.postamble.qname;?)">

<!-- end of model.mod -->
