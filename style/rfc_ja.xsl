<?xml version="1.0" encoding="iso-2022-jp"?>
<s:stylesheet
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:h="http://www.w3.org/1999/xhtml"
  xmlns:s="http://www.w3.org/1999/XSL/Transform"
  xmlns:ja="http://suika.fam.cx/~wakaba/lang/rfc/translate/"
  xmlns:ed="http://greenbytes.de/2002/rfcedit"
  xmlns:myns="mailto:julian.reschke@greenbytes.de?subject=rcf2629.xslt"
  exclude-result-prefixes="ed myns ja"
  version="1.0">

  <s:output encoding="iso-2022-jp" indent="yes"
    method="xml" omit-xml-declaration="no"
    doctype-public="-//W3C//DTD XHTML 1.1//EN"
    doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" />
  <s:param name="uri-rfc-prefix" select="'http://suika.fam.cx/uri-res/N2L?urn:ietf:rfc:'" />
  <s:param name="uri-std-prefix" select="'http://suika.fam.cx/uri-res/N2L?urn:ietf:std:'" />
  <s:param name="uri-bcp-prefix" select="'http://suika.fam.cx/uri-res/N2L?urn:ietf:bcp:'" />
  <s:param name="uri-fyi-prefix" select="'http://suika.fam.cx/uri-res/N2L?urn:ietf:fyi:'" />
  <s:param name="uri-stylesheet-css" select="'rfcja-style.css'" />
  
  <!-- <?rfc toc="yes/no"?> -->
  <s:param name="include-toc" select="substring-after(translate(/processing-instruction('rfc')[contains(.,'toc=')], '&quot; ', ''),'toc=')" />
  <!-- <?rfc symrefs="yes/no"?> -->
  <s:param name="use-symbolic-reference" select="substring-after(translate(/processing-instruction('rfc')[contains(.,'symrefs=')], '&quot; ', ''),'symrefs=')" />
  <!-- <?rfc private=" '' or type (display) name "?> -->
  <s:param name="type-private-paper" select="substring-after(translate(/processing-instruction('rfc')[contains(.,'private=')], '&quot; ', ''),'private=')" />
  
  <!-- <?rfc-translation show-rfc-copyright="yes/no"?> -->
  <s:param name="show-rfc-copyright" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'show-rfc-copyright=')], '&quot; ', ''),'show-rfc-copyright=')" />
  <!-- <?rfc-translation show-rfc-status="yes/no"?> -->
  <s:param name="show-rfc-status" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'show-rfc-status=')], '&quot; ', ''),'show-rfc-status=')" />
  <!-- <?rfc-translation show-rfc-acknowledgement-editor="yes/no"?> -->
  <s:param name="show-rfc-acknowledgement-editor" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'show-rfc-acknowledgement-editor=')], '&quot; ', ''),'show-rfc-acknowledgement-editor=')" />
  <!-- <?rfc-translation output-http-equiv="yes/no"?> -->
  <s:param name="output-http-equiv" select="substring-after(translate(/processing-instruction('rfc-translation')[contains(.,'output-http-equiv=')], '&quot; ', ''),'output-http-equiv=')" />
  
