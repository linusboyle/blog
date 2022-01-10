<TeXmacs|2.1.1>

<style|source>

<\body>
  <\active*>
    <\src-title>
      <src-style-file|generic|1.0>

      <\src-purpose>
        The generic style.
      </src-purpose>

      <\src-copyright|1998--2004>
        Joris van der Hoeven
      </src-copyright>

      <\src-license>
        This software falls under the <hlink|GNU general public license,
        version 3 or later|$TEXMACS_PATH/LICENSE>. It comes WITHOUT ANY
        WARRANTY WHATSOEVER. You should have received a copy of the license
        which the software. If not, see <hlink|http://www.gnu.org/licenses/gpl-3.0.html|http://www.gnu.org/licenses/gpl-3.0.html>.
      </src-license>
    </src-title>
  </active*>

  <use-package|std|env|title-generic|header-generic|section-generic>

  \;

  <assign|par-first|0fn>

  <assign|par-par-sep|0.6666fn>

  \;

  \;

  <assign|html-css|../resources/web-article.css>

  <assign|html-head-favicon|../resources/favicon.png>

  <assign|html-extra-javascript-src|<tuple|../resources/highlight.pack.js|../resources/notes-base.js>>

  \;

  <assign|code|<\macro|body>
    <\padded>
      <surround||<htab|5mm>|<with|font-family|tt|language|verbatim|par-first|0fn|par-par-sep|0fn|<arg|body>>>
    </padded>
  </macro>>

  <\active*>
    <\src-comment>
      Macro definitions.
    </src-comment>
  </active*>

  <assign|hlink-tm|<macro|body|target|<hlink|<arg|body>|<merge|<arg|target>|.tm>>>>

  <assign|notes-header-name|\<#72F7\>\<#58A8\>\<#5C45\>>

  <assign|notes-header-image|<image|../resources/favicon.png|20pt|||>>

  <assign|notes-header-links|<macro|<hlink|[main]|./main.tm>>>

  <assign|notes-header-list-links|<macro|<hlink|[archive]|./list-articles.tm>>>

  <assign|notes-header-table|<\macro|body>
    <\wide-tabular>
      <tformat|<cwith|1|1|1|1|cell-halign|c>|<cwith|1|1|1|1|cell-width|30pt>|<cwith|1|1|1|1|cell-hmode|exact>|<cwith|1|1|1|-1|cell-valign|c>|<cwith|1|1|3|3|cell-halign|r>|<table|<row|<\cell>
        <notes-header-list-links>
      </cell>|<\cell>
        <space|0pt><arg|body>
      </cell>|<\cell>
        <notes-header-name>
      </cell>>>>
    </wide-tabular>
  </macro>>

  <assign|notes-header|<macro|<notes-header-table|<notes-header-links>>>>

  <assign|tmhtml-notes-header-table|<\macro|body>
    <\html-div-class|notes-header>
      <notes-header-list-links><space|2pt><arg|body><html-class|notes-header-name|<notes-header-name>>
    </html-div-class>
  </macro>>

  <assign|tmhtml-notes-header-xxx|<macro|<html-div-class|notes-header|<notes-header-image><space|2pt><notes-header-links><html-div-class|notes-header-name|<notes-header-name>>>>>

  <assign|notes-abstract|<\macro|body>
    <\padded-center>
      <with|font-series|bold|Summary>
    </padded-center>

    <hrule>

    <small|<arg|body>>

    <hrule>
  </macro>>

  \;

  <assign|notes-entry-date|<macro|date|<hflush><compound|very-small|[<arg|date>]>>>

  <assign|notes-entry-abstract|<\macro|abs>
    <\with|color|dark grey|par-left|2fn>
      <compound|tiny|<arg|abs>>
    </with>
  </macro>>

  <assign|notes-entry|<\macro|file|title|abs|date>
    <hlink|<arg|title>|<arg|file>><notes-entry-date|<arg|date>>

    <notes-entry-abstract|<arg|abs>>
  </macro>>

  <assign|notes-footer|<\macro>
    <hrule>

    Articles are licensed by <hlink|Creative Commons
    Attribution-NonCommercial-ShareAlike 4.0
    International|https://creativecommons.org/licenses/by-nc-sa/4.0/>.\ 

    This page was rendered on <verbatim|<date|%Y-%m-%d>> using <TeXmacs>
    version <verbatim|<TeXmacs-version>>.
  </macro>>

  <assign|tmhtml-notes-entry-date|<macro|date|<html-class|tmweb-entry-date|<arg|date>>>>

  <assign|tmhtml-notes-entry-abstract|<macro|abs|<compound|html-div-class|tmweb-entry-abstract|<arg|abs>>>>
</body>

<\initial>
  <\collection>
    <associate|preamble|true>
  </collection>
</initial>