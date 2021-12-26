<TeXmacs|2.1>

<style|<tuple|generic2|chinese>>

<\body>
  <notes-header>

  \;

  <doc-data|<doc-title|GCC10\<#7F16\>\<#8BD1\>\<#65E7\>\<#7248\>\<#672C\>OCaml\<#7684\>\<#95EE\>\<#9898\>>>

  <\notes-abstract>
    C\<#8BED\>\<#8A00\>tentative definition\<#673A\>\<#5236\>\<#5BFC\>\<#81F4\>\<#7684\>\<#517C\>\<#5BB9\>\<#6027\>\<#95EE\>\<#9898\>
  </notes-abstract>

  \<#5728\>\<#628A\>GCC\<#5347\>\<#7EA7\>\<#5230\>\<#4E86\>10.0\<#5927\>\<#7248\>\<#672C\>\<#4E4B\>\<#540E\>\<#FF0C\>\<#901A\>\<#8FC7\>opam\<#5B89\>\<#88C5\>\<#65E7\>\<#7248\>\<#672C\>\<#7684\>OCaml\<#7F16\>\<#8BD1\>\<#5668\>\<#4FBF\>\<#51FA\>\<#73B0\>\<#4E86\>\<#95EE\>\<#9898\>\<#3002\>\<#6D4B\>\<#8BD5\>\<#4E86\>4.05,4.07,4.08\<#7248\>\<#672C\>\<#FF0C\>\<#95EE\>\<#9898\>\<#57FA\>\<#672C\>\<#4E0A\>\<#662F\>\<#7531\>C\<#7F16\>\<#5199\>\<#7684\>OCaml\<#5B57\>\<#8282\>\<#7801\>\<#89E3\>\<#91CA\>\<#5668\>\<#4E2D\>\<#51FA\>\<#73B0\>\<#591A\>\<#91CD\>\<#5B9A\>\<#4E49\>\<#5BFC\>\<#81F4\>\<#7684\>\<#3002\>\<#4EE5\>OCaml
  4.08\<#7248\>\<#672C\>\<#4E3A\>\<#4F8B\>\<#FF0C\><code*|caml_debug_info>\<#7B26\>\<#53F7\>\<#5728\>\<#6E90\>\<#7801\>\<#4E2D\>\<#6709\>\<#4E24\>\<#5904\>\<#5B9A\>\<#4E49\>\<#FF1A\>

  <image|../resources/2020-07-09-13-19-01-7517.png|1par|||>

  \<#8BF4\>\<#8D77\>\<#6765\>\<#8FD9\>\<#786E\>\<#5B9E\>\<#633A\>\<#8BA9\>\<#4EBA\>\<#7591\>\<#60D1\>\<#7684\>\<#FF0C\>\<#56E0\>\<#4E3A\>\<#8FD9\>\<#4E24\>\<#4E2A\>\<#6587\>\<#4EF6\>\<#90FD\>\<#662F\>\<#6E90\>\<#7801\>\<#5305\>\<#91CC\>\<#81EA\>\<#5E26\>\<#FF0C\>\<#800C\>\<#4E0D\>\<#662F\>\<#81EA\>\<#52A8\>\<#751F\>\<#6210\>\<#7684\>\<#3002\>\<#67E5\>\<#770B\>\<#5F00\>\<#53D1\>\<#8005\>\<#624B\>\<#5199\>\<#7684\>Makefile\<#4E5F\>\<#53D1\>\<#73B0\>\<#FF0C\>\<#8FD9\>\<#4E24\>\<#4E2A\>\<#6E90\>\<#6587\>\<#4EF6\>\<#90FD\>\<#88AB\>\<#7F16\>\<#8BD1\>\<#548C\>\<#94FE\>\<#63A5\>\<#4E86\>\<#3002\>

  \<#8FD9\>\<#5C31\>\<#66F4\>\<#8BA9\>\<#4EBA\>\<#83AB\>\<#540D\>\<#5176\>\<#5999\>\<#4E86\>\<#3002\>OCaml\<#5F00\>\<#53D1\>\<#8005\>\<#8FD9\>\<#4E48\>\<#591A\>\<#FF0C\>\<#4E0D\>\<#53EF\>\<#80FD\>\<#53EA\>\<#6709\>\<#6211\>\<#4E00\>\<#4E2A\>\<#4EBA\>\<#51FA\>\<#8FD9\>\<#4E2A\>\<#95EE\>\<#9898\>\<#FF0C\>\<#800C\>\<#4E14\>\<#8FD9\>\<#4E2A\>\<#7F16\>\<#8BD1\>\<#7CFB\>\<#7EDF\>\<#7684\>\<#95EE\>\<#9898\>\<#5F88\>\<#660E\>\<#663E\>\<#FF0C\>\<#591A\>\<#91CD\>\<#5B9A\>\<#4E49\>\<#4E5F\>\<#5F88\>\<#5BB9\>\<#6613\>\<#5C31\>\<#88AB\>\<#53D1\>\<#73B0\>\<#4E86\>\<#624D\>\<#5BF9\>\<#3002\>

  \<#4E8B\>\<#5B9E\>\<#4E0A\>\<#53BB\>\<#5404\>\<#4E2A\>\<#641C\>\<#7D22\>\<#5F15\>\<#64CE\>\<#91CC\>\<#90FD\>\<#641C\>\<#4E0D\>\<#5230\>\<#76F8\>\<#5173\>\<#7684\>\<#4FE1\>\<#606F\>\<#FF0C\>\<#8FD9\>\<#79CD\>bug\<#8FD8\>\<#662F\>\<#5F97\>\<#53BB\>github\<#548C\>\<#5B98\>\<#65B9\>\<#793E\>\<#533A\>\<#627E\>\<#3002\>\<#5982\>\<#679C\>\<#4F60\>\<#4E5F\>\<#6709\>\<#540C\>\<#6837\>\<#7684\>\<#95EE\>\<#9898\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#770B\>\<#8FD9\>\<#51E0\>\<#4E2A\>\<#94FE\>\<#63A5\>\<#FF1A\>

  <\itemize>
    <item><hlink|Opam switch create and gcc10|https://discuss.ocaml.org/t/opam-switch-create-and-gcc10/5864>

    <item><hlink|Cannot install ocaml 4.07.1 (multiple definition of
    `caml_debug_info')|https://discuss.ocaml.org/t/cannot-install-ocaml-4-07-1-multiple-definition-of-caml-debug-info/5996>

    <item><hlink|\<#89E3\>\<#51B3\>\<#6B64\>\<#95EE\>\<#9898\>\<#7684\>PR|https://github.com/ocaml/ocaml/pull/9180>
  </itemize>

  \<#6240\>\<#6709\>OCaml 4.09.1\<#7248\>\<#672C\>\<#4E4B\>\<#524D\>\<#7684\>\<#7F16\>\<#8BD1\>\<#5668\>\<#90FD\>\<#6709\>\<#8FD9\>\<#4E2A\>\<#95EE\>\<#9898\>\<#3002\>
  \<#7B80\>\<#800C\>\<#8A00\>\<#4E4B\>\<#FF0C\>\<#95EE\>\<#9898\>\<#51FA\>\<#5728\>GCC10\<#9ED8\>\<#8BA4\>\<#542F\>\<#7528\>\<#4E86\>-fno-common\<#7279\>\<#6027\>\<#3002\>\<#8FD9\>\<#4E2A\>\<#7279\>\<#6027\>\<#4F7F\>\<#5F97\>\<#6240\>\<#6709\>\<#6CA1\>\<#6709\>\<#521D\>\<#59CB\>\<#5316\>\<#7684\>\<#5168\>\<#5C40\>\<#53D8\>\<#91CF\>\<#88AB\>\<#7F6E\>\<#4E8E\>bss\<#6BB5\>\<#FF0C\>\<#4ECE\>\<#800C\>\<#94FE\>\<#63A5\>\<#5668\>\<#65E0\>\<#6CD5\>\<#5408\>\<#5E76\>\<#8FD9\>\<#4E9B\>\<#53D8\>\<#91CF\>\<#FF0C\>\<#5BFC\>\<#81F4\>\<#591A\>\<#91CD\>\<#5B9A\>\<#4E49\>\<#3002\>

  \<#5728\>C\<#8BED\>\<#8A00\>\<#91CC\>\<#FF0C\>\<#5BF9\>\<#4E8E\>\<#672A\>\<#521D\>\<#59CB\>\<#5316\>\<#7684\>\<#5168\>\<#5C40\>\<#53D8\>\<#91CF\>\<#FF0C\>\<#5982\>\<#679C\>\<#4E0D\>\<#7528\>extern\<#FF0C\>\<#90A3\>\<#4E48\>\<#5E94\>\<#8BE5\>\<#662F\>\<#4F5C\>\<#4E3A\>\<#5B9A\>\<#4E49\>\<#51FA\>\<#73B0\>\<#7684\>\<#3002\>\<#4E0D\>\<#8FC7\>\<#FF0C\>\<#4EE5\>\<#524D\>\<#7684\>\<#9057\>\<#7559\>\<#4EE3\>\<#7801\>\<#603B\>\<#662F\>\<#559C\>\<#6B22\>\<#7701\>\<#7565\>\<#6389\>extern\<#FF0C\>\<#8FD9\>\<#5728\>C\<#8BED\>\<#8A00\>\<#6807\>\<#51C6\>\<#91CC\>\<#53EB\>\<#505A\><code*|tentative
  definition>\<#FF0C\>\<#4E5F\>\<#5C31\>\<#662F\>\<#5728\>\<#540C\>\<#4E00\>\<#4E2A\>\<#7F16\>\<#8BD1\>\<#5355\>\<#5143\>\<#4E2D\>\<#FF0C\>\<#5168\>\<#5C40\>\<#53D8\>\<#91CF\>\<#53EF\>\<#4EE5\>\<#6709\>\<#591A\>\<#4E2A\>\<#5B9A\>\<#4E49\>\<#FF0C\>\<#53EA\>\<#8981\>\<#6700\>\<#591A\>\<#51FA\>\<#73B0\>\<#4E00\>\<#6B21\>\<#521D\>\<#59CB\>\<#8D4B\>\<#503C\>\<#3002\>\<#6362\>\<#8A00\>\<#4E4B\>\<#FF0C\>\<#8FD9\>\<#662F\>\<#5BF9\>\<#7684\>\<#FF1A\>

  <\code>
    \;

    int a;

    int a;

    int main() {

    \ \ \ \ a = 1;

    }

    \;
  </code>

  \<#4E0D\>\<#8FC7\>\<#8981\>\<#6CE8\>\<#610F\>\<#FF0C\>C++\<#53EF\>\<#6CA1\>\<#8FD9\>\<#79CD\>\<#8BF4\>\<#6CD5\>\<#FF0C\>\<#4E0A\>\<#9762\>\<#7684\>\<#4EE3\>\<#7801\>CPP\<#7F16\>\<#8BD1\>\<#5668\>\<#662F\>\<#4E0D\>\<#8FC7\>\<#7684\>\<#3002\>\<#8FD9\>\<#8BA9\>\<#6211\>\<#60F3\>\<#8D77\>\<#5927\>\<#4E00\>\<#521A\>\<#5B66\>C\<#7684\>\<#65F6\>\<#5019\>\<#FF0C\>\<#8001\>\<#5E08\>\<#7528\>C++\<#7F16\>\<#8BD1\>\<#5668\>\<#FF0C\>\<#6211\>\<#7528\>C\<#8BED\>\<#8A00\>\<#7F16\>\<#8BD1\>\<#5668\>\<#FF0C\>\<#7ED3\>\<#679C\>\<#51FA\>\<#4E86\>\<#4E0D\>\<#5C11\>\<#95EE\>\<#9898\>\<#3002\>Tentative
  Definition\<#662F\>\<#5176\>\<#4E2D\>\<#7684\>\<#4E00\>\<#4E2A\>\<#3002\>
  \<#73B0\>\<#5728\>GCC10\<#9ED8\>\<#8BA4\>\<#7981\>\<#6B62\>\<#4E86\>Tentative
  Definition\<#FF0C\>\<#7B97\>\<#6765\>\<#4E5F\>\<#662F\>\<#597D\>\<#4E8B\>\<#3002\>

  \<#626F\>\<#8FDC\>\<#4E86\>\<#FF0C\>\<#7B80\>\<#5355\>\<#6765\>\<#8BF4\>\<#FF0C\>\<#8981\>\<#89E3\>\<#51B3\>\<#6700\>\<#521D\>\<#7684\>\<#95EE\>\<#9898\>\<#FF0C\>\<#8981\>\<#4E48\>\<#4F60\>\<#5B89\>\<#88C5\>4.09.1\<#4E4B\>\<#540E\>\<#7684\>OCaml\<#FF0C\>\<#8981\>\<#4E48\>\<#4F60\>\<#5C31\>\<#5728\>\<#7F16\>\<#8BD1\>\<#65E7\>\<#7248\>\<#672C\>\<#7F16\>\<#8BD1\>\<#5668\>\<#7684\>\<#65F6\>\<#5019\>\<#FF0C\>\<#52A0\>\<#5165\>-fcommon\<#9009\>\<#9879\>\<#3002\>

  <notes-footer>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|?|1>>
    <associate|auto-3|<tuple|?|2>>
    <associate|auto-4|<tuple|?|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\P\<#74E6\>\<#683C\>\<#7EB3\>\<#75C7\>\Q\<#60A3\>\<#8005\>\<#7684\>\<#81EA\>\<#8FF0\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#74E6\>\<#683C\>\<#7EB3\>\<#7684\>\<#6574\>\<#4F53\>\<#827A\>\<#672F\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#5FB7\>\<#610F\>\<#5FD7\>\<#6C11\>\<#65CF\>\<#7684\>\<#7279\>\<#6027\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>