<s:template match="/">
  <s:apply-templates match="rfc" />
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
  
  <s:processing-instruction name="xml-stylesheet">href="<s:value-of select="$uri-stylesheet-css" />" type="text/css"</s:processing-instruction>
  <html>
    <head profile="http://suika.fam.cx/~wakaba/lang/rfc/translate/html-profile">
      <s:if test="$output-http-equiv != 'no'">
        <meta http-equiv="Content-Style-Type" content="text/css" />
      </s:if>
      <title><s:value-of select="$title" /></title>
      <link rel="stylesheet" href="{$uri-stylesheet-css}" type="text/css" />
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
        <li>廃止: <s:call-template name="rfclist">
          <s:with-param name="list" select="normalize-space(/rfc/@obsoletes)" />
        </s:call-template></li>
      </s:if>
      <s:if test="/rfc/@seriesNo">
        <li><s:choose>
          <s:when test="/rfc/@category='bcp'"><acronym title="Best Current Practice: 現状最善運用">BCP</acronym>: <s:value-of select="/rfc/@seriesNo" /></s:when>
          <s:when test="/rfc/@category='info'"><acronym title="For Your Information">FYI</acronym>: <s:value-of select="/rfc/@seriesNo" /></s:when>
          <s:when test="/rfc/@category='std'"><acronym title="Standard: 標準">STD</acronym>: <s:value-of select="/rfc/@seriesNo" /></s:when>
          <s:otherwise><s:value-of select="concat(/rfc/@category,': ',/rfc/@seriesNo)" /></s:otherwise>
        </s:choose></li>
      </s:if>
      <s:if test="/rfc/@updates and /rfc/@updates!=''">
        <li>更新: <s:call-template name="rfclist">
          <s:with-param name="list" select="normalize-space(/rfc/@updates)" />
        </s:call-template></li>
      </s:if>
      <li><span class="t-pair"><span xml:lang="en" class="t-l-en t-hide-no">Category: <s:call-template name="category-name" /></span></span></li>
      <li><span class="t-pair"><span xml:lang="ja" class="t-l-ja">分類: <s:call-template name="category-name-ja" /></span></span></li>
      <s:if test="/rfc/@ipr">
        <li><span class="t-pair"><span xml:lang="en" class="t-l-en">Expires: <s:call-template name="expiry-date" /></span></span></li>
        <li><span class="t-pair"><span xml:lang="ja" class="t-l-ja">有効期限: <s:call-template name="expiry-date-ja" /></span></span></li>
      </s:if>
    </s:when>
    <s:otherwise><!-- private -->
      <li><s:value-of select="$private" /></li>
    </s:otherwise>
    </s:choose>
  </ul>
</s:template>

