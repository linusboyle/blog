<TeXmacs|2.1>

<style|<tuple|generic2|chinese>>

<\body>
  <notes-header>

  <doc-data|<doc-title|snapd\<#65E0\>\<#6CD5\>\<#52A0\>\<#8F7D\>apparmor\<#914D\>\<#7F6E\>\<#89E3\>\<#51B3\>\<#65B9\>\<#6CD5\>>>

  <\notes-abstract>
    \<#56E0\>\<#4E3A\>\<#65E0\>\<#6CD5\>\<#81EA\>\<#52A8\>\<#52A0\>\<#8F7D\>apparmor\<#914D\>\<#7F6E\>\<#800C\>\<#5BFC\>\<#81F4\>\<#7684\>\<#91CD\>\<#542F\>\<#540E\>\<#5E94\>\<#7528\>\<#5168\>\<#90E8\>\<#5931\>\<#6548\>\<#FF0C\>\<#636E\>\<#8BF4\>\<#662F\>snapd\<#7684\>\<#4E00\>\<#4E2A\>\<#8001\>\<#95EE\>\<#9898\>\<#4E86\>\<#FF0C\>\<#8FD9\>\<#91CC\>\<#7ED9\>\<#51FA\>\<#4E00\>\<#4E2A\>\<#624B\>\<#52A8\>\<#89E3\>\<#51B3\>\<#7684\>\<#529E\>\<#6CD5\>\<#3002\>
  </notes-abstract>

  \<#5F88\>\<#4E45\>\<#6CA1\>\<#6709\>\<#5199\>\<#6280\>\<#672F\>\<#6587\>\<#7AE0\>\<#4E86\>:)

  Spotify\<#53EA\>\<#63D0\>\<#4F9B\>deb\<#7684\>\<#5B89\>\<#88C5\>\<#5305\>\<#FF0C\>\<#6240\>\<#4EE5\>\<#6211\>\<#53EA\>\<#597D\>\<#8F6C\>\<#5411\>snap\<#6216\>\<#8005\>appimage\<#4E86\>\<#3002\>Snap\<#4E0B\>spotify\<#8FD0\>\<#884C\>\<#4E00\>\<#5207\>\<#826F\>\<#597D\>\<#FF0C\>\<#4F53\>\<#9A8C\>\<#4E0D\>\<#9519\>\<#3002\>\<#53EA\>\<#4E0D\>\<#8FC7\>\<#7535\>\<#8111\>\<#91CD\>\<#542F\>\<#4E4B\>\<#540E\>\<#FF0C\>snapd\<#5C31\>\<#56E0\>\<#4E3A\>apparmor\<#7684\>\<#95EE\>\<#9898\>\<#505C\>\<#6B62\>\<#5DE5\>\<#4F5C\>\<#4E86\>\<#FF0C\>\<#5E76\>\<#629B\>\<#51FA\>\<#5982\>\<#4E0B\>\<#9519\>\<#8BEF\>:

  <code|<\code*>
    cannot change profile for the next exec call: No such file or directory\ 

    snap-update-ns failed with code 1: No such file or directory

    \;
  </code*>>

  systemd\<#65E5\>\<#5FD7\>\<#663E\>\<#793A\>\<#51FA\>\<#4E86\>\<#8FD9\>\<#662F\>spotify\<#7684\>apparmor\<#914D\>\<#7F6E\>\<#6CA1\>\<#52A0\>\<#8F7D\>\<#7684\>\<#539F\>\<#56E0\>\<#3002\>\<#5728\>\<#6211\>\<#7684\>\<#53D1\>\<#884C\>\<#7248\>(openSUSE
  Tumbleweed)\<#FF0C\>snapd\<#5E94\>\<#7528\>\<#7684\>apparmor\<#914D\>\<#7F6E\>\<#5728\><code*|/var/lib/snapd/apparmor/profile>\<#76EE\>\<#5F55\>\<#4E0B\>\<#3002\>snapd\<#7684\>apparmor\<#81EA\>\<#52A8\>\<#52A0\>\<#8F7D\>\<#7EC4\>\<#4EF6\>\<#5E76\>\<#6CA1\>\<#6709\>\<#62A5\>\<#9519\>\<#FF0C\>\<#4F46\>\<#662F\>\<#4E0D\>\<#77E5\>\<#9053\>\<#4E3A\>\<#4EC0\>\<#4E48\>\<#914D\>\<#7F6E\>\<#5E76\>\<#6CA1\>\<#6709\>\<#81EA\>\<#52A8\>\<#52A0\>\<#8F7D\>\<#3002\>\<#90A3\>\<#5C31\>\<#53EA\>\<#597D\>\<#81EA\>\<#5DF1\>\<#6765\>\<#FF1A\>

  <code|<\code*>
    sudo apparmor_parse -r /var/lib/snapd/apparmor/profile/*

    \;
  </code*>>

  \<#4E00\>\<#5207\>\<#6B63\>\<#5E38\>\<#FF0C\>\<#5B8C\>\<#7F8E\>\<#3002\>

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
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
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