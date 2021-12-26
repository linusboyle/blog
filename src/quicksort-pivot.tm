<TeXmacs|2.1>

<style|<tuple|generic2|chinese>>

<\body>
  <notes-header>

  <doc-data|<doc-title|\<#5FEB\>\<#901F\>\<#6392\>\<#5E8F\>\<#8F74\>\<#70B9\>\<#9009\>\<#53D6\>\<#7684\>\<#4F18\>\<#5316\>>>

  <\notes-abstract>
    \<#4F18\>\<#5316\>\<#5FEB\>\<#901F\>\<#6392\>\<#5E8F\>\<#5E38\>\<#6570\>\<#FF0C\>\<#964D\>\<#4F4E\>\<#6BD4\>\<#8F83\>\<#6B21\>\<#6570\>\<#7684\>\<#4E00\>\<#4E9B\>\<#529E\>\<#6CD5\>\<#3002\>\<#4E3B\>\<#8981\>\<#662F\>\<#5173\>\<#4E8E\>\<#8F74\>\<#70B9\>\<#7684\>\<#9009\>\<#53D6\>\<#65B9\>\<#6CD5\>\<#FF0C\>\<#5982\>\<#968F\>\<#673A\>\<#9009\>\<#53D6\>\<#FF0C\>\<#4E09\>\<#53D6\>\<#6837\>\<#53D6\>\<#4E2D\>\<#503C\>\<#FF0C\>\<#4E94\>\<#53D6\>\<#6837\>\<#5212\>\<#5206\>
  </notes-abstract>

  \<#5FEB\>\<#901F\>\<#6392\>\<#5E8F\>\<#7684\>\<#590D\>\<#6742\>\<#5EA6\>\<#662F\><math|O<around*|(|nlogn|)>>\<#FF0C\>\<#4E00\>\<#822C\>\<#6765\>\<#8BF4\>\<#6BD4\>\<#5F52\>\<#5E76\>\<#3001\>\<#5806\>\<#6392\>\<#5E8F\>\<#8981\>\<#5FEB\>\<#3002\>\<#7136\>\<#800C\>\<#5FEB\>\<#6392\>\<#672C\>\<#8EAB\>\<#6700\>\<#574F\>\<#60C5\>\<#51B5\>\<#4E0B\>\<#9000\>\<#5316\>\<#4E3A\>\<#5192\>\<#6CE1\>\<#6392\>\<#5E8F\>\<#FF0C\>\<#4E0D\>\<#591F\>\<#7A33\>\<#5B9A\>\<#3002\>

  \<#8FD9\>\<#79CD\>\P\<#6700\>\<#574F\>\<#60C5\>\<#51B5\>\Q\<#6E90\>\<#4E8E\>\<#8F74\>\<#70B9\>\<#FF08\>pivot\<#FF09\>\<#7684\>\<#9009\>\<#53D6\>:\<#8003\>\<#8651\>\<#5B8C\>\<#5168\>\<#6709\>\<#5E8F\>\<#7684\>\<#5E8F\>\<#5217\>{0,
  1, 2, ..... n}, \<#5982\>\<#679C\>\<#9009\>\<#62E9\>\<#6700\>\<#5DE6\>\<#4FA7\>\<#7684\>\<#5143\>\<#7D20\>\<#4E3A\>\<#8F74\>\<#70B9\>\<#FF0C\>\<#6BCF\>\<#4E00\>\<#6B21\>\<#7B97\>\<#6CD5\>\<#8FC7\>\<#7A0B\>\<#90FD\>\<#4F1A\>\<#5C06\>\<#533A\>\<#95F4\>\<#5206\>\<#4E3A\>\<#957F\>\<#5EA6\>\<#4E3A\>1\<#548C\>\<#957F\>\<#5EA6\>\<#4E3A\>n-1\<#7684\>\<#5B50\>\<#5E8F\>\<#5217\>\<#FF0C\>\<#56E0\>\<#800C\>\<#590D\>\<#6742\>\<#5EA6\>\<#662F\><math|O<around*|(|n<rsup|2>|)>>;\<#800C\>\<#5BF9\>\<#4E8E\>\<#5B8C\>\<#5168\>\<#53CD\>\<#5E8F\>\<#7684\>\<#5E8F\>\<#5217\>{n,
  n-1, n-2, ..... 1, 0},\<#5982\>\<#679C\>\<#9009\>\<#62E9\>\<#6700\>\<#53F3\>\<#4FA7\>\<#7684\>\<#5143\>\<#7D20\>\<#4E3A\>\<#8F74\>\<#70B9\>\<#FF0C\>\<#533A\>\<#95F4\>\<#7684\>\<#5212\>\<#5206\>\<#60C5\>\<#51B5\>\<#540C\>\<#6837\>\<#6700\>\<#574F\>\<#3002\>

  \<#4E00\>\<#822C\>\<#60C5\>\<#51B5\>\<#4E0B\>\<#FF0C\>\<#5BF9\>\<#5E94\>\<#4E8E\>\<#4E00\>\<#7EC4\>\<#53EF\>\<#80FD\>\<#7684\>\<#8F93\>\<#5165\>\<#FF0C\>\<#5982\>\<#679C\>\<#8F74\>\<#70B9\>\<#9009\>\<#53D6\>\<#4E3A\>\<#6BCF\>\<#4E00\>\<#6B21\>\<#90FD\>\<#5212\>\<#5206\>\<#51FA\>\<#957F\>\<#5EA6\>\<#4E3A\>1\<#7684\>\<#5B50\>\<#5E8F\>\<#5217\>\<#7684\>\<#5143\>\<#7D20\>\<#FF0C\>\<#5C06\>\<#8FBE\>\<#5230\>\<#6700\>\<#574F\>\<#60C5\>\<#51B5\>\<#3002\>

  \<#4E00\>\<#79CD\>\<#5E38\>\<#89C1\>\<#7684\>\<#7B56\>\<#7565\>\<#662F\>\<#968F\>\<#673A\>\<#9009\>\<#53D6\>\<#8F74\>\<#70B9\>\<#3002\>\<#9274\>\<#4E8E\>\<#5927\>\<#90E8\>\<#5206\>\<#5FEB\>\<#6392\>\<#9009\>\<#62E9\>\<#6700\>\<#5DE6\>\<#4FA7\>\<#5143\>\<#7D20\>\<#4E3A\>\<#8F74\>\<#70B9\>\<#FF0C\>\<#5728\>\<#4E0D\>\<#7834\>\<#574F\>\<#73B0\>\<#6709\>\<#5B9E\>\<#73B0\>\<#7684\>\<#57FA\>\<#7840\>\<#4E0A\>\<#FF0C\>\<#5728\>\<#9012\>\<#5F52\>\<#5F00\>\<#59CB\>\<#540E\>\<#9996\>\<#5148\>\<#968F\>\<#673A\>\<#9009\>\<#62E9\>\<#4E00\>\<#4E2A\>\<#5143\>\<#7D20\>\<#548C\>\<#6700\>\<#5DE6\>\<#4FA7\>\<#5143\>\<#7D20\>\<#4EA4\>\<#6362\>\<#FF0C\>\<#5176\>\<#4F59\>\<#8FC7\>\<#7A0B\>\<#4E0D\>\<#53D8\>\<#FF0C\>\<#8FD9\>\<#6837\>\<#5C31\>\<#7B49\>\<#6548\>\<#4E3A\>\<#968F\>\<#673A\>\<#9009\>\<#4E86\>\<#4E00\>\<#4E2A\>\<#5143\>\<#7D20\>\<#4F5C\>\<#4E3A\>\<#8F74\>\<#70B9\>\<#3002\>\<#8FD9\>\<#79CD\>\<#65B9\>\<#6CD5\>\<#7684\>\<#671F\>\<#671B\>\<#6BD4\>\<#8F83\>\<#6B21\>\<#6570\>\<#662F\>1.386nlogn\<#3002\>

  \<#7B2C\>\<#4E8C\>\<#79CD\>\<#65B9\>\<#6CD5\>\<#662F\>\<#9009\>\<#62E9\>\<#5F85\>\<#6392\>\<#5E8F\>\<#5E8F\>\<#5217\>\<#7684\>\<#6700\>\<#5DE6\>\<#3001\>\<#6700\>\<#53F3\>\<#548C\>\<#4E2D\>\<#95F4\>\<#4E09\>\<#4E2A\>\<#5143\>\<#7D20\>\<#4E2D\>\<#7684\>\<#4E2D\>\<#4F4D\>\<#6570\>\<#4F5C\>\<#4E3A\>\<#8F74\>\<#70B9\>\<#3002\>\<#671F\>\<#671B\>\<#6BD4\>\<#8F83\>\<#6B21\>\<#6570\>\<#964D\>\<#4E3A\>1.188nlogn\<#FF0C\>\<#4EE3\>\<#4EF7\>\<#662F\>3%\<#5DE6\>\<#53F3\>\<#7684\>\<#4EA4\>\<#6362\>\<#6B21\>\<#6570\>\<#3002\>\<#8FD9\>\<#4E00\>\<#6B65\>\<#9AA4\>\<#53EF\>\<#4EE5\>\<#53CD\>\<#590D\>\<#8FDB\>\<#884C\>\<#FF0C\>\<#6BD4\>\<#5982\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#5148\>\<#5C06\>\<#533A\>\<#95F4\>\<#5206\>\<#4E3A\>\<#4E09\>\<#6BB5\>\<#FF0C\>\<#6BCF\>\<#4E00\>\<#6BB5\>\<#4F7F\>\<#7528\>\<#4E0A\>\<#8FF0\>\<#65B9\>\<#6CD5\>\<#9009\>\<#53D6\>\<#4E00\>\<#4E2A\>\<#8F74\>\<#70B9\>\<#FF0C\>\<#7136\>\<#540E\>\<#518D\>\<#6BD4\>\<#8F83\>\<#8FD9\>\<#4E09\>\<#4E2A\>\<#70B9\>\<#FF0C\>\<#53D6\>\<#5176\>\<#4E2D\>\<#4F4D\>\<#6570\>\<#FF0C\>\<#79F0\>\<#4E4B\>\<#4E3A\>ninther\<#3002\>

  \<#7B2C\>\<#4E8C\>\<#79CD\>\<#65B9\>\<#6CD5\>\<#7684\>\<#539F\>\<#7406\>\<#53EF\>\<#4EE5\>\<#5927\>\<#81F4\>\<#7406\>\<#89E3\>\<#4E3A\>\<#FF0C\>\<#4ECE\>\<#9996\>\<#5C3E\>\<#548C\>\<#4E2D\>\<#90E8\>\<#9009\>\<#62E9\>\<#4E09\>\<#4E2A\>\<#5143\>\<#7D20\>\<#7684\>\<#4E2D\>\<#4F4D\>\<#6570\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#5145\>\<#5206\>\<#63A5\>\<#8FD1\>\<#4E8E\>\<#539F\>\<#5E8F\>\<#5217\>\<#7684\>\<#4E2D\>\<#4F4D\>\<#6570\>\<#3002\>\<#6211\>\<#4EEC\>\<#77E5\>\<#9053\>\<#FF0C\>\<#5982\>\<#679C\>\<#6BCF\>\<#4E00\>\<#6B21\>\<#8F74\>\<#70B9\>\<#90FD\>\<#5728\>\<#7EBF\>\<#6027\>\<#65F6\>\<#95F4\>\<#9009\>\<#62E9\>\<#4E3A\>\<#4E2D\>\<#4F4D\>\<#6570\>\<#FF0C\>\<#90A3\>\<#4E48\>\<#5FEB\>\<#6392\>\<#662F\>\<#7A33\>\<#5B9A\>\<#7684\><math|O<around*|(|nlogn|)>>\<#7B97\>\<#6CD5\>\<#3002\>\<#56E0\>\<#6B64\>\<#8FD9\>\<#79CD\>\<#65B9\>\<#6CD5\>\<#53EF\>\<#4EE5\>\<#964D\>\<#4F4E\>\<#6700\>\<#574F\>\<#60C5\>\<#51B5\>\<#53D1\>\<#751F\>\<#7684\>\<#6982\>\<#7387\>\<#FF08\>\<#8F93\>\<#5165\>\<#5E8F\>\<#5217\>\<#968F\>\<#673A\>\<#7684\>\<#60C5\>\<#51B5\>\<#FF09\>\<#FF0C\>\<#4E14\>\<#591A\>\<#6B21\>\<#91CD\>\<#590D\>\<#8FD9\>\<#4E2A\>\<#8FC7\>\<#7A0B\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#8FDB\>\<#4E00\>\<#6B65\>\<#4F18\>\<#5316\>\<#3002\>

  \<#5982\>\<#679C\>\<#6211\>\<#4EEC\>\<#80FD\>\<#5728\>\<#7EBF\>\<#6027\>\<#65F6\>\<#95F4\>\<#91CC\>\<#627E\>\<#5230\>\<#539F\>\<#5E8F\>\<#5217\>\<#7684\>\<#4E2D\>\<#4F4D\>\<#6570\>\<#5C31\>\<#597D\>\<#4E86\>\<#FF01\>\<#8FD9\>\<#5C31\>\<#662F\>\<#4E00\>\<#4E2A\>n/2-\<#9009\>\<#53D6\>\<#95EE\>\<#9898\>\<#3002\>\<#73B0\>\<#6709\>\<#5FEB\>\<#6392\>\<#7684\>\<#666E\>\<#904D\>\<#7B56\>\<#7565\>\<#5373\>quickselect\<#FF0C\>\<#800C\>\<#91C7\>\<#7528\>\<#4E94\>\<#53D6\>\<#6837\>\<#5212\>\<#5206\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#5728\>\<#7EBF\>\<#6027\>\<#65F6\>\<#95F4\>\<#5185\>\<#627E\>\<#5230\>\<#4E00\>\<#4E2A\>\<#5E8F\>\<#5217\>\<#7B2C\>k\<#5927\>\<#7684\>\<#6570\>\<#3002\>

  \<#5173\>\<#4E8E\>\<#4E94\>\<#53D6\>\<#6837\>\<#5212\>\<#5206\>\<#FF0C\>\<#4E5F\>\<#5C31\>\<#662F\>linearselect\<#7684\>\<#95EE\>\<#9898\>\<#FF0C\>\<#8FD9\>\<#91CC\>\<#4E0D\>\<#518D\>\<#8D58\>\<#8FF0\>\<#3002\>\<#56E0\>\<#4E3A\>\<#8FD9\>\<#79CD\>\<#4F18\>\<#5316\>\<#65B9\>\<#6CD5\>\<#5728\>\<#5B9E\>\<#9645\>\<#4E2D\>\<#51E0\>\<#4E4E\>\<#6CA1\>\<#6709\>\<#5E94\>\<#7528\>\<#FF08\>\<#5E38\>\<#6570\>\<#8FC7\>\<#5927\>\<#FF0C\>\<#53EA\>\<#6709\>\<#6570\>\<#636E\>\<#96C6\>\<#6781\>\<#5927\>\<#65F6\>\<#6709\>\<#6548\>\<#FF0C\>\<#5728\>\<#8FD9\>\<#79CD\>\<#60C5\>\<#51B5\>\<#4E0B\>\<#FF0C\>introsort\<#66F4\>\<#597D\>\<#FF09\>

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
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|\<#5C0F\>\<#8BC4\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#6625\>\<#590F\>\<#79CB\>\<#51AC\>\<#4E00\>\<#8272\>\<#8863\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#5267\>\<#8BC4\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|\<#89E3\>\<#6563\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|\<#4E3A\>\<#60C5\>\<#4E09\>\<#987E\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|\<#5F02\>\<#57DF\>\<#51A5\>\<#60F3\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>