<!-- based on rfc2629.xslt -->
<s:template name="header-table-right">
  <ul id="rfc--table-right">
    <s:for-each select="author">
      <s:if test="@surname">
        <li>
          <s:attribute name="title"><s:value-of select="@fullname" /></s:attribute>
          <s:value-of select="concat(@initials,' ',@surname)" />
        </li>
      </s:if>
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
          <s:if test="$org != organization"><s:attribute name="title"><s:value-of select="organization" /></s:attribute></s:if>
          <s:value-of select="$org" />
        </li>
      </s:if>
    </s:for-each>
    <li><span class="t-pair"><span xml:lang="en" class="t-l-en">
      <s:value-of select="concat(date/@day,' ',date/@month,' ',date/@year)" />
    </span></span></li>
    <li><span class="t-pair"><span xml:lang="ja" class="t-l-ja">
      <s:value-of select="date/@year" />年<s:call-template name="month-ja">
        <s:with-param name="month" select="date/@month" />
      </s:call-template><s:if test="date/@day"><s:value-of select="date/@day" />日</s:if>
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
  <s:when test="$date/@month='January'"><s:value-of select="concat($date/@year,'年7月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='February'"><s:value-of select="concat($date/@year,'年8月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='March'"><s:value-of select="concat($date/@year,'年9月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='March'"><s:value-of select="concat($date/@year,'年10月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='May'"><s:value-of select="concat($date/@year,'年11月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='June'"><s:value-of select="concat($date/@year,'年12月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='July'"><s:value-of select="concat($date/@year + 1,'年1月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='August'"><s:value-of select="concat($date/@year + 1,'年2月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='September'"><s:value-of select="concat($date/@year + 1,'年3月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='October'"><s:value-of select="concat($date/@year + 1,'年4月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='November'"><s:value-of select="concat($date/@year + 1,'年5月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:when test="$date/@month='December'"><s:value-of select="concat($date/@year + 1,'年6月',$date/@day)" /><s:if test="$date/@day">日</s:if></s:when>
  <s:otherwise><strong class="t-invalid">不正な月です</strong></s:otherwise>
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
        <h1 xml:lang="ja" class="t-l-ja">このメモの位置付け</h1>
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
          この文書は Internet Draft であり、
          <s:choose>
          <s:when test="/rfc/@ipr = 'full2026'">RFC 2026
            の第10章の全ての要件を満たしています。
          </s:when>
          <s:when test="/rfc/@ipr = 'noDerivativeWorks2026'">
            派生的作業権を認めないことを除き、 RFC 2026
            の第10章の全ての要件を満たしています。
          </s:when>
          <s:when test="/rfc/@ipr = 'noDerivativeWorksNow'">
            派生的作業権を認めないことを除き、RFC 2026
            の第10章の全ての要件を満たしています。
            (この文書が <a href="http://www.ietf.org/">IETF</a> 
            作業部会の活動の一部になった暁には、RFC 2026
            の第10章に完全に従うことになりましょう。)
          </s:when>
          <s:when test="/rfc/@ipr = 'none'">
            RFC 2026
            の第10章には従って<strong title="NOT">おらず</strong>、
            著者は <a href="http://www.ietf.org/">IETF</a> に、
            Internet-Draft として発行する以外のいかなる権利をも与えるものではありません。
          </s:when>
          <s:otherwise><strong class="t-invalid">適合性は未定義です</strong>。</s:otherwise>
          </s:choose>
          
          Internet-Drafts は <a href="http://www.ietf.org/">Internet
          技術特別調査委員会 (IETF)</a> やその領域委員会 (area),
          作業部会の作業文書です。なお、他の団体も作業文書を
          Internet-Draft として配布することが出来ます。
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
          material or to cite them other than as “work in progress”.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          Internet-Draft 
          は最大6ヶ月間有効な原案文書で、いつ何時他の文書により更新されたり置き換えられたり廃止されたりするかも分かりません。
          「作業中」 と断らずに Internet-Draft 
          を資料として参照したり引用したりするのは不適切です。
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
          現在の Internet-Drafts の一覧は
          &lt;<a href='http://www.ietf.org/ietf/1id-abstracts.txt'>http://www.ietf.org/ietf/1id-abstracts.txt</a>&gt;
          で入手出来ます。
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
          Internet-Draft Shadow Directories の一覧は
          &lt;<a href='http://www.ietf.org/shadow.html'>http://www.ietf.org/shadow.html</a>&gt;
          で入手出来ます。
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
          この Internet-Draft は <s:call-template name="expiry-date-ja" />
          に期限が切れます。
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
          このメモは、 Internet 社会向けに Internet 現状最善運用を説明し、改良の為の議論や提案を求めます。このメモの配布は制限しません。
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
          このメモは、 Internet 社会向けの実験的プロトコルを定義するものです。いかなる種類の
          Internet 標準を規定するものでもありません。改良の為の議論や提案を求めます。このメモの配布は制限しません。
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
          このメモは、 Internet 社会に歴史的プロトコルを説明するものです。いかなる種類の
          Internet 標準を規定するものでもありません。このメモの配布は制限しません。
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
          このメモは、 Internet 社会に情報を提供します。いかなる種類の
          Internet 標準を規定するものでもありません。このメモの配布は制限しません。
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
      “Internet Official Protocol Standards” (STD 1) for the 
      standardization state and status of this	
      protocol. Distribution of this memo is unlimited.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          この文書は、 Internet 社会向け Internet 
          標準化過程プロトコルを規定し、改良の為の議論と提案を求めるものです。このプロトコルの標準化状況については、『Internet Official Protocol Standard』 (STD 1) 
          を参照して下さい。このメモの配布は制限しません。
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
        <h1 xml:lang="ja" class="t-l-ja">著作権表示</h1>
      </div>
      
      <div class="t-pair">
        <p class="t-l-en t-hide-no" xml:lang="en">Copyright &#xA9; 
        <a href="http://www.isoc.org/">The Internet Society</a> 
        (<s:value-of select="/rfc/front/date/@year" />). 
        All Rights Reserved.</p>
        <p class="t-l-ja" xml:lang="ja">著作権 &#xa9; 
        <a href="http://www.isoc.org/">The Internet Society</a> 
        (<s:value-of select="/rfc/front/date/@year" />)。全権保留。</p>
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
        <h1 xml:lang="ja" class="t-l-ja"><a href="#rfc-note-iesg" class="self">IESG 注記</a></h1>
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
  <s:when test="$title-small = 'acknowledgements'">謝辞</s:when>
  <s:when test="$title-small = 'background information'">背景説明</s:when>
  <s:when test="$title-small = 'conclution'">まとめ</s:when>
  <s:when test="$title-small = 'definition'">定義</s:when>
  <s:when test="$title-small = 'formal syntax'">形式的構文</s:when>
  <s:when test="$title-small = 'iana considerations'">IANA に関して</s:when>
  <s:when test="$title-small = 'introduction'">はじめに</s:when>
  <s:when test="$title-small = 'mime considerations'">MIME に関して</s:when>
  <s:when test="$title-small = 'security considerations'">安全性に関して</s:when>
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
    <s:apply-templates />
  </s:element>
