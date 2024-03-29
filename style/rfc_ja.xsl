<?xml version="1.0" encoding="iso-2022-jp"?>
<s:stylesheet
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:h="http://www.w3.org/1999/xhtml"
  xmlns:s="http://www.w3.org/1999/XSL/Transform"
  xmlns:ja="http://suika.fam.cx/~wakaba/lang/rfc/translation/"
  xmlns:ed="http://greenbytes.de/2002/rfcedit"
  xmlns:myns="mailto:julian.reschke@greenbytes.de?subject=rcf2629.xslt"
  exclude-result-prefixes="ed ja myns h"
  version="1.0">

  <s:output encoding="iso-2022-jp" indent="yes"
    method="xml" omit-xml-declaration="no"
    doctype-public="-//W3C//DTD XHTML 1.1//EN"
    doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" />
  <!--<s:output encoding="iso-2022-jp" indent="yes"
    method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" />-->
  <s:param name="uri-rfc-prefix" select="'https://suika.suikawiki.org/uri-res/N2L?urn:ietf:rfc:'" />
  <s:param name="uri-std-prefix" select="'https://suika.suikawiki.org/uri-res/N2L?urn:ietf:std:'" />
  <s:param name="uri-bcp-prefix" select="'https://suika.suikawiki.org/uri-res/N2L?urn:ietf:bcp:'" />
  <s:param name="uri-fyi-prefix" select="'https://suika.suikawiki.org/uri-res/N2L?urn:ietf:fyi:'" />
  <s:param name="uri-stylesheet-css" select="'https://suika.suikawiki.org/~wakaba/lang/rfc/translation/rfc-ja-style.css'" />
  
  <!-- <?rfc toc="yes/no"?> (default no)
                            (you can use ja:insert element instead) -->
  <s:param name="include-toc" select="substring-after(translate(/processing-instruction('rfc')[contains(.,'toc=')], '&quot; ', ''),'toc=')" />
  <!-- <?rfc symrefs="yes/no"?> (default no) -->
  <s:param name="use-symbolic-reference" select="substring-after(translate(/processing-instruction('rfc')[contains(.,'symrefs=')], '&quot; ', ''),'symrefs=')" />
  <!-- <?rfc private=" '' or type (display) name "?> -->
  <s:param name="type-private-paper" select="substring-after(translate(/processing-instruction('rfc')[contains(.,'private=')], '&quot; ', ''),'private=')" />
  
  <!-- <?rfc-translation show-rfc-header-category="yes/no"?> (default yes) -->
  <s:param name="show-rfc-header-category" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'show-rfc-header-category=')], '&quot; ', ''),'show-rfc-header-category=')" />
  <!-- <?rfc-translation show-rfc-copyright="yes/no"?> (default yes if > rfc2660) -->
  <s:param name="show-rfc-copyright" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'show-rfc-copyright=')], '&quot; ', ''),'show-rfc-copyright=')" />
  <!-- <?rfc-translation show-rfc-status="yes/no"?> (default yes) -->
  <s:param name="show-rfc-status" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'show-rfc-status=')], '&quot; ', ''),'show-rfc-status=')" />
  <!-- <?rfc-translation show-rfc-acknowledgement-editor="yes/no"?> (default yes if > rfc xxxx) -->
  <s:param name="show-rfc-acknowledgement-editor" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'show-rfc-acknowledgement-editor=')], '&quot; ', ''),'show-rfc-acknowledgement-editor=')" />
  <!-- <?rfc-translation output-http-equiv="yes/no"?> (default no) -->
  <s:param name="output-http-equiv" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'output-http-equiv=')], '&quot; ', ''),'output-http-equiv=')" />
  <!-- <?rfc-translation autoquote-samp-element="yes/no"?> (default yes) -->
  <s:param name="autoquote-samp-element" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'autoquote-samp-element=')], '&quot; ', ''),'autoquote-samp-element=')" />
  
<s:template match="/">
  <s:apply-templates select="rfc" />
</s:template>

<s:template match="rfc">
  <s:variable name="title">
    <s:choose><s:when test="@number"><!-- RFC -->
      RFC <s:value-of select="@number" />: 
    </s:when><s:when test="@docName"><!-- Internet Draft -->
      <s:value-of select="@docName" />
    </s:when></s:choose>
    <s:choose><s:when test="front/ja:title[@xml:lang='ja']">
      <s:value-of select="front/ja:title[@xml:lang='ja']" /> (<s:value-of select="front/title" />)
    </s:when><s:otherwise>
      <s:value-of select="front/title" />
    </s:otherwise></s:choose>
  </s:variable>
  <!--
  <s:processing-instruction name="xml-stylesheet">href="<s:value-of select="$uri-stylesheet-css" />" type="text/css"</s:processing-instruction>
  -->
  <html>
    <head profile="http://suika.fam.cx/~wakaba/lang/rfc/translation/html-profile">
      <s:if test="$output-http-equiv != 'no'">
        <meta http-equiv="Content-Style-Type" content="text/css" />
      </s:if>
      <title><s:value-of select="$title" /></title>
      <link rel="stylesheet" href="{$uri-stylesheet-css}" type="text/css" />
      <s:if test="@number">
        <link rel="alternate" href="{$uri-rfc-prefix}{@number}" hreflang="en" title="RFC {@number}" />
        <link rev="made" href="http://www.rfceditor.org/" title="RFC Editor" />
      </s:if>
      <link rev="translate" href="#rfc-translators-note" />
      <s:if test="front/author">
        <meta name="author"><s:attribute name="content"><s:for-each select="front/author"><s:value-of select="concat(@fullname,', ')" /></s:for-each></s:attribute></meta>
      </s:if>
      <s:if test="front/area"><meta name="ietf-area" content="{front/area}" /></s:if>
      <s:for-each select="front/workgroup">
        <meta name="ietf-workgroup" content="{text()}" />
      </s:for-each>
      <s:if test="front/keyword">
        <meta name="keyword" xml:lang="en"><s:attribute name="content"><s:for-each select="front/keyword"><s:value-of select="concat(text(),', ')" /></s:for-each></s:attribute></meta>
      </s:if>
      <s:if test="ja:front/keyword">
        <meta name="keyword"><s:attribute name="content"><s:for-each select="ja:front/keyword"><s:value-of select="concat(text(),', ')" /></s:for-each></s:attribute></meta>
      </s:if>
      <s:if test="ja:front/h:style">
        <s:apply-templates select="ja:front/h:style" />
      </s:if>
    </head>
    <body>
      <s:apply-templates select="front" />
      <s:apply-templates select="middle" />
      <s:apply-templates select="back" />
      <s:call-template name="translation-back" />
      <s:call-template name="footer" />
    </body>
  </html>
</s:template>

<s:template match="front">
  <!--<s:call-template name="front-cover" />-->
  <div id="rfc--table">
    <s:call-template name="header-table-left" />
    <s:call-template name="header-table-right" />
  </div>
  <s:apply-templates select="title" />
  <s:call-template name="front-status" />
  <s:call-template name="front-copyright" />
  <s:apply-templates select="abstract" />
  <s:apply-templates select="note" />
  <!--<s:call-template name="front-toc" />-->
</s:template>

