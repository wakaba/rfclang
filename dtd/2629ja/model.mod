<?xml version="1.0" encoding="iso-2022-jp"?>
<!-- Markup Language for IETF RFC (RFC 2629) + Japanese Translation Markup
     
     Document Model module
     
     Copyright 2003 Wakaba <w@suika.fam.cx>.
     Revision: $Date: 2003/09/13 08:59:45 $
     
     SYSTEM "http://suika.fam.cx/gate/cvs/*checkout*/markup/rfc/dtd/2629ja/model.mod"
  -->
<!-- This module should be included before non-translation 2629's
     document model submodule is included. -->

<!-- Inline or block -->
<!ENTITY % Edit.class "| %ins.qname; | %del.qname; | %rfc2629ja.note.qname;|%rfc2629.iref.qname;">
<!ENTITY % Misc.extra "">
<!ENTITY % Misc.class "%Edit.class; %Misc.extra;">

<!-- Inline -->
<!ENTITY % InlStruct.class "%span.qname;">
<!ENTITY % InlPhras.class
     "| %em.qname; | %dfn.qname; | %code.qname;
      | %samp.qname; | %kbd.qname; | %var.qname; | %cite.qname;
      | %abbr.qname; | %q.qname; | %rfc2629ja.mail.qname;
      | %rfc2629ja.definition.qname; | %rfc2629ja.word.qname; ">
<!ENTITY % InlPres.class
     "| %sub.qname; | %sup.qname;">
<!ENTITY % Inline.extra "">
<!ENTITY % Ruby.class "|%ruby.qname;">
<!ENTITY % Anchor.class "|%rfc2629.xref.qname;|%rfc2629.eref.qname;|%rfc2629ja.link.qname;|%rfc2629ja.uri-ref.qname;">

<!ENTITY % InlNoRuby.class "%InlStruct.class; %InlPhras.class; %InlPres.class; %Anchor.class; %Inline.extra;">
<!ENTITY % Inline.class "%InlNoRuby.class; %Ruby.class;">
<!ENTITY % Inline.mix "%Inline.class; %Misc.class;">
<!ENTITY % InlNoAnchor.class "%Inline.class;">
<!ENTITY % InlNoAnchor.mix "%InlNoAnchor.class;%Misc.class;">

<!ENTITY % NoRuby.content "(#PCDATA|%InlNoRuby.class; %Misc.class;)*">

<!ENTITY % rfc2629.inline.extra.class "">
<!ENTITY % rfc2629.inline.class "%Inline.mix;%rfc2629.inline.extra.class;">

<!ENTITY % rfc2629ja.inline.extra.class "">
<!ENTITY % rfc2629ja.inline.class "%Inline.mix;%rfc2629ja.inline.extra.class;">

<!ENTITY % rfc2629ja.CONREF.extra.class "">
<!ENTITY % rfc2629ja.CONREF.content "(#PCDATA|%InlNoAnchor.mix;)*">

<!-- Content of terminal meta information elements -->
<!ENTITY % rfc2629.metaterm.content "(#PCDATA|%rfc2629.inline.class;)*">

<!-- Block -->
<!ENTITY % List.class "%ul.qname;|%ol.qname;|%dl.qname;|%rfc2629.list.qname;">
<!ENTITY % Table.class "|%table.qname;">
<!ENTITY % BlkStruct.class "%rfc2629.t.qname;|%div.qname;|%rfc2629.section.qname;">
<!ENTITY % BlkPhras.class "|%blockquote.qname;|%rfc2629.figure.qname;|%rfc2629ja.example.qname;">
<!ENTITY % BlkSpecial.class "%Table.class;|%rfc2629ja.insert.qname;">
<!ENTITY % Block.extra "">

<!ENTITY % Block.class "%BlkStruct.class; %BlkPhras.class; %BlkSpecial.class; %Block.extra;">
<!ENTITY % Block.mix "%List.class;|%Block.class; %Misc.class;">

<!ENTITY % rfc2629.block.extra.class "">
<!ENTITY % rfc2629.block.class "%Block.mix;%rfc2629.block.extra.class;">
<!ENTITY % rfc2629ja.block.extra.class "">
<!ENTITY % rfc2629ja.block.class "%Block.mix;%rfc2629ja.block.extra.class;">

<!ENTITY % Flow.mix "%List.class;|%Block.class;|%Inline.class; %Misc.class;">

<!-- content of rfc2629:t, rfc2629:preamble, rfc2629:postamble -->
<!ENTITY % rfc2629.blockcontent.extra.class "|%rfc2629ja.pair.qname;">
<!ENTITY % rfc2629.blockcontent.class "%rfc2629.blockcontent.extra.class;">

<!ENTITY % rfc2629.t.content "(%rfc2629.TEXT.datatype;|%Flow.mix;%rfc2629.blockcontent.class;)*">
<!-- Allow rfc2629:list/rfc2629:t/rfc2629:t -->

<!-- header content -->
<!ENTITY % rfc2629.rfc-header.extra.content ",%rfc2629ja.front.qname;?">
<!ENTITY % rfc2629.rfc-header.content "%rfc2629.front.qname;%rfc2629.rfc-header.extra.content;">

<!ENTITY % rfc2629.front-title.extra.content "">
<!ENTITY % rfc2629.front-title.content "%rfc2629.title.qname;%rfc2629.front-title.extra.content;">

<!ENTITY % rfc2629ja.front.extra.class "|%style.qname;">

<!-- Change to RFC 2629 content model -->
<!ENTITY % rfc2629.address.content "(%rfc2629.postal.qname;?,%rfc2629.phone.qname;*,%rfc2629.facsimile.qname;*,%rfc2629.email.qname;*,%rfc2629ja.email.qname;*,%rfc2629.uri.qname;*)">
<!ENTITY % rfc2629.author.content "((%rfc2629.organization.qname;*,%rfc2629ja.organization.qname;*,%rfc2629.address.qname;?)|%rfc2629.address.qname;)?">
<!ENTITY % rfc2629.back.content "(%rfc2629ja.insert.qname;*,%rfc2629.references.qname;*,%rfc2629ja.insert.qname;*,%rfc2629.section.qname;*,%rfc2629ja.insert.qname;*)">
<!ENTITY % rfc2629.figure.content "(%rfc2629.preamble.qname;?,(%rfc2629.artwork.qname;|%rfc2629ja.pair.qname;|%rfc2629ja.artwork.qname;),%rfc2629.postamble.qname;?)">
<!ENTITY % rfc2629.front.content "((%rfc2629.title.qname;|%rfc2629ja.title.qname;|%rfc2629ja.title-ja.qname;)+,%rfc2629.author.qname;*,%rfc2629ja.publisher.qname;?,%rfc2629.date.qname;?,%rfc2629.area.qname;*,%rfc2629.workgroup.qname;*,%rfc2629.keyword.qname;*,%rfc2629.abstract.qname;?,%rfc2629.note.qname;*)">
<!ENTITY % rfc2629.middle.content "(%rfc2629.section.qname;|%rfc2629ja.insert.qname;*)+">
<!ENTITY % rfc2629.reference.content "(%rfc2629.front.qname;,%rfc2629.seriesInfo.qname;*,%rfc2629ja.add-info.qname;?)">
<!ENTITY % rfc2629.rfc.content "(%rfc2629.front.qname;,%rfc2629ja.front.qname;?,%rfc2629.middle.qname;,%rfc2629.back.qname;?,%rfc2629ja.back.qname;?)">


<!-- end of model.mod -->