</s:template>

<s:template match="list[@style='empty' or not(@style)]">
  <ul class="rfc-list-empty">
    <s:apply-templates />
  </ul>
</s:template>

<s:template match="list[@style='empty' or not(@style)]/t">
  <li><s:apply-templates /></li>
</s:template>

<s:template match="list[@style='hanging']">
  <dl class="rfc-list-hanging">
    <s:apply-templates />
  </dl>
</s:template>

<s:template match="list[@style='hanging']/t">
  <dt><s:value-of select="@hangText" /></dt>
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
        <div xml:lang="ja" class="t-l-ja">図 
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

<s:template match="ja:pair">
    <div class="t-pair">
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
  <s:when test="contains($m, 'jan')">1月</s:when>
  <s:when test="contains($m, 'feb')">2月</s:when>
  <s:when test="contains($m, 'mar')">3月</s:when>
  <s:when test="contains($m, 'apr')">4月</s:when>
  <s:when test="contains($m, 'may')">5月</s:when>
  <s:when test="contains($m, 'jun')">6月</s:when>
  <s:when test="contains($m, 'jul')">7月</s:when>
  <s:when test="contains($m, 'aug')">8月</s:when>
  <s:when test="contains($m, 'sep')">9月</s:when>
  <s:when test="contains($m, 'oct')">10月</s:when>
  <s:when test="contains($m, 'nov')">11月</s:when>
  <s:when test="contains($m, 'dec')">12月</s:when>
  <s:otherwise><s:value-of select="$month" /></s:otherwise>
  </s:choose>
</s:template>

<s:template name="category-name">
  <s:choose>
  <s:when test="/rfc/@category='bcp'">Best Current Practice</s:when>
  <s:when test="/rfc/@category='info'">Informational</s:when>
  <s:when test="/rfc/@category=''">Informational</s:when>
  <s:when test="/rfc/@category='std'">Standards Track</s:when>
  <s:otherwise>(category missing or unknown)</s:otherwise>
  </s:choose>
</s:template>
<s:template name="category-name-ja">
  <s:choose>
  <s:when test="/rfc/@category='bcp'">現状最善運用</s:when>
  <s:when test="/rfc/@category='info'">参考</s:when>
  <s:when test="/rfc/@category=''">参考</s:when>
  <s:when test="/rfc/@category='std'">標準化過程</s:when>
  <s:otherwise>(分類無しまたは不明)</s:otherwise>
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

<!-- back -->
<s:template match="back">
  <s:apply-templates match="references" />
  <s:call-template name="back-author-address" />
  <s:apply-templates select="*[not(self::references)]" />
  <!--<s:if test="//iref">
    <s:call-template name="back-index" />
  </s:if>-->
  <s:call-template name="back-copyright" />
  <s:call-template name="back-acknowledgement-editor" />
</s:template>

<s:template name="back-author-address">
  <div id="rfc-authors" class="rfc-section">
    <div id="rfc.authors" class="t-pair t-heading">
      <h1 xml:lang="en" class="t-l-en">Author's Address<s:if test="count(/rfc/front/author) &gt; 1">es</s:if></h1>
      <h1 xml:lang="ja" class="t-l-ja">著者の連絡先</h1>
    </div>
    <s:apply-templates select="/rfc/front/author" />
  </div>