<!-- based on rfc2629.xslt -->
<s:template name="header-table-left">
  
  <ul id="rfc--table-left">
    <s:choose>
    <s:when test="not($type-private-paper)">
      <li><s:choose>
        <s:when test="/rfc/@ja:workgroup"><s:value-of select="/rfc/@ja:workgroup" /></s:when>
        <s:otherwise>Network Working Group</s:otherwise>
      </s:choose></li>
      <li><s:choose>
        <s:when test="/rfc/@ipr">Internet Draft</s:when>
        <s:when test="/rfc/@number">Request for Comments: <s:value-of select="/rfc/@number"/></s:when>
      </s:choose></li>
      <s:if test="/rfc/@docName">
        <li>&lt;<s:value-of select="/rfc/@docName" />&gt;</li>
      </s:if>
      <s:if test="/rfc/@obsoletes and /rfc/@obsoletes!=''">
        <li>$BGQ;_(B: <s:call-template name="rfclist">
          <s:with-param name="list" select="normalize-space(/rfc/@obsoletes)" />
        </s:call-template></li>
      </s:if>
      <s:if test="/rfc/@seriesNo">
        <li><s:choose>
          <s:when test="/rfc/@category='bcp'"><acronym title="Best Current Practice: $B8=>u:GA11?MQ(B">BCP</acronym>: <s:value-of select="/rfc/@seriesNo" /></s:when>
          <s:when test="/rfc/@category='info'"><acronym title="For Your Information">FYI</acronym>: <s:value-of select="/rfc/@seriesNo" /></s:when>
          <s:when test="/rfc/@category='std'"><acronym title="Standard: $BI8=`(B">STD</acronym>: <s:value-of select="/rfc/@seriesNo" /></s:when>
          <s:otherwise><s:value-of select="concat(/rfc/@category,': ',/rfc/@seriesNo)" /></s:otherwise>
        </s:choose></li>
      </s:if>
      <s:if test="/rfc/@updates and /rfc/@updates!=''">
        <li>$B99?7(B: <s:call-template name="rfclist">
          <s:with-param name="list" select="normalize-space(/rfc/@updates)" />
        </s:call-template></li>
      </s:if>
      <s:if test="$show-rfc-header-category != 'no'">
        <li><span class="t-pair"><span xml:lang="en" class="t-l-en">Category: <s:call-template name="category-name" /></span></span></li>
        <li><span class="t-pair"><span xml:lang="ja" class="t-l-ja">$BJ,N`(B: <s:call-template name="category-name-ja" /></span></span></li>
      </s:if>
      <s:if test="/rfc/@ipr">
        <li><span class="t-pair"><span xml:lang="en" class="t-l-en">Expires: <s:call-template name="expiry-date" /></span></span></li>
        <li><span class="t-pair"><span xml:lang="ja" class="t-l-ja">$BM-8z4|8B(B: <s:call-template name="expiry-date-ja" /></span></span></li>
      </s:if>
    </s:when>
    <s:otherwise><!-- private -->
      <li><s:value-of select="$type-private-paper" /></li>
    </s:otherwise>
    </s:choose>
  </ul>
</s:template>

<!-- based on rfc2629.xslt -->
<s:template name="header-table-right">
  <ul id="rfc--table-right">
    <s:for-each select="author">
      <s:choose>
      <s:when test="@ja:header-name">
        <li><s:value-of select="@ja:header-name" /></li>
      </s:when>
      <s:when test="@surname">
        <li>
          <s:attribute name="title"><s:value-of select="@fullname" /></s:attribute>
          <s:value-of select="concat(@initials,' ',@surname)" />
        </li>
      </s:when>
      <s:when test="@fullname">
        <li><s:value-of select="@fullname" /></li>
      </s:when>
      </s:choose>
      <s:variable name="org"><s:choose>
        <s:when test="organization/@abbrev"><s:value-of select="organization/@abbrev" /></s:when>
        <s:otherwise><s:value-of select="organization" /></s:otherwise>
      </s:choose></s:variable>
      <s:variable name="orgOfFollowing"><s:choose>
        <s:when test="following-sibling::node()/organization/@abbrev"><s:value-of select="following-sibling::node()/organization/@abbrev" /></s:when>
        <s:otherwise><s:value-of select="following-sibling::node()/organization" /></s:otherwise>
      </s:choose></s:variable>
      <s:if test="$org != $orgOfFollowing">
        <li>
          <s:if test="$org != organization"><s:attribute name="title"><s:value-of select="normalize-space(organization)" /></s:attribute></s:if>
          <s:value-of select="$org" />
        </li>
      </s:if>
    </s:for-each>
    <li><span class="t-pair"><span xml:lang="en" class="t-l-en">
      <s:value-of select="concat(date/@day,' ',date/@month,' ',date/@year)" />
    </span></span></li>
    <li><span class="t-pair"><span xml:lang="ja" class="t-l-ja">
      <s:value-of select="date/@year" />$BG/(B<s:call-template name="month-ja">
        <s:with-param name="month" select="date/@month" />
      </s:call-template><s:if test="date/@day"><s:value-of select="date/@day" />$BF|(B</s:if>
    </span></span></li>
  </ul>
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template name="expiry-date">
  <s:variable name="date" select="/rfc/front/date" />
  
  <s:choose>
  <s:when test="$date/@month='January'"><s:value-of select="concat($date/@day,' July ',$date/@year)" /></s:when>
  <s:when test="$date/@month='February'"><s:value-of select="concat($date/@day,' August ',$date/@year)" /></s:when>
  <s:when test="$date/@month='March'"><s:value-of select="concat($date/@day,' September ',$date/@year)" /></s:when>
  <s:when test="$date/@month='April'"><s:value-of select="concat($date/@day,' October ',$date/@year)" /></s:when>
  <s:when test="$date/@month='May'"><s:value-of select="concat($date/@day,' November ',$date/@year)" /></s:when>
  <s:when test="$date/@month='June'"><s:value-of select="concat($date/@day,' December ',$date/@year)" /></s:when>
  <s:when test="$date/@month='July'"><s:value-of select="concat($date/@day,' January ',$date/@year + 1)" /></s:when>
  <s:when test="$date/@month='August'"><s:value-of select="concat($date/@day,' February ',$date/@year + 1)" /></s:when>
  <s:when test="$date/@month='September'"><s:value-of select="concat($date/@day,' March ',$date/@year + 1)" /></s:when>
  <s:when test="$date/@month='October'"><s:value-of select="concat($date/@day,' April ',$date/@year + 1)" /></s:when>
  <s:when test="$date/@month='November'"><s:value-of select="concat($date/@day,' May ',$date/@year + 1)" /></s:when>
  <s:when test="$date/@month='December'"><s:value-of select="concat($date/@day,' June ',$date/@year + 1)" /></s:when>
  <s:otherwise><strong class="t-invalid">WRONG SYNTAX FOR MONTH</strong></s:otherwise>
  </s:choose>
</s:template>

<!-- based on rfc2629.xslt -->
<s:template name="expiry-date-ja">
  <s:variable name="date" select="/rfc/front/date" />
  
  <s:choose>
  <s:when test="$date/@month='January'"><s:value-of select="concat($date/@year,'$BG/(B7$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='February'"><s:value-of select="concat($date/@year,'$BG/(B8$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='March'"><s:value-of select="concat($date/@year,'$BG/(B9$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='March'"><s:value-of select="concat($date/@year,'$BG/(B10$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='May'"><s:value-of select="concat($date/@year,'$BG/(B11$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='June'"><s:value-of select="concat($date/@year,'$BG/(B12$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='July'"><s:value-of select="concat($date/@year + 1,'$BG/(B1$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='August'"><s:value-of select="concat($date/@year + 1,'$BG/(B2$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='September'"><s:value-of select="concat($date/@year + 1,'$BG/(B3$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='October'"><s:value-of select="concat($date/@year + 1,'$BG/(B4$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='November'"><s:value-of select="concat($date/@year + 1,'$BG/(B5$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:when test="$date/@month='December'"><s:value-of select="concat($date/@year + 1,'$BG/(B6$B7n(B',$date/@day)" /><s:if test="$date/@day">$BF|(B</s:if></s:when>
  <s:otherwise><strong class="t-invalid">$BIT@5$J7n$G$9(B</strong></s:otherwise>
  </s:choose>
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template name="rfclist">
  <s:param name="list" />
  <s:choose>
  <s:when test="contains($list,',')">
    <s:variable name="rfcNo" select="substring-before($list,',')" />
    <a href="{concat($uri-rfc-prefix,$rfcNo)}" title="{concat('RFC ',$rfcNo)}"><s:value-of select="$rfcNo" /></a>,
    <s:call-template name="rfclist">
      <s:with-param name="list" select="normalize-space(substring-after($list,','))" />
    </s:call-template>
  </s:when>
  <s:otherwise>
    <s:variable name="rfcNo" select="$list" />
    <a href="{concat($uri-rfc-prefix,$rfcNo)}" title="{concat('RFC ',$rfcNo)}"><s:value-of select="$rfcNo" /></a>
  </s:otherwise>
  </s:choose>
</s:template>

<s:template match="/rfc/front/title">
  <s:choose>
  <s:when test="/rfc/front/ja:title[@xml:lang='ja']">
    <div class="t-pair t-heading" id="rfc-title">
      <h1 class="rfc-title t-l-en" xml:lang="en"><s:value-of select="/rfc/front/title"/></h1>
      <h1 class="rfc-title t-l-ja" xml:lang="ja"><s:value-of select="/rfc/front/ja:title[@xml:lang='ja']"/></h1>
    </div>
  </s:when>
  <s:otherwise>
    <h1 class="rfc-title" id="rfc-title"><s:value-of select="/rfc/front/title"/></h1>
  </s:otherwise>
  </s:choose>
  <s:if test="/rfc/@docName">
    <div class="rfc-docname" id="rfc-docname">&lt;<s:value-of select="/rfc/@docName"/>&gt;</div>
  </s:if>  
</s:template>

<s:template name="front-status">
  <s:if test="$show-rfc-status != 'no'">
    <div id="rfc-status" class="rfc-section">
      <div class="t-pair">
        <h1 xml:lang="en" class="t-l-en">Status of this Memo</h1>
        <h1 xml:lang="ja" class="t-l-ja">$B$3$N%a%b$N0LCVIU$1(B</h1>
      </div>
    
      <s:choose>
      <s:when test="/rfc/@ipr">
        <div class="rfc-t">
          <div class="t-pair">
          <p class="t-l-en" xml:lang="en">
            This document is an Internet-Draft and is 
            <s:choose>
            <s:when test="/rfc/@ipr = 'full2026'">
            in full conformance with all provisions of Section 10 
            of RFC2026.  
            </s:when>
          <s:when test="/rfc/@ipr = 'noDerivativeWorks2026'">
          in full conformance with all provisions of Section 10 of 
          RFC2026 except that the right to produce derivative works is 
          not granted.   
          </s:when>
          <s:when test="/rfc/@ipr = 'noDerivativeWorksNow'">
          in full conformance with all provisions of Section 10 of RFC2026 
          except that the right to produce derivative works is not granted.
          (If this document becomes part of an IETF working group activity,
          then it will be brought into full compliance with Section 10   
          of RFC2026.)  
          </s:when>
          <s:when test="/rfc/@ipr = 'none'">
          <strong>NOT</strong> offered in accordance with Section 10 of 
          RFC2026,  
          and the author does not provide the IETF with any rights other  
          than to publish as an Internet-Draft.  
          </s:when>
          <s:otherwise><strong class="t-invalid">[CONFORMANCE 
          UNDEFINED.]</strong></s:otherwise>
          </s:choose>
          
          Internet-Drafts are working documents of the Internet Engineering
          Task Force (IETF), its areas, and its working groups.  
          Note that other groups may also distribute working documents as 
          Internet-Drafts.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $B$3$NJ8=q$O(B Internet Draft $B$G$"$j!"(B
          <s:choose>
          <s:when test="/rfc/@ipr = 'full2026'">RFC 2026
            $B$NBh(B10$B>O$NA4$F$NMW7o$rK~$?$7$F$$$^$9!#(B
          </s:when>
          <s:when test="/rfc/@ipr = 'noDerivativeWorks2026'">
            $BGI@8E*:n6H8"$rG'$a$J$$$3$H$r=|$-!"(B RFC 2026
            $B$NBh(B10$B>O$NA4$F$NMW7o$rK~$?$7$F$$$^$9!#(B
          </s:when>
          <s:when test="/rfc/@ipr = 'noDerivativeWorksNow'">
            $BGI@8E*:n6H8"$rG'$a$J$$$3$H$r=|$-!"(BRFC 2026
            $B$NBh(B10$B>O$NA4$F$NMW7o$rK~$?$7$F$$$^$9!#(B
            ($B$3$NJ8=q$,(B <a href="http://www.ietf.org/">IETF</a> 
            $B:n6HIt2q$N3hF0$N0lIt$K$J$C$?6G$K$O!"(BRFC 2026
            $B$NBh(B10$B>O$K40A4$K=>$&$3$H$K$J$j$^$7$g$&!#(B)
          </s:when>
          <s:when test="/rfc/@ipr = 'none'">
            RFC 2026
            $B$NBh(B10$B>O$K$O=>$C$F(B<strong title="NOT">$B$*$i$:(B</strong>$B!"(B
            $BCx<T$O(B <a href="http://www.ietf.org/">IETF</a> $B$K!"(B
            Internet-Draft $B$H$7$FH/9T$9$k0J30$N$$$+$J$k8"Mx$r$bM?$($k$b$N$G$O$"$j$^$;$s!#(B
          </s:when>
          <s:otherwise><strong class="t-invalid">$BE,9g@-$OL$Dj5A$G$9(B</strong>$B!#(B</s:otherwise>
          </s:choose>
          
          Internet-Drafts $B$O(B <a href="http://www.ietf.org/">Internet
          $B5;=QFCJLD4::0Q0w2q(B (IETF)</a> $B$d$=$NNN0h0Q0w2q(B (area),
          $B:n6HIt2q$N:n6HJ8=q$G$9!#$J$*!"B>$NCDBN$b:n6HJ8=q$r(B
          Internet-Draft $B$H$7$FG[I[$9$k$3$H$,=PMh$^$9!#(B
        </p>
        </div>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
          Internet-Drafts are draft documents valid for a maximum of 
          six months and may be updated, replaced, or obsoleted by other 
          documents at any time.
          It is inappropriate to use Internet-Drafts as reference 
          material or to cite them other than as $B!H(Bwork in progress$B!I(B.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          Internet-Draft 
          $B$O:GBg(B6$B%v7n4VM-8z$J860FJ8=q$G!"$$$D2?;~B>$NJ8=q$K$h$j99?7$5$l$?$jCV$-49$($i$l$?$jGQ;_$5$l$?$j$9$k$+$bJ,$+$j$^$;$s!#(B
          $B!V:n6HCf!W(B $B$HCG$i$:$K(B Internet-Draft 
          $B$r;qNA$H$7$F;2>H$7$?$j0zMQ$7$?$j$9$k$N$OITE,@Z$G$9!#(B
        </p>
        </div>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
          The list of current Internet-Drafts can be accessed at
          &lt;<a href='http://www.ietf.org/ietf/1id-abstracts.txt'>http://www.ietf.org/ietf/1id-abstracts.txt</a>&gt;.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $B8=:_$N(B Internet-Drafts $B$N0lMw$O(B
          &lt;<a href='http://www.ietf.org/ietf/1id-abstracts.txt'>http://www.ietf.org/ietf/1id-abstracts.txt</a>&gt;
          $B$GF~<j=PMh$^$9!#(B
        </p>
        </div>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
          The list of Internet-Draft Shadow Directories can be accessed at
          &lt;<a href='http://www.ietf.org/shadow.html'>http://www.ietf.org/shadow.html</a>&gt;.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          Internet-Draft Shadow Directories $B$N0lMw$O(B
          &lt;<a href='http://www.ietf.org/shadow.html'>http://www.ietf.org/shadow.html</a>&gt;
          $B$GF~<j=PMh$^$9!#(B
        </p>
        </div>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
          This Internet-Draft will expire in 
          <s:call-template name="expiry-date" />.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $B$3$N(B Internet-Draft $B$O(B <s:call-template name="expiry-date-ja" />
          $B$K4|8B$,@Z$l$^$9!#(B
        </p>
        </div>
      </div>
    </s:when>
    
    <s:when test="/rfc/@category='bcp'">
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
      This document specifies an Internet Best Current Practice 
      for the Internet Community, and requests discussion and 
      suggestions for improvements.
      Distribution of this memo is unlimited.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $B$3$N%a%b$O!"(B Internet $B<R2q8~$1$K(B Internet $B8=>u:GA11?MQ$r@bL@$7!"2~NI$N0Y$N5DO@$dDs0F$r5a$a$^$9!#$3$N%a%b$NG[I[$O@)8B$7$^$;$s!#(B
        </p>
        </div>
      </div>
    </s:when>
    
    <s:when test="/rfc/@category='exp'">
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
      This memo defines an Experimental Protocol for the Internet community.
      It does not specify an Internet standard of any kind.
      Discussion and suggestions for improvement are requested.
      Distribution of this memo is unlimited.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $B$3$N%a%b$O!"(B Internet $B<R2q8~$1$N<B83E*%W%m%H%3%k$rDj5A$9$k$b$N$G$9!#$$$+$J$k<oN`$N(B
          Internet $BI8=`$r5,Dj$9$k$b$N$G$b$"$j$^$;$s!#2~NI$N0Y$N5DO@$dDs0F$r5a$a$^$9!#$3$N%a%b$NG[I[$O@)8B$7$^$;$s!#(B
        </p>
        </div>
      </div>
    </s:when>
    
    <s:when test="/rfc/@category='historic'">
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
      This memo describes a historic protocol for the Internet community.
      It does not specify an Internet standard of any kind.
      Distribution of this memo is unlimited.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $B$3$N%a%b$O!"(B Internet $B<R2q$KNr;KE*%W%m%H%3%k$r@bL@$9$k$b$N$G$9!#$$$+$J$k<oN`$N(B
          Internet $BI8=`$r5,Dj$9$k$b$N$G$b$"$j$^$;$s!#$3$N%a%b$NG[I[$O@)8B$7$^$;$s!#(B
        </p>
        </div>
      </div>
    </s:when>
    
    <s:when test="/rfc/@category='info' or /rfc/@category=''">
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
          This memo provides information for the Internet community.
          It does not specify an Internet standard of any kind.
          Distribution of this memo is unlimited.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $B$3$N%a%b$O!"(B Internet $B<R2q$K>pJs$rDs6!$7$^$9!#$$$+$J$k<oN`$N(B
          Internet $BI8=`$r5,Dj$9$k$b$N$G$b$"$j$^$;$s!#$3$N%a%b$NG[I[$O@)8B$7$^$;$s!#(B
        </p>
        </div>
      </div>
    </s:when>
    
    <s:when test="/rfc/@category='std'">
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
      This document specifies an Internet standards track protocol 
      for the Internet community, and requests discussion and 
      suggestions for improvements.
      Please refer to the current edition of the 
      $B!H(BInternet Official Protocol Standards$B!I(B (STD 1) for the 
      standardization state and status of this	
      protocol. Distribution of this memo is unlimited.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $B$3$NJ8=q$O!"(B Internet $B<R2q8~$1(B Internet 
          $BI8=`2=2aDx%W%m%H%3%k$r5,Dj$7!"2~NI$N0Y$N5DO@$HDs0F$r5a$a$k$b$N$G$9!#$3$N%W%m%H%3%k$NI8=`2=>u67$K$D$$$F$O!"!X(BInternet Official Protocol Standard$B!Y(B (STD 1) 
          $B$r;2>H$7$F2<$5$$!#$3$N%a%b$NG[I[$O@)8B$7$^$;$s!#(B
        </p>
        </div>
      </div>
    </s:when>
    
      <s:otherwise>
        <p class="rfc-t">UNSUPPORTED CATEGORY.</p>
      </s:otherwise>
      </s:choose>
    </div>
  </s:if>
</s:template>

<s:template name="front-copyright">
  <s:choose>
  <s:when test="/rfc/@ipr = 'none'"></s:when>
  <s:when test="/rfc/@number &lt; 2220"></s:when>
  <s:when test="$show-rfc-copyright != 'no'">
    <div id="rfc-copyright-notice" class="rfc-section">
      <div class="t-pair">
        <h1 xml:lang="en" class="t-l-en">Copyright Notice</h1>
        <h1 xml:lang="ja" class="t-l-ja">$BCx:n8"I=<((B</h1>
      </div>
      
      <div class="t-pair t-hide-no">
        <p class="t-l-en" xml:lang="en">Copyright &#xA9; 
        <a href="http://www.isoc.org/">The Internet Society</a> 
        (<s:value-of select="/rfc/front/date/@year" />). 
        All Rights Reserved.</p>
        <p class="t-l-ja" xml:lang="ja">$BCx:n8"(B &#xa9; 
        <a href="http://www.isoc.org/">The Internet Society</a> 
        (<s:value-of select="/rfc/front/date/@year" />)$B!#A48"J]N1!#(B</p>
      </div>
    </div>
  </s:when>
  </s:choose>
</s:template>


<!-- based on rfc2629.xslt -->
<s:template match="note">
  <div class="rfc-section rfc-note">
    <s:choose>
    <s:when test="@title = 'IESG Note'">
      <s:attribute name="id">rfc-note-iesg</s:attribute>
      <div class="t-pair t-heading">
        <h1 xml:lang="en" class="t-l-en"><a href="#rfc-note-iesg" class="self">IESG Note</a></h1>
        <h1 xml:lang="ja" class="t-l-ja"><a href="#rfc-note-iesg" class="self">IESG $BCm5-(B</a></h1>
      </div>
    </s:when>
    <s:otherwise>
      <h1><s:value-of select="@title" /></h1>
    </s:otherwise>
    </s:choose>
    <s:apply-templates />
  </div>
</s:template>

<s:template match="middle">
  <s:apply-templates />
</s:template>

<!-- based on rfc2629.xslt -->
<s:template match="section">
  <s:variable name="sectionNumber">
    <s:choose>
    <s:when test="@myns:unnumbered or ancestor::ja:back"></s:when>
    <s:otherwise><s:call-template name="section-number" /></s:otherwise>
    </s:choose>
  </s:variable>
  
  <s:variable name="title-ja"><s:call-template name="section-name-ja">
    <s:with-param name="node" select="." />
  </s:call-template></s:variable>
  
  <s:variable name="element-name">
    <s:choose>
    <s:when test="count(ancestor::section) = 0">h1</s:when>
    <s:when test="count(ancestor::section) = 1">h2</s:when>
    <s:when test="count(ancestor::section) = 2">h3</s:when>
    <s:when test="count(ancestor::section) = 3">h4</s:when>
    <s:when test="count(ancestor::section) = 4">h5</s:when>
    <s:otherwise>h6</s:otherwise>
    </s:choose>
  </s:variable>
  
  <div class="rfc-section">
    <s:if test="$sectionNumber!=''">
      <s:attribute name="id">rfc.section.<s:value-of select="$sectionNumber" /></s:attribute>
    </s:if>
    <div>
      <s:if test="$title-ja!=''"><s:attribute name="class">t-pair t-heading</s:attribute></s:if>
      <s:if test="@anchor"><s:attribute name="id"><s:value-of select="@anchor" /></s:attribute></s:if>
      <s:element name="{$element-name}">
        <s:if test="$title-ja!=''">
          <s:attribute name="xml:lang">en</s:attribute>
          <s:attribute name="class">t-l-en</s:attribute>
        </s:if>
        <s:if test="$sectionNumber!=''"><s:value-of select="$sectionNumber" />. </s:if>
        <s:value-of select="@title" />
      </s:element>
      <s:if test="$title-ja!=''">
        <s:element name="{$element-name}">
          <s:attribute name="xml:lang">ja</s:attribute>
          <s:attribute name="class">t-l-ja</s:attribute>
          <s:if test="$sectionNumber!=''">
            <s:value-of select="$sectionNumber" />. 
          </s:if>
          <s:value-of select="$title-ja" />
        </s:element>
      </s:if>
    </div>
    <s:apply-templates />
  </div>
</s:template>

<s:template name="section-name-ja">
  <s:param name="node" />
  <s:param name="return-en" />
  <s:variable name="title-small"><s:value-of select="translate($node/@title,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" /></s:variable>
  
  <s:choose>
  <s:when test="$node/@ja:title-ja"><s:value-of select="$node/@ja:title-ja" /></s:when>
  <s:when test="$title-small = 'acknowledgements'">$B<U<-(B</s:when>
  <s:when test="$title-small = 'authors address'">$BCx<T$NO"Mm@h(B</s:when>
  <s:when test='$title-small = "authors&apos; addresses"'>$BCx<T$NO"Mm@h(B</s:when>
  <s:when test="$title-small = 'background information'">$BGX7J@bL@(B</s:when>
  <s:when test="$title-small = 'conclution'">$B$^$H$a(B</s:when>
  <s:when test="$title-small = 'definition'">$BDj5A(B</s:when>
  <s:when test="$title-small = 'description'">$B@bL@(B</s:when>
  <s:when test="$title-small = 'formal syntax'">$B7A<0E*9=J8(B</s:when>
  <s:when test="$title-small = 'full copyright statement'">$B40A4$JCx:n8"@<L@(B</s:when>
  <s:when test="$title-small = 'iana considerations'">IANA $B$K4X$7$F(B</s:when>
  <s:when test="$title-small = 'introduction'">$B$O$8$a$K(B</s:when>
  <s:when test="$title-small = 'mime considerations'">MIME $B$K4X$7$F(B</s:when>
  <s:when test="$title-small = 'reference'">$B;29MJ88%(B</s:when>
  <s:when test="$title-small = 'references'">$B;29MJ88%(B</s:when>
  <s:when test="$title-small = 'requirements'">$BI,MWMW7o(B</s:when>
  <s:when test="$title-small = 'security considerations'">$B0BA4@-$K4X$7$F(B</s:when>
  <s:otherwise><s:if test="$return-en"><s:choose>
    <s:when test="$node/@title"><s:value-of select="$node/@title" /></s:when>
  </s:choose></s:if></s:otherwise>
  </s:choose>
</s:template>

<!-- Copied from rfc2629.xslt -->
<s:template name="section-number">
  <s:choose>
  <s:when test="ancestor::back"><s:number count="ed:del|ed:ins|section" level="multiple" format="A.1.1.1.1.1.1.1" /></s:when>
  <s:otherwise><s:number count="ed:del|ed:ins|section" level="multiple"/></s:otherwise>
  </s:choose>
</s:template>
<s:template name="section-paragraph-number">
  <s:if test="ancestor::section">
    <s:for-each select="ancestor::section[1]"><s:call-template name="section-number" />.p.</s:for-each><s:number count="t|figure" />
  </s:if>
</s:template>

<!-- based on rfc2629.xslt -->
<s:template match="t">
  <s:variable name="paragraph-number">
    <s:call-template name="section-paragraph-number" />
  </s:variable>
  
  <s:variable name="element-name">
    <s:choose>
    <s:when test="ja:pair">div</s:when>
    <s:when test=".//list">div</s:when>
    <s:otherwise>p</s:otherwise>
    </s:choose>
  </s:variable>
  <s:element name="{$element-name}">
    <s:attribute name="class">rfc-t</s:attribute>
    <s:if test="string-length($paragraph-number) &gt; 0">
      <s:attribute name="id">rfc.section.<s:value-of select="$paragraph-number" /></s:attribute>
    </s:if>
    <s:choose>
    <s:when test="text() = 'Security issues are not discussed in this memo.'">
      <div class="t-pair">
        <p xml:lang="en" class="t-l-en">Security issues are not discussed in this memo.</p>
        <p xml:lang="ja" class="t-l-ja">$B0BA4@-LdBj$O$3$N%a%b$G$O<h$j07$C$F$$$^$;$s!#(B</p>
      </div>
    </s:when>
    <s:otherwise><s:apply-templates /></s:otherwise>
    </s:choose>
  </s:element>
</s:template>

<s:template match="list[@style='empty' or not(@style)]">
  <ul class="rfc-list-empty">
    <s:apply-templates />
  </ul>
</s:template>

<s:template match="list[@style='empty' or not(@style)]/t">
  <li>
    <s:if test="@ja:anchor"><s:attribute name="id"><s:value-of select="@ja:anchor" /></s:attribute></s:if>
    <s:apply-templates />
  </li>
</s:template>

<s:template match="list[@style='hanging']">
  <dl class="rfc-list-hanging">
    <s:apply-templates />
  </dl>
</s:template>

<s:template match="list[@style='hanging']/t">
  <s:choose>
  <s:when test="@ja:anchor">
    <dt id="{@ja:anchor}"><a href="#{@ja:anchor}" class="self"><s:value-of select="@hangText" /></a></dt>
  </s:when>
  <s:otherwise><dt><s:value-of select="@hangText" /></dt></s:otherwise>
  </s:choose>
  <s:if test="@ja:hangText-ja">
    <dt xml:lang="ja" class="t-l-ja"><s:value-of select="@ja:hangText-ja" /></dt>
  </s:if>
  <dd><s:apply-templates /></dd>
</s:template>

<s:template match="list[@style='numbers']">
  <ol class="rfc-list-numbers text">
    <s:apply-templates />
  </ol>
</s:template>
<s:template match="list[@style='symbols']">
  <ul class="rfc-list-symbols text">
    <s:apply-templates />
  </ul>
</s:template>

<s:template match="list[@style='numbers' or @style='symbols']/t">
  <li>
    <s:apply-templates />
  </li>
</s:template>

<s:template match="figure">
  <div class="rfc-figure">
    <s:if test="@anchor!=''">
      <s:attribute name="id"><s:value-of select="@anchor" /></s:attribute>
    </s:if>
    
    <s:choose>
    <s:when test="@title!='' or @anchor!=''">
      <span class="rfc-figure-id"><s:attribute name="id">rfc.figure.<s:number level="any" count="figure[@title!='' or @anchor!='']" /></s:attribute>&#xA0;</span>
    </s:when>
    <s:otherwise>
      <span class="rfc-figure-id"><s:attribute name="id">rfc.figure.u.<s:number level="any" count="figure[not(@title!='' or @anchor!='')]" /></s:attribute>&#xA0;</span>
    </s:otherwise>
    </s:choose>
    
    <s:apply-templates />
    
    <s:if test="@title!='' or @anchor!=''">
      <s:variable name="n"><s:number level="any" count="figure[@title!='' or @anchor!='']" /></s:variable>
      <div class="t-pair rfc-figure-title">
        <div xml:lang="en" class="t-l-en">Figure 
          <s:value-of select="$n"/><s:if test="@title!=''">: <s:value-of select="@title" /></s:if>
        </div>
        <div xml:lang="ja" class="t-l-ja">$B?^(B 
          <s:value-of select="$n"/><s:choose>
          <s:when test="@ja:title-ja!=''">: <s:value-of select="@ja:title-ja" /></s:when>
          <s:when test="@title!=''">: <s:value-of select="@title" /></s:when>
        </s:choose></div>
      </div>
    </s:if>
  </div>
</s:template>

<s:template match="preamble">
  <div class="rfc-preamble"><s:apply-templates /></div>
</s:template>

<s:template match="postamble">
  <div class="rfc-postamble"><s:apply-templates /></div>
</s:template>

<s:template match="artwork">
  <pre class="rfc-artwork" xml:space="preserve"><s:value-of select="text()" /></pre>
</s:template>
<!-- artwork with XML structure -->
<s:template match="ja:artwork">
  <div class="rfc-t-artwork"><s:apply-templates select="*[not(name()='artwork')]" /></div>
</s:template>

<s:template match="ja:example">
  <div class="t-example">
    <s:if test="not(@no-title)">
      <div class="t-title t-pair">
        <div class="t-l-en" xml:lang="en"><s:choose>
          <s:when test="@title"><s:value-of select="@title" /></s:when>
          <s:otherwise>Example: </s:otherwise>
        </s:choose></div>
        <div class="t-l-ja" xml:lang="ja"><s:choose>
          <s:when test="@title"><s:value-of select="@title-ja" /></s:when>
          <s:otherwise>$BNc(B: </s:otherwise>
        </s:choose></div>
      </div>
    </s:if>
    
    <s:choose>
    <s:when test="@xml:space = 'preserve'">
      <pre xml:space="preserve"><s:value-of select="text()" /></pre>
    </s:when>
    <s:otherwise><div><s:apply-templates /></div></s:otherwise>
    </s:choose>
  </div>
</s:template>

<s:template match="ja:pair">
    <div class="t-pair">
      <s:if test="@ja:hide = 'no'">
        <s:attribute name="class">t-hide-no</s:attribute>
      </s:if>
      <s:for-each select="ja:l">
        <p xml:lang="{@xml:lang}" class="t-l-{@xml:lang}">
          <s:apply-templates />
        </p>
      </s:for-each>
    </div>
</s:template>

<s:template match="reference//ja:pair">
    <span class="t-pair">
      <s:for-each select="ja:l">
        <span xml:lang="{@xml:lang}" class="t-l-{@xml:lang}">
          <s:apply-templates />
        </span>
      </s:for-each>
    </span>
</s:template>

<s:template name="month-ja">
  <s:param name="month" />
  <s:variable name="m"><s:value-of select="translate($month,'ABCDEFGJLMNOPRSTUVY','abcdefgjlmnoprstuvy')" /></s:variable>
  <s:choose>
  <s:when test="contains($m, 'jan')">1$B7n(B</s:when>
  <s:when test="contains($m, 'feb')">2$B7n(B</s:when>
  <s:when test="contains($m, 'mar')">3$B7n(B</s:when>
  <s:when test="contains($m, 'apr')">4$B7n(B</s:when>
  <s:when test="contains($m, 'may')">5$B7n(B</s:when>
  <s:when test="contains($m, 'jun')">6$B7n(B</s:when>
  <s:when test="contains($m, 'jul')">7$B7n(B</s:when>
  <s:when test="contains($m, 'aug')">8$B7n(B</s:when>
  <s:when test="contains($m, 'sep')">9$B7n(B</s:when>
  <s:when test="contains($m, 'oct')">10$B7n(B</s:when>
  <s:when test="contains($m, 'nov')">11$B7n(B</s:when>
  <s:when test="contains($m, 'dec')">12$B7n(B</s:when>
  <s:otherwise><s:value-of select="$month" /></s:otherwise>
  </s:choose>
</s:template>

<s:template name="category-name">
  <s:choose>
  <s:when test="/rfc/@category='bcp'">Best Current Practice</s:when>
  <s:when test="/rfc/@category='exp'">Experimental</s:when>
  <s:when test="/rfc/@category='info'">Informational</s:when>
  <s:when test="/rfc/@category=''">Informational</s:when>
  <s:when test="/rfc/@category='std'">Standards Track</s:when>
  <s:otherwise>(category missing or unknown)</s:otherwise>
  </s:choose>
</s:template>
<s:template name="category-name-ja">
  <s:choose>
  <s:when test="/rfc/@category='bcp'">$B8=>u:GA11?MQ(B</s:when>
  <s:when test="/rfc/@category='exp'">$B<B83E*(B</s:when>
  <s:when test="/rfc/@category='info'">$B>pJsDs6!(B</s:when>
  <s:when test="/rfc/@category=''">$B>pJsDs6!(B</s:when>
  <s:when test="/rfc/@category='std'">$BI8=`2=2aDx(B</s:when>
  <s:otherwise>($BJ,N`L5$7$^$?$OITL@(B)</s:otherwise>
  </s:choose>
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template match="vspace[not(@blankLines) or @blankLines = '0']">
  <br class="rfc-vspace" />
</s:template>
<s:template match="vspace[@blankLines = '1']">
  <br class="rfc-vspace" /><br class="rfc-vspace" />
</s:template>
<s:template match="vspace[@blankLines &gt; 1]">
  <br class="rfc-vspace" /><span class="rfc-vspace" style="display: block; visibility: hidden; margin-bottom: {@blankLines - 2}em">&#xA0;</span>
</s:template>

<s:template match="ja:insert[@ja:section='toc' or @section='toc']">
  <!--<s:call-template name="table-of-contents" />-->
</s:template>
<s:template match="ja:insert[@ja:section='index' or @section='index']">
  <!--<s:call-template name="back-index" />-->
</s:template>
<s:template match="ja:insert[@ja:section='references' or @section='references']">
  <s:apply-templates select="/rfc//back/references" />
</s:template>
<s:template match="ja:insert[@ja:section='author-address' or @section='author-address']">
  <s:call-template name="back-author-address" />
</s:template>
<s:template match="ja:insert[@ja:section='full-copyright' or @section='full-copyright']">
  <s:call-template name="back-copyright" />
</s:template>
<s:template match="ja:insert[@ja:section='acknowledgement-editor' or @section='acknowledgement-editor']">
  <s:call-template name="back-acknowledgement-editor" />
</s:template>

<!-- back -->
<s:template match="back">
  <s:if test="not(//ja:insert[@ja:section='references' or @section='references'])">
    <s:apply-templates select="references" />
  </s:if>
  <s:if test="not(//ja:insert[@ja:section='author-address' or @section='author-address'])">
    <s:call-template name="back-author-address" />
  </s:if>
  <s:apply-templates select="*[not(self::references)]" />
  <!--<s:if test="//iref">
    <s:call-template name="back-index" />
  </s:if>-->
  <s:if test="not(//ja:insert[@ja:section='full-copyright' or @section='full-copyright'])">
    <s:call-template name="back-copyright" />
  </s:if>
  <s:if test="not(//ja:insert[@ja:section='acknowledgement-editor' or @section='acknowledgement-editor'])">
    <s:call-template name="back-acknowledgement-editor" />
  </s:if>
</s:template>

<s:template name="back-author-address">
  
  <div id="rfc-authors" class="rfc-section">
      <s:variable name="title-prefix"><s:value-of select="//ja:insert[@ja:section='author-address' or @section='author-address']/@ja:title-prefix" /></s:variable>
      
      <div id="rfc.authors" class="t-pair t-heading">
        <h1 xml:lang="en" class="t-l-en"><s:value-of select="$title-prefix" />Author's Address<s:if test="count(/rfc/front/author) &gt; 1">es</s:if></h1>
        <h1 xml:lang="ja" class="t-l-ja"><s:value-of select="$title-prefix" />$BCx<T$NO"Mm@h(B</h1>
      </div>
    <s:apply-templates select="/rfc/front/author" />
  </div>
</s:template>

<s:template name="back-copyright">
  <s:choose>
  <s:when test="/rfc/@ipr = 'none'"></s:when>
  <s:when test="/rfc/@number &lt; 2220"></s:when>
  <s:when test="$show-rfc-copyright != 'no'">
    <s:variable name="section-number">
      <s:choose>
      <s:when test="/rfc/back/@ja:full-copyright-numbered"><s:call-template name="section-number" /></s:when>
      </s:choose>
    </s:variable>
    
    <s:variable name="title-prefix"><s:value-of select="//ja:insert[@ja:section='full-copyright' or @section='full-copyright']/@ja:title-prefix" /></s:variable>
    
    <div id="rfc-copyright" class="rfc-section">
        <div class="t-pair" id="rfc.copyright">
          <h1 xml:lang="en" class="t-l-en"><s:value-of select="$title-prefix" />Full Copyright Statement</h1>
          <h1 xml:lang="ja" class="t-l-ja"><s:value-of select="$title-prefix" />$B40A4$JCx:n8"@<L@(B</h1>
        </div>
      
      <div class="t-pair t-hide-no">
        <p class="t-l-en" xml:lang="en">
          Copyright &#xa9; 
          <a href="http://www.isoc.org/">The Internet Society</a> 
          (<s:value-of select="/rfc/front/date/@year" />). 
          All Rights Reserved.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          $BCx:n8"(B &#xa9; 
          <a href="http://www.isoc.org/">The Internet Society</a> 
          (<s:value-of select="/rfc/front/date/@year" />)$B!#A48"N1J]!#(B
        </p>
      </div>
      
      <s:comment>$BK]Lu:G=*=$@5(B: 2002$BG/(B6$B7n(B21$BF|(B</s:comment>
      <div class="rfc-t">
        <div class="t-pair t-hide-no">
          <p class="t-l-en" xml:lang="en">
            This document and translations of it may be copied 
            and furnished
            to others, and derivative works that comment on or otherwise 
            explain it or assist in its implementation may be prepared, 
            copied, published and distributed, in whole or in part, 
            without restriction of any kind, provided that the 
            above copyright notice 
            and this paragraph are included on all such copies and 
            derivative works. However, this document itself may 
            not be modified in any way, such as by removing the 
            copyright notice or references to the Internet Society 
            or other Internet organizations, except as 
            needed for the purpose of developing Internet standards 
            in which case the procedures for copyrights defined in 
            the Internet Standards process must be followed, or as 
            required to translate it into languages other than English.
          </p>
          <p class="t-l-ja" xml:lang="ja">
            $B$3$NJ8=q5Z$S$=$NK]Lu$rJ#<L$7B><T$KDs6!$9$k$3$H$d!"$3$l$K$D$$$FCm<a$r2C$($k$+$b$7$/$O@bL@$9$k(B,
            $B$"$k$$$O$=$N<BAu$r=u$1$kGI@8E*:n6H$rMQ0U!&J#<L!&=PHG!&G[I[$9$k$3$H$O!">e5-$NCx:n8"I=<(5Z$S$3$N@a$rA4$F$NJ#<LJ*5Z$SGI@8E*:n6H$K4^$`8B$j$K$*$$$F!"$=$NA4It$G$"$l0lIt$G$"$l!"0l@Z$N@)8BL5$7$KG'$a$i$l$k!#$7$+$7!"$3$NJ8=q<+BN$O!"Cx:n8"I=<($"$k$$$O(B 
            Internet Society $BKt$OB>$N(B Internet 
            $BAH?%$X$N8@5Z$r<h$j=|$/$J$I!"$$$+$J$kJ}K!$K$;$hJQ99$7$F$O$J$i$J$$!#C"$7!"(B 
            Internet $BI8=`2=2aDx$GDj5A$5$l$?Cx:n8"$N$?$a$N<jB3$-$K=>$$(B 
            Internet $BI8=`$r3+H/$9$kL\E*$KI,MW$J>l9g!"$"$k$$$O1Q8l0J30$N8@8l$KK]Lu$9$k$N$KI,MW$J>l9g$r=|$/!#(B
          </p>
        </div>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair t-hide-no">
          <p class="t-l-en" xml:lang="en">
            The limited permissions granted above are perpetual and will 
            not be revoked by the Internet Society or its successors or 
            assigns.
          </p>
          <p class="t-l-ja" xml:lang="ja">
            $B>e5-$GG'$a$?$3$N@)8BIU$-5vBz$O915WE*$J$b$N$G$"$j!"(B
            Internet Society $B$b$7$/$O$=$N8e7Q<T$b$7$/$O$=$N>yEO<T$K$h$jGK4~$5$l$k$3$H$O$J$$!#(B
          </p>
        </div>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair t-hide-no">
          <p class="t-l-en" xml:lang="en">
            This document and the information contained herein is provided 
            on an $B!H(B<strong>AS IS</strong>$B!I(B basis and 
            <strong>THE INTERNET SOCIETY AND THE INTERNET ENGINEERING
            TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, 
            INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF 
            THE INFORMATION HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY 
            IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR 
            A PARTICULAR PURPOSE</strong>.
          </p>
          <p class="t-l-ja" xml:lang="ja">
            $B$3$NJ8=q5Z$S$3$3$K4^$^$l$k>pJs$O!V(B<strong>$B8=>uM-;Q(B</strong>$B!W$GDs6!$5$l!"(B
            <strong>Internet Society $B$*$h$S(B
            <a href="http://www.ietf.org/">Internet Engineering Task Force 
            (Internet $B5;=QFCJLD4::0Q0w2q(B)</a>
            $B$O!"$3$3$K4^$^$l$k>pJs$N;HMQ$,$$$+$J$k8"Mx$r$b?/32$7$J$$$H$$$&J]>Z$^$?$O;T>l@-$"$k$$$OFCDjL\E*$X$NE,Ev@-$K$D$$$F$N0EL[E*J]>Z$r4^$`$,$3$l$K8B$i$J$$!"L@<($"$k$$$O0E<($K$h$k!"0l@Z$NJ]>Z$rH]G'$9$k(B</strong>$B!#(B
          </p>
        </div>
      </div>
      
      <ins class="t-note t-l-ja" xml:lang="ja">
        <p class="rfc-t">
          (<span class="t-note-title">$BLuCm(B:</span>
          $B@5<0$JCx:n8"@<L@$O1Q8l$N86J8$N$_$G$"$j!"Lu<T$O0l@Z$NJ]>Z(B
          ($BK]LuJ8$,86J8$H87L)$K0lCW$7$F$$$k$+$r4^$`$,!"$3$l$K8BDj$5$l$J$$!#(B)
          $B$r(B<strong title="NOT">$B$7$J$$(B</strong>$B!#(B<a href="#rfc-t-copyright">$BLuJ8$K$D$$$F$NCx:n8"@<L@(B</a>$B$b;2>H$;$h!#(B)
        </p>
      </ins>
    </div>
  </s:when>
  </s:choose>
</s:template>

<s:template name="back-acknowledgement-editor">
  <s:choose>
  <s:when test="/rfc/@number &lt; 2560 and $show-rfc-acknowledgement-editor != 'yes'"></s:when>
  <s:when test="/rfc/@ipr and $show-rfc-acknowledgement-editor != 'yes'"></s:when>
  <s:when test="$show-rfc-acknowledgement-editor != 'no'">
    <div id="rfc-acknowledgement-editor" class="rfc-section">
      <div class="t-heading t-pair">
        <h1 xml:lang="en" class="t-l-en">Acknowledgement</h1>
        <h1 xml:lang="ja" class="t-l-ja">$B<U<-(B</h1>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair">
        <p class="t-l-en" xml:lang="en">
          Funding for the 
          <a href="http://www.rfceditor.org/">RFC editor</a> 
          function is currently provided by the
          <a href="http://www.isoc.org/">Internet Society</a>.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          <a href="http://www.rfceditor.org/" xml:lang="en">RFC 
          $BJT=8<T(B</a>$B6HL3$N;q6b1g=u$O8=:_(B
          <a href="http://www.isoc.org/">Internet Society</a>
          $B$K$h$j9T$o$l$F$$$^$9!#(B
        </p>
        </div>
      </div>
    </div>
  </s:when>
  </s:choose>
</s:template>

<s:template match="ja:note">
  <ins class="t-note t-l-ja" xml:lang="ja">
    <span class="t-note-title">$BLuCm(B: </span> <s:apply-templates />
  </ins>
</s:template>

<s:template match="t//ja:note">
  <ins class="t-note t-l-ja" xml:lang="ja">
    (<span class="t-note-title">$BLuCm(B: </span> <s:apply-templates />)
  </ins>
</s:template>
<s:template match="preamble//ja:note">
  <ins class="t-note t-l-ja" xml:lang="ja">
    (<span class="t-note-title">$BLuCm(B:</span> <s:apply-templates />)
  </ins>
</s:template>
<s:template match="postamble//ja:note">
  <ins class="t-note t-l-ja" xml:lang="ja">
    (<span class="t-note-title">$BLuCm(B:</span> <s:apply-templates />)
  </ins>
</s:template>

<s:template match="ja:uri-ref">
  &lt;<a href="{@target}"><s:value-of select="@target" /></a>&gt;
</s:template>

<!-- "section" attribute is not supported yet. -->
<s:template match="ja:link[@type = 'rfc']">
  <a>
    <s:attribute name="href"><s:value-of select="$uri-rfc-prefix" /><s:value-of select="@number" /></s:attribute>
    <s:attribute name="title">RFC <s:value-of select="@number" /></s:attribute>
    <s:if test="not(node())">RFC <s:value-of select="@number" /></s:if>
    <s:apply-templates />
  </a>
</s:template>
<s:template match="ja:link[@type = 'std']">
  <a>
    <s:attribute name="href"><s:value-of select="$uri-std-prefix" /><s:value-of select="@number" /></s:attribute>
    <s:attribute name="title">STD <s:value-of select="@number" /></s:attribute>
    <s:if test="not(node())">STD <s:value-of select="@number" /></s:if>
    <s:apply-templates />
  </a>
</s:template>

<!-- Internet mail address [RFC2822].  Don't make HTML anchor
     because of spam:-) (But is this effective?) -->
<s:template match="ja:mail">
  &lt;<s:apply-templates />&gt;
</s:template>

<!-- <ja:definition word="defined word">definition</ja:definition> -->
<s:template match="ja:definition">
  <s:apply-templates />
</s:template>

<s:template match="ja:word">
  <s:variable name="word"><s:choose>
  <s:when test="@name"><s:value-of select="@name" /></s:when>
  <s:otherwise><s:value-of select="text()" /></s:otherwise>
  </s:choose></s:variable>
  <!-- We should check language of ja:definition and ja:word,
       but what stupid a function XPath's lang() is! -->
  <s:variable name="content"><s:choose>
    <s:when test="text()"><s:apply-templates /></s:when>
    <s:when test="//ja:definition[@word = $word]/@translation"><s:value-of select="//ja:definition[@word = $word]/@translation" /></s:when>
    <s:otherwise><s:value-of select="$word" /></s:otherwise>
  </s:choose></s:variable>
  <span title="{$content}: {normalize-space(//ja:definition[@word = $word])}" class="ja-word"><s:value-of select="$content" /></span>
</s:template>

<s:template match="h:*">
  <s:element name="{local-name()}">
    <s:for-each select="@*">
      <s:attribute name="{name()}"><s:value-of select="." /></s:attribute>
    </s:for-each>
    <s:apply-templates />
  </s:element>
</s:template>

<s:template match="h:samp">
  <samp><s:for-each select="@*">
      <s:attribute name="{name()}"><s:value-of select="." /></s:attribute>
  </s:for-each><s:choose>
    <s:when test="$autoquote-samp-element='no'"><s:apply-templates /></s:when>
    <s:otherwise>$B!H(B<s:apply-templates />$B!I(B</s:otherwise>
  </s:choose></samp>
</s:template>
<s:template match="ja:l[@xml:lang = 'ja']//h:samp">
  <samp><s:for-each select="@*">
      <s:attribute name="{name()}"><s:value-of select="." /></s:attribute>
  </s:for-each><s:choose>
    <s:when test="$autoquote-samp-element='no'"><s:apply-templates /></s:when>
    <s:otherwise>$B!V(B<s:apply-templates />$B!W(B</s:otherwise>
  </s:choose></samp>
</s:template>

<!-- $B8@8l>pJs$+$i0zMQId$rJ,$1$k$N$O87L)$K$O@5$7$/$"$j$^$;$s(B
     ($BMQ;z7O$b%A%'%C%/$7$J$$$H$$$1$^$;$s(B ($BF|K\8lMeGO;z$H$+(B
     $B$"$j$^$9$+$i!#(B)) $B$,!"$=$l$O$+$J$j$7$s$I$$$N$G!"(B
     $B6a;w$H$$$&$3$H$G!&!&!&(B -->
<s:template match="h:q">
  <q><s:for-each select="@*">
      <s:attribute name="{name()}"><s:value-of select="." /></s:attribute>
  </s:for-each>$B!H(B<s:apply-templates />$B!I(B</q>
</s:template>
<s:template match="ja:l[@xml:lang = 'ja']//h:q|ja:front//h:q|ja:back//h:q|ja:title//h:q">
  <q><s:for-each select="@*">
      <s:attribute name="{name()}"><s:value-of select="." /></s:attribute>
  </s:for-each>$B!V(B<s:apply-templates />$B!W(B</q>
</s:template>

<s:template match="h:ul[@ja:list-item]">
  <ul class="ja-list-item-{@ja:list-item}"><s:for-each select="@*">
      <s:attribute name="{name()}"><s:value-of select="." /></s:attribute>
  </s:for-each><s:apply-templates /></ul>
</s:template>

<s:template match="abstract">
  <div class="rfc-section" id="rfc.abstract">
    <div class="t-pair t-heading">
      <h1 xml:lang="en" class="t-l-en">Abstract</h1>
      <h1 xml:lang="ja" class="t-l-ja">$B35MW(B</h1>
    </div>
    <s:apply-templates />
  </div>
</s:template>

<s:template match="author">
  <ul class="rfc-author">
  <s:if test="@fullname"><li class="rfc-author-fullname"><s:value-of select="@fullname" /></li></s:if>
  <s:for-each select="organization|ja:organization"><li class="rfc-organization"><s:value-of select="text()" /></li></s:for-each>
  <s:for-each select="(address/postal/street|address/postal/city|address/postal/region|address/postal/code|address/postal/country)">
    <s:choose>
    <s:when test="@ja:show = 'no'"></s:when>
    <s:when test="@ja:text"><li class="rfc-{local-name()}"><s:value-of select="@ja:text" /></li></s:when>
    <s:otherwise><li class="rfc-{local-name()}"><s:value-of select="." /></li></s:otherwise>
    </s:choose>
  </s:for-each>
  <s:if test="address/phone">
    <li class="rfc-phone">$BEEOC(B: <s:choose>
      <s:when test="address/phone/@ja:text"><s:value-of select="address/phone/@ja:text" /></s:when>
      <s:otherwise><s:value-of select="address/phone" /></s:otherwise>
    </s:choose></li>
  </s:if>
  <s:if test="address/facsimile">
    <li class="rfc-facsimile">FAX: <s:choose>
      <s:when test="address/facsimile/@ja:text"><s:value-of select="address/facsimile/@ja:text" /></s:when>
      <s:otherwise><s:value-of select="address/facsimile" /></s:otherwise>
    </s:choose></li>
  </s:if>
  <s:for-each select="address/email|address/ja:email">
    <li class="rfc-email">$BEE;R%a%$%k(B: &lt;<a href="mailto:{text()}"><s:value-of select="text()" /></a>&gt;</li>
  </s:for-each>
  <s:if test="address/uri">
    <li class="rfc-uri">URI: &lt;<a href="{address/uri}"><s:value-of select="address/uri" /></a>&gt;</li>
  </s:if>
  </ul>
</s:template>

<!-- based on rfc2629.xslt -->
<s:template match="reference">
  <s:variable name="target">
    <s:choose>
    <s:when test="@target"><s:value-of select="@target" /></s:when>
    <s:when test="@ja:target"><s:value-of select="@ja:target" /></s:when>
    </s:choose>
  </s:variable>
  
  <dt id="{@anchor}"><s:call-template name="reference-name">
    <s:with-param name="node" select="." />
  </s:call-template></dt>
  <dd>
    <s:choose>
    <s:when test="string-length($target) &gt; 0">$B!X(B<cite><a href="{$target}" title="URI: &lt;{$target}&gt;"><s:value-of select="front/title" /></a></cite>$B!Y(B</s:when>
    <s:otherwise>$B!X(B<cite><s:value-of select="front/title" /></cite>$B!Y(B</s:otherwise>
    </s:choose>
    <s:if test="front/ja:title[@xml:lang='ja']">
      <span class="t-pair"><span xml:lang="ja" class="t-l-ja"><s:choose>
      <s:when test="@ja:target-ja">, $B!X(B<cite><a href="{@ja:target-ja}" title="URI: &lt;{@ja:target-ja}&gt;"><s:value-of select="front/ja:title[@xml:lang='ja']" /></a></cite>$B!Y(B</s:when>
      <s:otherwise>, $B!X(B<cite><s:value-of select="front/ja:title[@xml:lang='ja']" /></cite>$B!Y(B</s:otherwise>
      </s:choose></span></span>
    </s:if>
    
    <s:for-each select="front/author|front/ja:publisher">
      <s:choose>
      <s:when test="@ja:text">, <s:value-of select="@ja:text" /></s:when>
      <s:when test="@surname and @fullname">, <span title="@fullname"><s:value-of select="concat(@surname,', ',@initials)" /></span></s:when>
      <s:when test="@surname">, <s:value-of select="concat(@surname,', ',@initials)" /></s:when>
      <s:when test="@fullname">, <s:value-of select="@fullname" /></s:when>
      </s:choose>
    </s:for-each>
    
    <s:for-each select="seriesInfo">
      <s:choose>
      <s:when test="not(@name) and not(@value) and ./text()">, <s:value-of select="." /></s:when>
      <s:when test="@name='RFC'">, <a href="{concat($uri-rfc-prefix,@value)}" title="URI: &lt;{concat($uri-rfc-prefix,@value)}&gt;">RFC <s:value-of select="@value" /></a></s:when>
      <s:when test="@name='STD'">, <a href="{concat($uri-std-prefix,@value)}" title="URI: &lt;{concat($uri-std-prefix,@value)}&gt;">STD <s:value-of select="@value" /></a></s:when>
      <s:when test="@name='BCP'">, <a href="{concat($uri-bcp-prefix,@value)}" title="URI: &lt;{concat($uri-bcp-prefix,@value)}&gt;">BCP <s:value-of select="@value" /></a></s:when>
      <s:when test="@name='FYI'">, <a href="{concat($uri-fyi-prefix,@value)}" title="URI: &lt;{concat($uri-fyi-prefix,@value)}&gt;">FYI <s:value-of select="@value" /></a></s:when>
      <s:otherwise>, <s:value-of select="@name" />
        &#xA0;<s:value-of select="@value" /></s:otherwise>
      </s:choose>
    </s:for-each>
    
    <s:choose>
    <s:when test="@year">, 
      <span class="t-pair"><span xml:lang="en" class="t-l-en">
      <s:value-of select="front/date/@day" />
      &#xA0;<s:value-of select="front/date/@month" />&#xA0;
      <s:value-of select="front/date/@year" />.
    </span>, <span xml:lang="ja" class="t-l-ja">
      <s:value-of select="front/date/@year" />$BG/(B<s:call-template name="month-ja">
        <s:with-param name="month" select="front/date/@month" />
      </s:call-template><s:if test="front/date/@day"><s:value-of select="front/date/@day" />$BF|(B</s:if>$B!#(B
    </span></span></s:when>
    <s:otherwise>$B!#(B</s:otherwise>
    </s:choose>
    
    <s:if test="ja:add-info">
      <s:apply-templates select="ja:add-info" />
    </s:if>
  </dd>
</s:template>

<s:template match="ja:add-info">
  <span class="t-add-info"><s:apply-templates /></span>
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template name="reference-name">
  <s:param name="node" />
  
  <s:choose>
  <s:when test="$use-symbolic-reference='yes' and $node/@ja:text">[<s:value-of select="$node/@ja:text" />]</s:when>
  <s:when test="$use-symbolic-reference='yes'">[<s:value-of select="$node/@anchor" />]</s:when>
  <s:otherwise><s:for-each select="$node">[<s:number />]</s:for-each></s:otherwise>
  </s:choose>
</s:template>

<s:template match="references">
  <s:variable name="section-number">
    <s:choose>
    <s:when test="@ja:numbered"><s:call-template name="section-number" /></s:when>
    </s:choose>
  </s:variable>
  
  <s:variable name="title"><s:choose>
  <s:when test="@title"><s:value-of select="@title" /></s:when>
  <s:otherwise>References</s:otherwise>
  </s:choose></s:variable>
  <s:variable name="title-ja"><s:choose>
  <s:when test="@ja:title-ja"><s:value-of select="@ja:title-ja" /></s:when>
  <s:when test="@title = '' or @title = 'References' or @title = 'Bibliography'">$B;29MJ88%(B</s:when>
  <s:otherwise>$B;29MJ88%(B</s:otherwise>
  </s:choose></s:variable>
  
  <div class="rfc-section" id="rfc.references">
    <s:variable name="title-prefix"><s:value-of select="//ja:insert[@ja:section='references' or @section='references']/@ja:title-prefix" /></s:variable>
    
    <s:choose>
    <s:when test="$title-ja">
      <div class="t-pair t-heading">
        <h1 xml:lang="en" class="t-l-en"><s:value-of select="$title-prefix" /><s:value-of select="$title" /></h1>
        <h1 xml:lang="ja" class="t-l-ja"><s:value-of select="$title-prefix" /><s:value-of select="$title-ja" /></h1>
      </div>
    </s:when>
    <s:otherwise><h1><s:value-of select="$title-prefix" /><s:value-of select="@title" /></h1></s:otherwise>
    </s:choose>
    <dl><s:apply-templates /></dl>
  </div>
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template match="eref[node()]">
  <a href="{@target}" title="URI: &lt;{@target}&gt;" class="rfc-eref"><s:apply-templates /></a>
</s:template>

<s:template match="eref[not(node())]">
  &lt;<a href="{@target}" class="rfc-eref"><s:value-of select="@target" /></a>&gt;
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template match="iref">
  <span class="rfc-iref"><s:attribute name="id">rfc.iref.<s:number level="any"/></s:attribute>&#xA0;</span>
</s:template>

<s:template match="xref">
  <s:variable name="target" select="@target" />
  <s:variable name="node" select="//*[@anchor=$target or @ja:anchor=$target]" />
  
  <span class="rfc-xref">
    <a href="#{$target}"><s:choose>
      <s:when test="node()"><s:attribute name="title"><s:value-of select="normalize-space($node/front/title)" /></s:attribute><s:apply-templates />
        <s:if test="/rfc/back/references/reference[@anchor=$target]">
          &#xA0;<sup><s:call-template name="reference-name">
            <s:with-param name="node" select="/rfc/back/references/reference[@anchor=$target]" />
      </s:call-template></sup></s:if></s:when>
      <s:when test="local-name($node)='section'"><s:for-each select="$node">
        <s:attribute name="title"><s:value-of select="@title" /></s:attribute>
        section <s:number level="multiple" />
      </s:for-each></s:when>
      <s:when test="local-name($node)='figure'">figure
      <s:for-each select="$node">
        <s:number level="any" count="figure[@title!='' or @anchor!='']" />
      </s:for-each></s:when>
      <s:when test="$node/@hangText"><s:value-of select="$node/@hangText" /></s:when>
      <s:otherwise>
        <s:attribute name="title"><s:value-of select="normalize-space($node/front/title)" /></s:attribute>
        <s:call-template name="reference-name">
          <s:with-param name="node" select="/rfc/back/references/reference[@anchor=$target]" />
        </s:call-template>
      </s:otherwise>
    </s:choose></a>
  </span>
</s:template>
<s:template match="ja:l[@xml:lang = 'ja']//xref|ja:front//xref|ja:back//xref">
  <s:variable name="target" select="@target" />
  <s:variable name="node" select="//*[@anchor=$target or @ja:anchor=$target]" />
  
  <a href="#{$target}"><s:choose>
    <s:when test="node()"><s:attribute name="title"><s:choose>
      <s:when test="$node/front/ja:title[@xml:lang='ja']"><s:value-of select="normalize-space($node/front/ja:title[@xml:lang='ja'])" /></s:when>
      <s:otherwise><s:value-of select="normalize-space($node/front/title)" /></s:otherwise>
      </s:choose></s:attribute><s:apply-templates />
        <s:if test="/rfc/back/references/reference[@anchor=$target]">
          &#xA0;<sup><s:call-template name="reference-name">
            <s:with-param name="node" select="/rfc/back/references/reference[@anchor=$target]" />
      </s:call-template></sup></s:if></s:when>
    <s:when test="local-name($node)='section' and $node/ancestor::back"><s:for-each select="$node">
      <s:attribute name="title"><s:call-template name="section-name-ja">
        <s:with-param name="node" select="$node" />
        <s:with-param name="return-en" select="'yes'" />
      </s:call-template></s:attribute>
      $BImB0=q(B<s:number level="multiple" format="A.1.1.1.1.1.1.1" />
    </s:for-each></s:when>
    <s:when test="local-name($node)='section'"><s:for-each select="$node">
      <s:attribute name="title"><s:call-template name="section-name-ja">
        <s:with-param name="node" select="$node" />
        <s:with-param name="return-en" select="yes" />
      </s:call-template></s:attribute>
    <s:number level="multiple" />$B@a(B</s:for-each></s:when>
    <s:when test="local-name($node)='figure'">$B?^(B<s:for-each select="$node">
      <s:number level="any" count="figure[@title!='' or @anchor!='']" />
    </s:for-each></s:when>
    <s:when test="$node/@ja:hangText-ja"><s:value-of select="$node/@ja:hangText-ja" /></s:when>
    <s:when test="$node/@hangText"><s:value-of select="$node/@hangText" /></s:when>
    <s:otherwise>
      <s:choose>
      <s:when test="$node/front/ja:title[@xml:lang='ja']"><s:attribute name="title"><s:value-of select="normalize-space($node/front/ja:title[@xml:lang='ja'])" /></s:attribute></s:when>
      <s:otherwise><s:attribute name="title"><s:value-of select="normalize-space($node/front/title)" /></s:attribute></s:otherwise>
      </s:choose>
      <s:call-template name="reference-name">
        <s:with-param name="node" select="/rfc/back/references/reference[@anchor=$target]" />
      </s:call-template>
  </s:otherwise>
  </s:choose></a>
</s:template>

<!-- from rfc2629.xslt: mark unmatched elements red -->
<s:template match="*">
  <span style="color: red">&lt;<s:value-of select="name()" />&gt;</span>
  <s:copy><s:apply-templates select="node()|@*" /></s:copy>
  <span style="color: red">&lt;/<s:value-of select="name()" />&gt;</span>
</s:template>

<!-- translation:back -->

<s:template name="translation-back">
  <ins id="rfc-translators-note" class="t-note t-l-ja" xml:lang="ja">
    <s:for-each select="/rfc/ja:back/section">
      <s:apply-templates select="." />
    </s:for-each>
    <s:apply-templates select="/rfc/ja:front/ja:change" />
    <div class="rfc-section" id="rfc-t-copyright">
      <h1>$BLuJ8$K$D$$$F$NCx:n8"@<L@(B</h1>
      <s:apply-templates select="/rfc/ja:front/ja:copyright" />
      
      <s:choose>
      <s:when test="/rfc/ja:front/ja:copyright/ja:full-statement"></s:when>
      <s:when test="/rfc/@ipr = 'none'"></s:when>
      <s:when test="/rfc/@number &lt; 2220">
        <p>$B$3$NK]LuJ8$O!"<+M3$KJ#@=!&G[I[!&2~JQ$7$F9=$$$^$;$s!#(B
        (rfc-copyright-story $B$b;2>H$7$F2<$5$$!#(B)</p>
      </s:when>
      <s:when test="$show-rfc-copyright != 'no'">
        <p><a href="#rfc-copyright">$B86J8$NCx:n8"@<L@(B</a>$B$,!"LuJ8$K$D$$$F$bF1MM$KE,MQ$5$l$^$9!#(B</p>
        <p>$B$^$?!"2~Lu$=$NB>$N86J8$NCx:n8"@<L@$KH?$7$J$$HO0O$K$*$1$k2~JQ$O!"0l@Z$N5v2DL5$/9T$C$F9=$$$^$;$s!#(B</p>
      </s:when>
      </s:choose>
    </div>
  </ins>
</s:template>

<s:template match="ja:change">
  <div class="rfc-section" id="t-change">
    <h1>$BK]Lu$NJQ99MzNr(B</h1>
    
    <dl>
      <s:for-each select="ja:item"><s:apply-templates select="." /></s:for-each>
    </dl>
  </div>
</s:template>

<s:template match="ja:change/ja:item">
  <dt><s:choose>
    <s:when test="@year"><s:value-of select="concat(@year,'-',@month,'-',@day,' ')" /></s:when>
    <s:when test="@ja:year"><s:value-of select="concat(@ja:year,'-',@ja:month,'-',@ja:day,' ')" /></s:when>
    </s:choose>
    <s:variable name="author-id" select="author/@ja:ref" />
    <s:variable name="name"><s:choose>
      <s:when test="$author-id and /rfc/ja:front/author[@ja:id = $author-id]"><s:value-of select="/rfc/ja:front/author[@ja:id = $author-id]/@fullname" /></s:when>
      <s:when test="$author-id and /rfc/front/author[@ja:id = $author-id]"><s:value-of select="/rfc/front/author[@ja:id = $author-id]/@fullname" /></s:when>
      <s:otherwise><s:value-of select="author/@fullname" /></s:otherwise>
    </s:choose></s:variable>
    <s:variable name="mail"><s:choose>
      <s:when test="$author-id and /rfc/ja:front/author[@ja:id = $author-id]"><s:value-of select="/rfc/ja:front/author[@ja:id = $author-id]/address/email" /></s:when>
      <s:when test="$author-id and /rfc/front/author[@ja:id = $author-id]"><s:value-of select="/rfc/front/author[@ja:id = $author-id]/address/email" /></s:when>
      <s:otherwise><s:value-of select="author/address/email" /></s:otherwise>
    </s:choose></s:variable>
    <s:variable name="uri"><s:choose>
      <s:when test="$author-id and /rfc/ja:front/author[@ja:id = $author-id]"><s:value-of select="/rfc/ja:front/author[@ja:id = $author-id]/address/uri" /></s:when>
      <s:when test="$author-id and /rfc/front/author[@ja:id = $author-id]"><s:value-of select="/rfc/front/author[@ja:id = $author-id]/address/uri" /></s:when>
      <s:otherwise><s:value-of select="author/address/uri" /></s:otherwise>
    </s:choose></s:variable>
    
    <s:choose>
    <s:when test="$mail != ''"><a href="mailto:{$mail}" title="$BEE;R%a%$%k(B: &lt;{$mail}&gt;"><s:value-of select="$name" /></a></s:when>
    <s:when test="$uri != ''"><a href="{$uri}" title="URI: &lt;{$uri}&gt;"><s:value-of select="$name" /></a></s:when>
    <s:otherwise><s:value-of select="$name" /></s:otherwise>
    </s:choose>
  </dt>
  <dd><ul><s:for-each select="t"><s:apply-templates select="." /></s:for-each></ul></dd>
</s:template>

<s:template match="ja:change/ja:item/t">
  <li><s:apply-templates /></li>
</s:template>
<s:template match="ja:change/ja:item/t/ja:section">
  <span class="t-change-section">(<s:apply-templates />)</span>: 
</s:template>

<s:template match="ja:copyright">
  <s:if test="ja:item">
  <ul>
    <s:for-each select="ja:item">
      <s:apply-templates select="." />
    </s:for-each>
  </ul>
  </s:if>
  <s:apply-templates select="ja:full-statement" />
</s:template>
<s:template match="ja:copyright/ja:item">
  <li><s:apply-templates /></li>
</s:template>
<s:template match="ja:copyright/ja:full-statement">
  <div class="t-full-statement"><s:apply-templates /></div>
</s:template>

<s:template name="footer">

</s:template>

</s:stylesheet>
<!-- rfc-ja.xsl *** RFC 2629 + $BF|K\8lLu(B XML $B7A<0(B $B"*(B XHTML 1.1
                    XSLT $B%9%?%$%k%7!<%H(B
                $Date: 2002/09/01 09:50:31 $
-->
<!-- $B<U<-(B
       $B$3$N(B XSLT $B$O!"(B xml2rfc 1.12 package $B$N(B rfc2629.xslt $B$+$i(B
     $B4v$D$+$NItJ,$r<ZMQ$7$F$$$^$9!#(B
     
     > 	  XSLT transformation from RFC2629 XML format to HTML
     >     
     >     Copyright (c) 2001 Julian F. Reschke (julian.reschke@greenbytes.de)
     >     
     >     placed into the public domain
-->
<!-- TODO:
    $B!&:w0zIU$1$KBP1~(B
    $B!&L\<!@8@.$KBP1~(B
-->
<!-- SEE ALSO
    $B!&(B<urn:ietf:rfc:2629>
    $B!&(B<https://suika.suikawiki.org/~wakaba/lang/rfc/translation/>
    $B!&(B<https://suika.suikawiki.org/~wakaba/document/rfc-ja/>
-->
<!-- LICENSE

Copyright 2002 wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; see the file COPYING.  If not, write to
the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
Boston, MA 02111-1307, USA.

-->
<!-- rfc-ja.xsl ends here -->
