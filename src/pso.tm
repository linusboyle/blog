<TeXmacs|2.1>

<style|<tuple|generic2|chinese>>

<\body>
  <notes-header>

  \;

  <doc-data|<doc-title|Operational semantics of PSO storage system>>

  <\notes-abstract>
    Operational semantics of PSO storage system
  </notes-abstract>

  \;

  A state consists of a memory <math|M:Loc\<rightarrow\>Val> and a function
  (buffer) <math|B:Tid\<rightarrow\><around*|(||\<nobracket\>><around*|(|Loc\<rightarrow\>Val<rsup|\<ast\>>|)><rsup|\<ast\>>>

  Initially, <math|M<rsub|0>=\<lambda\>x.0>,
  <math|B<rsub|0>=\<lambda\>i.<around*|(|\<lambda\>x.\<varepsilon\>|)>>

  \;

  The propagate rule:

  <\equation*>
    <frac|x\<in\>Loc,B<around*|(|i|)>=s\<cdot\>S,s<around*|(|x|)>=b\<cdot\>v|M,B<long-arrow|\<rubber-rightarrow\>|i:\<varepsilon\>>M<around*|[|x\<mapsto\>v|]>,B<around*|[|i\<mapsto\><around*|(|\<lambda\>y.x=y?b:s<around*|(|y|)>|)>\<cdot\>S|]>>
  </equation*>

  and:

  <\equation*>
    <frac|B<around*|(|i|)>=\<varepsilon\>\<cdot\>S|M,B<long-arrow|\<rubber-rightarrow\>|i:\<varepsilon\>>M,B<around*|[|i\<rightarrow\>S|]>>
  </equation*>

  Store-Store fence rule:

  <\equation*>
    <frac|l=SF|M,B<long-arrow|\<rubber-rightarrow\>|i:l>M,\<lambda\>i.B<around*|(|i|)>\<cdot\>\<varepsilon\>>
  </equation*>

  Write rule:

  <\equation*>
    <frac|l=W<around*|(|x,v|)>,B<around*|(|i|)>=S\<cdot\>s|M,B<long-arrow|\<rubber-rightarrow\>|i:l>M,B<around*|[|i\<rightarrow\>S\<cdot\><around*|(|s<around*|[|x\<rightarrow\>v\<cdot\>s<around*|(|x|)>|]>|)>|]>>
  </equation*>

  The remaining rules are the same as TSO.

  <notes-footer>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>