</s:template>

<s:template name="back-copyright">
  <s:choose>
  <s:when test="/rfc/@ipr = 'none'"></s:when>
  <s:when test="/rfc/@number &lt; 2220"></s:when>
  <s:when test="$show-rfc-copyright != 'no'">
    <div id="rfc-copyright" class="rfc-section">
      <div class="t-pair" id="rfc.copyright">
        <h1 xml:lang="en" class="t-l-en">Full Copyright Statement</h1>
        <h1 xml:lang="ja" class="t-l-ja">完全な著作権声明</h1>
      </div>
      
      <div class="t-pair">
        <p class="t-l-en t-hide-no" xml:lang="en">
          Copyright &#xa9; 
          <a href="http://www.isoc.org/">The Internet Society</a> 
          (<s:value-of select="/rfc/front/date/@year" />). 
          All Rights Reserved.
        </p>
        <p class="t-l-ja" xml:lang="ja">
          著作権 &#xa9; 
          <a href="http://www.isoc.org/">The Internet Society</a> 
          (<s:value-of select="/rfc/front/date/@year" />)。全権留保。
        </p>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair">
          <p class="t-l-en t-hide-no" xml:lang="en">
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
            この文書とその翻訳は複写し他者に提供しても良く、またこれについて注釈を加えるかもしくは説明する、あるいはその実装を助ける派生的作業は、その全部または一部を、上記の著作権表示及びこの節を全ての複写物及び派生的作業に含む限りにおいて、一切の制限無しに、用意・複写・出版・配布して良い。しかし、この文書自体は、著作権表示あるいは 
            Internet Society 又は他の Internet 
            組織への言及を取り除くなど、いかなる方法にせよ変更してはならない。但し、 
            Internet 標準化過程で定義された著作権のための手続きに従い 
            Internet 標準を開発する目的に必要な場合、あるいは英語以外の言語に翻訳するのに必要な場合を除く。
          </p>
        </div>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair">
          <p class="t-l-en t-hide-no" xml:lang="en">
            The limited permissions granted above are perpetual and will 
            not be revoked by the Internet Society or its successors or 
            assigns.
          </p>
          <p class="t-l-ja" xml:lang="ja">
            上記で認めたこの制限付き許諾は恒久的なものであり、
            Internet Society もしくはその後継者もしくはその譲渡者により破棄されることはない。
          </p>
        </div>
      </div>
      
      <div class="rfc-t">
        <div class="t-pair">
          <p class="t-l-en t-hide-no" xml:lang="en">
            This document and the information contained herein is provided 
            on an “<strong>AS IS</strong>” basis and 
            <strong>THE INTERNET SOCIETY AND THE INTERNET ENGINEERING
            TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, 
            INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF 
            THE INFORMATION HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY 
            IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR 
            A PARTICULAR PURPOSE</strong>.
          </p>
          <p class="t-l-ja" xml:lang="ja">
            この文書及びここに含まれる情報は「<strong>現状有姿</strong>」で提供され、
            <strong>Internet Society および
            Internet Engineering Task Force (Internet 技術特別調査委員会)
            はここに含まれる情報の使用がいかなる権利をも侵害しないという保証または市場性あるいは特定目的への適当性についての暗黙的保証を含めてこれに限定されない、明示あるいは暗示による、一切の保証を否認する</strong>。
          </p>
        </div>
      </div>
      
      <ins class="t-note t-l-ja" xml:lang="ja">
        <p class="rfc-t">
          (<span class="t-note-title">訳注:</span>
          正式な著作権声明は英語の原文のみであり、訳者は一切の保証
          (翻訳文が原文と厳密に一致しているかを含むが、これに限定されない。)
          をしない。<a href="#rfc-t-copyright">訳文についての著作権声明</a>も参照せよ。)
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
        <h1 xml:lang="ja" class="t-l-ja">謝辞</h1>
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
          編集者</a>業務の資金援助は現在
          <a href="http://www.isoc.org/">Internet Society</a>
          により行われています。
        </p>
        </div>
      </div>
    </div>
  </s:when>
  </s:choose>
