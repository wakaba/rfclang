<!-- ...................................................................... -->
<!-- Markup Language for IETF RFCs with Japanese Translation Markup Framework
             Document Model Module ........................................ -->
<!-- file: rfc2629ja-model.mod
     
     This is an RFC markup language with additional markup for RFC translations.
     
     Copyright 2010 Wakaba <w@suika.fam.cx>, All Rights Reserved.
     
     Permission to use, copy, modify and distribute this DTD and its
     accompanying documentation for any purpose and without fee is hereby
     granted in perpetuity, provided that the above copyright notice and
     this paragraph appear in all copies.  The copyright holders make no
     representation about the suitability of the DTD for any purpose.
     
     It is provided "as is" without expressed or implied warranty.
     
     Revision: 2010-06-20T04:44:39+00:00 (Generated by mkdtds/1.7)
     
     This DTD module is identified by the SYSTEM identifier:
     
       SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/rfc2629ja-model.mod"
     
     ...................................................................... -->

<!-- Document Model

     This model describes the groupings of element types that
     make up common content models.
-->

<!ENTITY % Edit.class "|%ins.qname;|%del.qname;|%rfc2629ja.note.qname;">

<!ENTITY % Misc.extra.class "">

<!-- neither block nor inline, and can
     essentially be used anywhere in the document body -->
<!ENTITY % Misc.class "%rfc2629.iref.qname;%Edit.class;%Misc.extra.class;">

<!ENTITY % InlStruct.class "%span.qname;">

<!ENTITY % InlPhras.class "|%em.qname;|%dfn.qname;|%rfc2629ja.definition.qname;|%rfc2629ja.word.qname;|%code.qname;|%samp.qname;|%kbd.qname;|%var.qname;|%cite.qname;|%q.qname;|%abbr.qname;|%rfc2629ja.mail.qname;">

<!ENTITY % InlPres.class "|%sub.qname;|%sup.qname;">

<!ENTITY % Inline.extra.class "">

<!ENTITY % Ruby.class "|%ruby.qname;">

<!ENTITY % rfc2629.hyperlink.class "%rfc2629.xref.qname;|%rfc2629.eref.qname;">

<!ENTITY % Anchor.class "|%rfc2629.hyperlink.class;|%rfc2629ja.link.qname;|%rfc2629ja.uri-ref.qname;">

<!ENTITY % InlNoRuby.class "%InlStruct.class;%InlPhras.class;%InlPres.class;%Anchor.class;%Inline.extra.class;">

<!-- includes all inline elements -->
<!ENTITY % Inline.class "%InlNoRuby.class;%Ruby.class;">

<!-- all inline elements, including %Misc.class; -->
<!ENTITY % Inline.mix "%Inline.class;%Misc.class;">

<!ENTITY % InlNoAnchor.class "%Inline.class;">

<!ENTITY % InlNoAnchor.mix "%InlNoAnchor.class;%Misc.class;">

<!ENTITY % NoRuby.content "(#PCDATA|%InlNoRuby.class;%Misc.class;)*">

<!ENTITY % rfc2629ja.CONREF.extra.class "">

<!ENTITY % rfc2629ja.CONREF.content "(#PCDATA|%InlNoAnchor.mix;%rfc2629ja.CONREF.extra.class;)*">

<!-- Terminal element representing a meta property -->
<!ENTITY % rfc2629.metaterm.content "(#PCDATA|%Inline.mix;)*">

<!ENTITY % rfc2629.list.class "%rfc2629.list.qname;">

<!ENTITY % List.class "%ul.qname;|%ol.qname;|%dl.qname;|%rfc2629.list.class;">

<!ENTITY % Table.class "|%table.qname;">

<!ENTITY % BlkStruct.class "%rfc2629.t.qname;|%div.qname;|%rfc2629.section.qname;|%rfc2629ja.insert.qname;">

<!ENTITY % rfc2629.figure.class "%rfc2629.figure.qname;">

<!ENTITY % BlkPhrase.class "|%blockquote.qname;|%rfc2629.figure.class;|%rfc2629ja.example.qname;">

<!ENTITY % BlkSpecial.class "%Table.class;">

<!ENTITY % Block.extra.class "">

<!-- includes all block elements -->
<!ENTITY % Block.class "%BlkStruct.class;%BlkPhrase.class;%BlkSpecial.class;%Block.extra.class;">

<!-- includes all block elements plus %Misc.class; -->
<!ENTITY % Block.mix "%List.class;|%Block.class;%Misc.class;">

<!ENTITY % Flow.mix "%List.class;|%Block.class;|%Inline.class;%Misc.class;">

<!ENTITY % rfc2629.blockcontent.extra.class "">

<!-- Content of rfc2629:t, rfc2629:preamble, rfc2629:postamble -->
<!ENTITY % rfc2629.blockcontent.class "|%rfc2629ja.pair.qname;%rfc2629.blockcontent.extra.class;">

<!ENTITY % rfc2629ja.front.extra.class "|%style.qname;">

<!ENTITY % rfc2629.address.content "(%rfc2629.postal.qname;?,%rfc2629.phone.qname;*,%rfc2629.facsimile.qname;*,%rfc2629.email.qname;*,%rfc2629ja.email.qname;*,%rfc2629.uri.qname;*)">
<!ENTITY % rfc2629.author.content "((%rfc2629.organization.qname;*,%rfc2629ja.organization.qname;*,%rfc2629.address.qname;?)|%rfc2629.address.qname;)?">
<!ENTITY % rfc2629.back.content "(%rfc2629ja.insert.qname;*,%rfc2629.references.qname;*,%rfc2629ja.insert.qname;*,%rfc2629.section.qname;*,%rfc2629ja.insert.qname;*)">
<!ENTITY % rfc2629.figure.content "(%rfc2629.preamble.qname;?,(%rfc2629.artwork.qname;|%rfc2629ja.pair.qname;|%rfc2629ja.artwork.qname;),%rfc2629.postamble.qname;?)">
<!ENTITY % rfc2629.front.content "((%rfc2629.title.qname;|%rfc2629ja.title.qname;|%rfc2629ja.title-ja.qname;)+,%rfc2629.author.qname;*,%rfc2629ja.publisher.qname;?,%rfc2629.date.qname;?,%rfc2629.area.qname;*,%rfc2629.workgroup.qname;*,%rfc2629.keyword.qname;*,%rfc2629.abstract.qname;?,%rfc2629.note.qname;*)">
<!ENTITY % rfc2629.middle.content "(%rfc2629.section.qname;|%rfc2629ja.insert.qname;)+">
<!ENTITY % rfc2629.reference.content "(%rfc2629.front.qname;,%rfc2629.seriesInfo.qname;*,%rfc2629ja.add-info.qname;?)">
<!ENTITY % rfc2629.rfc.content "(%rfc2629.front.qname;,%rfc2629ja.front.qname;?,%rfc2629.middle.qname;,%rfc2629.back.qname;?,%rfc2629ja.back.qname;?)">
<!ENTITY % rfc2629ja..content "(%rfc2629.TEXT.datatype;|%Flow.mix;%rfc2629.blockcontent.class;)*">

<!-- end of rfc2629ja-model.mod -->
