<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629)
     
     Datatype module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/12 11:19:35 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629/datatype.mod"
  -->

<!-- [0-9]+ -->
<!ENTITY % rfc2629.NUMBER.datatype "CDATA">
<!-- NUMBER *("," NUMBER) -->
<!ENTITY % rfc2629.NUMBERS.datatype "CDATA">

<!-- "1" / "2" / ... / "31" -->
<!ENTITY % rfc2629.DAY.datatype "CDATA">
<!-- 'January' / 'February' / ... / 'December' -->
<!ENTITY % rfc2629.MONTH.datatype "CDATA">
<!-- 4DIGIT -->
<!ENTITY % rfc2629.YEAR.datatype "CDATA">

<!-- URI Reference -->
<!ENTITY % URI.datatype "CDATA">

<!-- [U+0020-U+007E]+ (attribute value) -->
<!ENTITY % rfc2629.ATEXT.datatype "CDATA">
<!-- [U+0020-U+007E]+ (content of element) -->
<!ENTITY % rfc2629.CTEXT.datatype "#PCDATA">

<!-- *CHAR (content of mixed context element) -->
<!ENTITY % rfc2629.TEXT.datatype "#PCDATA">

<!-- end of datatype.mod -->