</s:template>

<s:template match="ja:note">
  <ins class="t-note t-l-ja" xml:lang="ja">
    <span class="t-note-title">訳注:</span> <s:apply-templates />
  </ins>
</s:template>

<s:template match="t//ja:note">
  <ins class="t-note t-l-ja" xml:lang="ja">
    (<span class="t-note-title">訳注:</span> <s:apply-templates />)
  </ins>
</s:template>
<s:template match="preamble//ja:note">
  <ins class="t-note t-l-ja" xml:lang="ja">
    (<span class="t-note-title">訳注:</span> <s:apply-templates />)
  </ins>
</s:template>
<s:template match="postamble//ja:note">
  <ins class="t-note t-l-ja" xml:lang="ja">
    (<span class="t-note-title">訳注:</span> <s:apply-templates />)
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
    <s:apply-templates />
  </a>
</s:template>
<s:template match="ja:link[@type = 'std']">
  <a>
    <s:attribute name="href"><s:value-of select="$uri-std-prefix" /><s:value-of select="@number" /></s:attribute>
    <s:attribute name="title">STD <s:value-of select="@number" /></s:attribute>
    <s:apply-templates />
  </a>
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
  </s:for-each>「<s:apply-templates />」</samp>
</s:template>

<s:template match="abstract">
  <div class="rfc-section" id="rfc.abstract">
    <div class="t-pair t-heading">
      <h1 xml:lang="en" class="t-l-en">Abstract</h1>
      <h1 xml:lang="ja" class="t-l-ja">概要</h1>
    </div>
    <s:apply-templates />
  </div>
</s:template>

<s:template match="author">
  <ul class="rfc-author">
  <s:if test="@fullname"><li class="rfc-author-fullname"><s:value-of select="@fullname" /></li></s:if>
  <s:if test="organization"><li class="rfc-organization"><s:value-of select="organization" /></li> </s:if>
  <s:for-each select="(address/postal/street|address/postal/city|address/postal/region|address/postal/code|address/postal/country)">
    <li class="rfc-{local-name()}"><s:value-of select="." /></li>
  </s:for-each>
  <s:if test="address/phone">
    <li class="rfc-phone">電話: <s:value-of select="address/phone" /></li>
  </s:if>
  <s:if test="address/facsimile">
    <li class="rfc-facsimile">FAX: <s:value-of select="address/facsimile" /></li>
  </s:if>
  <s:if test="address/email">
    <li class="rfc-email">電子メイル: &lt;<a href="mailto:{address/email}"><s:value-of select="address/email" /></a>&gt;</li>
  </s:if>
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
    <s:when test="seriesInfo/@name='RFC'">
      <s:value-of select="concat($uri-rfc-prefix,seriesInfo[@name='RFC']/@value)" />
    </s:when>
    <s:when test="seriesInfo/@name='STD'">
      <s:value-of select="concat($uri-std-prefix,seriesInfo[@name='STD']/@value)" />
    </s:when>
    <s:when test="seriesInfo/@name='BCP'">
      <s:value-of select="concat($uri-bcp-prefix,seriesInfo[@name='BCP']/@value)" />
    </s:when>
    <s:when test="seriesInfo/@name='FYI'">
      <s:value-of select="concat($uri-fyi-prefix,seriesInfo[@name='FYI']/@value)" />
    </s:when>
    </s:choose>
  </s:variable>
  
  <dt id="{@anchor}"><s:call-template name="reference-name">
    <s:with-param name="node" select="." />
  </s:call-template></dt>
  <dd>
    <s:choose>
    <s:when test="string-length($target) &gt; 0">『<cite><a href="{$target}" title="URI: &lt;{$target}&gt;"><s:value-of select="front/title" /></a></cite>』</s:when>
    <s:otherwise>『<cite><s:value-of select="front/title" /></cite>』</s:otherwise>
    </s:choose>
    <s:if test="front/ja:title[@xml:lang='ja']">
      <span class="t-pair"><span xml:lang="ja" class="t-l-ja"><s:choose>
      <s:when test="@ja:target-ja">, 『<cite><a href="{@ja:target-ja}" title="URI: &lt;{@ja:target-ja}&gt;"><s:value-of select="front/title[@xml:lang='ja']" /></a></cite>』</s:when>
    <s:otherwise>, 『<cite><s:value-of select="front/title[@xml:lang='ja']" /></cite>』</s:otherwise>
      </s:choose></span></span>
    </s:if>
    
    <s:for-each select="front/author">
      <s:choose>
      <s:when test="@surname and @fullname">, <span title="@fullname"><s:value-of select="concat(@surname,', ',@initials)" /></span></s:when>
      <s:when test="@surname">, <s:value-of select="concat(@surname,', ',@initials)" /></s:when>
      <s:when test="@fullname">, <s:value-of select="@fullname" /></s:when>
      </s:choose>
    </s:for-each>
    
    <s:for-each select="seriesInfo">
      <s:choose>
      <s:when test="not(@name) and not(@value) and ./text()">, <s:value-of select="." /></s:when>
      <s:otherwise>, <s:value-of select="@name" />
        &#xA0;<s:value-of select="@value" /></s:otherwise>
      </s:choose>
    </s:for-each>
    
    , <span class="t-pair"><span xml:lang="en" class="t-l-en">
      <s:value-of select="front/date/@day" />
      &#xA0;<s:value-of select="front/date/@month" />&#xA0;
      <s:value-of select="front/date/@year" />.
    </span>, <span xml:lang="ja" class="t-l-ja">
      <s:value-of select="front/date/@year" />年<s:call-template name="month-ja">
        <s:with-param name="month" select="front/date/@month" />
      </s:call-template><s:if test="front/date/@day"><s:value-of select="front/date/@day" />日</s:if>。
    </span></span>
    
    <s:if test="@ja:additional-information">
      <s:apply-templates />
    </s:if>
  </dd>
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template name="reference-name">
  <s:param name="node" />
  
  <s:choose>
  <s:when test="$use-symbolic-reference='yes'">[<s:value-of select="$node/@anchor" />]</s:when>
  <s:otherwise><s:for-each select="$node">[<s:number />]</s:for-each></s:otherwise>
  </s:choose>
</s:template>


<s:template match="references">
  <s:variable name="title"><s:choose>
  <s:when test="@title"><s:value-of select="@title" /></s:when>
  <s:otherwise>References</s:otherwise>
  </s:choose></s:variable>
  <s:variable name="title-ja"><s:choose>
  <s:when test="@ja:title-ja"><s:value-of select="@ja:title-ja" /></s:when>
  <s:when test="@title = '' or @title = 'References' or @title = 'Bibliography'">参考文献</s:when>
  </s:choose></s:variable>
  
  <div class="rfc-section">
    <s:attribute name="id"><s:choose>
    <!-- for compatible with rfc2629.xslt -->
    <s:when test="@title">rfc.references.<s:value-of select="@title" /></s:when>
    <s:otherwise>rfc.references</s:otherwise>
    </s:choose></s:attribute>
    
    <s:choose>
    <s:when test="$title-ja">
      <div class="t-pair t-heading">
        <h1 xml:lang="en" class="t-l-en"><s:value-of select="$title" /></h1>
        <h1 xml:lang="ja" class="t-l-ja"><s:value-of select="$title-ja" /></h1>
      </div>
    </s:when>
    <s:otherwise><h1 id="rfc.references.{@title}"><s:value-of select="@title" /></h1></s:otherwise>
    </s:choose>
    <dl><s:apply-templates /></dl>
  </div>
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template match="eref[node()]">
  <a href="{@target}" title="URI: &lt;{@target}&gt;"><s:apply-templates /></a>
</s:template>

<!-- copied from rfc2629.xslt -->
<s:template match="iref">
  <span class="rfc-iref"><s:attribute name="id">rfc.iref.<s:number level="any"/></s:attribute>&#xA0;</span>
</s:template>

<s:template match="xref">
  <s:variable name="target" select="@target" />
  <s:variable name="node" select="//*[@anchor=$target]" />
  
  <span class="rfc-xref">
    <a href="#{$target}"><s:choose>
      <s:when test="node()"><s:attribute name="title"><s:value-of select="$node/front/title" /></s:attribute><s:apply-templates />
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
  <s:variable name="node" select="//*[@anchor=$target]" />
  
  <a href="#{$target}"><s:choose>
    <s:when test="node()"><s:attribute name="title"><s:choose>
      <s:when test="$node/front/ja:title-ja"><s:value-of select="$node/front/ja:title-ja" /></s:when>
      <s:otherwise><s:value-of select="$node/front/title" /></s:otherwise>
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
      附属書<s:number level="multiple" format="A.1.1.1.1.1.1.1" />
    </s:for-each></s:when>
    <s:when test="local-name($node)='section'"><s:for-each select="$node">
      <s:attribute name="title"><s:call-template name="section-name-ja">
        <s:with-param name="node" select="$node" />
        <s:with-param name="return-en" select="yes" />
      </s:call-template></s:attribute>
    <s:number level="multiple" />節</s:for-each></s:when>
    <s:when test="local-name($node)='figure'">図<s:for-each select="$node">
      <s:number level="any" count="figure[@title!='' or @anchor!='']" />
    </s:for-each></s:when>
    <s:otherwise>
      <s:choose>
      <s:when test="$node/front/ja:title-ja"><s:attribute name="title"><s:value-of select="$node/front/ja:title-ja" /></s:attribute></s:when>
      <s:otherwise><s:attribute name="title"><s:value-of select="$node/front/title" /></s:attribute></s:otherwise>
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
      <h1>訳文についての著作権声明</h1>
      <s:apply-templates select="/rfc/ja:front/ja:copyright" />
      
      <p><a href="#rfc-copyright">原文の著作権声明</a>が、訳文についても同様に適用されます。</p>
      <p>また、改訳その他の原文の著作権声明に反しない範囲における改変は、一切の許可無く行って構いません。</p>
    </div>
  </ins>
</s:template>

<s:template match="ja:change">
  <div class="rfc-section" id="t-change">
    <h1>翻訳の変更履歴</h1>
    
    <dl>
      <s:for-each select="ja:item"><s:apply-templates select="." /></s:for-each>
    </dl>
  </div>
</s:template>

<s:template match="ja:change/ja:item">
  <dt><s:value-of select="concat(@year,'-',@month,'-',@day,' ')" />
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
    <s:when test="$mail != ''"><a href="mailto:{$mail}" title="電子メイル: &lt;{$mail}&gt;"><s:value-of select="$name" /></a></s:when>
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
  <ul>
    <s:for-each select="ja:item">
      <s:apply-templates select="." />
    </s:for-each>
  </ul>
</s:template>
<s:template match="ja:copyright/ja:item">
  <li><s:apply-templates /></li>
</s:template>

<s:template name="footer">

</s:template>

</s:stylesheet>
<!-- rfc-ja.xsl *** RFC 2629 + 日本語訳 XML 形式 → XHTML 1.1
                    XSLT スタイルシート
                $Date: 2002/05/03 06:10:52 $
-->
<!-- 謝辞
       この XSLT は、 xml2rfc 1.12 package の rfc2629.xslt から
     幾つかの部分を借用しています。
     
     > 	  XSLT transformation from RFC2629 XML format to HTML
     >     
     >     Copyright (c) 2001 Julian F. Reschke (julian.reschke@greenbytes.de)
     >     
     >     placed into the public domain
-->
<!-- TODO:
    ・索引付けに対応
    ・目次生成に対応
-->
<!-- SEE ALSO
    ・<urn:ietf:rfc:2629>
    ・<http://suika.fam.cx/~wakaba/lang/rfc/translation/>
    ・<http://suika.fam.cx/~wakaba/document/rfc-ja/>
-->
<!-- LICENSE

Copyright 2002 wakaba <w@suika.fam.cx>.

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
