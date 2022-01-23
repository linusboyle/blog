<TeXmacs|2.1>

<style|<tuple|generic2|chinese>>

<\body>
  <notes-header>

  \;

  <doc-data|<doc-title|Assembly Language>>

  <\notes-abstract>
    \<#66FE\>\<#7ECF\>\<#5B66\>\<#4E60\>Nand2Tetris\<#65F6\>\<#7684\>\<#62A5\>\<#544A\>\<#FF0C\>\<#5173\>\<#4E8E\>\<#6C47\>\<#7F16\>\<#8BED\>\<#8A00\>\<#53CA\>\<#6C47\>\<#7F16\>\<#5668\>\<#3002\>
  </notes-abstract>

  Having built the entire functional Hack computer,this chapter advances
  towards the hardware-binded control method of the computer, which is
  <strong|assembly language>. It's our first stop in the journey through the
  <em|software layer>.<em|NOTE> the order has been rearranged,and this
  chapter is corresponded with original chapter 4.

  <image|https://cdn.jsdelivr.net/gh/linusboyle/imgupload/upload/2020-02-23-21-38-01-6996.png|1par|||>

  <section*|Introduction>

  Congratulations on your completed implementation of the Hack computer. It's
  fully functional,and also,powerful. We originate from <strong|Nand> gate
  only to build the whole computer and adopt Harvard architecture ,which
  faclitates matters when we look into the underlying structure.Here's a
  graph to make your memory of <strong|computer architecture> come back.[1]\ 

  <image|https://cdn.jsdelivr.net/gh/linusboyle/imgupload/upload/2020-02-23-21-38-45-2906.png|1par|||>

  We're now going to build our software layers and this chapter will discuss
  the language that directly generated by hardware implementation and design
  an assembly language. In the end,we shall be capable to get the machine
  running as instructed.

  <subsection*|What is program?>

  Instruction memory,or <em|ROM>, is where the instructions are stored.
  Recall the design of our Hack computer,and you may remember the
  <strong|Reset> button on the surface of the computer,which will redirect PC
  to be 0 - equally restart the program. Computer reads instructions in ROM
  according to the content of PC,and all the instructions form the
  <em|program>.

  Since you have already built the computer,it's quite easy to find the
  instructions can be classified into 2 kinds: One kind changes the content
  of A-register,while another carries out operations. You can divide the
  latter into 2 aspects as well :either jump among the instructions of the
  program or conduct arithmetical&logical operation.

  What we use to encode our program is machine-binded string of 0s and
  1s,computer explicitly obey the codes.We call them <strong|Machine
  language>,because of its direct connection with the underlying hardware
  platform.

  <subsection*|What is programming?>

  Generally speaking,what we are going to do in following chapters is
  <strong|all about solving problems by programming>. When we already have
  the computer running,how to translate mental thought or concept to
  machine-undertstandable notation by programming is the case. A graph below
  summarizes the general process.[2]

  <image|https://cdn.jsdelivr.net/gh/linusboyle/imgupload/upload/2020-02-23-21-39-03-166.png|0.6383w|||>

  As you can see,machine language serves as the fundamental of the software
  layer as well as the interface for hardware. We can prove that anything a
  computer can do is able to be expressed by this language.When we are
  <strong|programming>,the code produced all originate from machine language.
  What we will do is just facilitate the process of programming.

  <subsection*|Assembly:Why do we need it?>

  The difference between a machine and a human brain decides there should be
  higher level of language for programmers.<strong|Assembly Language> is the
  most fundamental abstraction,which can be understood as mnemonic notation
  for the machine language. For instance , <code*|1110001110000000> can be
  represented by <code*|D-1>.

  The design of assembly language is not fixed,but it should be
  tightly-binded to machine language. Generally speaking,a single assembly
  instruction is in correspondance with a single machine instruction,so there
  is no true difference between these two,because the <strong|vocabulary> of
  the languages is the same - as stated before,jumping and operations - Just
  like :

  \<less\>!--```sequence--\<gtr\> \<less\>!--English-\<gtr\>French:one to
  one--\<gtr\> \<less\>!--French-\<gtr\>English:--\<gtr\>

  \<less\>!--English-\<gtr\>Latin:several to one--\<gtr\>
  \<less\>!--Latin-\<gtr\>English:--\<gtr\> \<less\>!--```--\<gtr\>

  But we will see later that although unnecessary,the assembly language can
  provide utilities for <em|programmers>,for the sake of simplifying the
  <strong|programming process>.

  <section*|Specification>

  In this part we will see how the Hack Assembly language is designed,and
  learn how to program using this language. A vast part of details in this
  section can be found in <strong|Nand2Tetris textbook ,Section 4.2>.
  Although we rearrange the order of the chapters,it still throws light on
  the topic.

  <subsection*|A- and C- Instructions>

  As mentioned before,from the input of CPU,we classify the instructions to
  two kinds.In assembly language we define them to A- and C-
  instructions,respectively.

  A-instruction is used to change the content of A register,its syntax is:

  <image|https://cdn.jsdelivr.net/gh/linusboyle/imgupload/upload/2020-02-23-21-42-15-2944.png|0.6383w|||>

  while C-instruction is used to carry out operation,jump through program and
  change the content of D and M register:

  <image|https://cdn.jsdelivr.net/gh/linusboyle/imgupload/upload/2020-02-23-21-42-30-3996.png|0.6383w|||>

  These two kinds of instructions are all user-friendly notation for
  corresponding machine code,as shown above.For more information,just refer
  to the Nand2Tetris textbook where more details are discussed.

  <subsection*|Expanded Utilities of Hack Assembly Language>

  It's unnecessary to provide more feature for assembly language, as is in
  the sentence <em|Keep it simple and stupid>.But with care,adding a few of
  them boost the process of programming.\ 

  <\itemize>
    <item>The First Improvement: You may notice that <strong|A,D,M> are all
    pre-defined symbol respectively referring to A-,D-,M- register.As long as
    we have symbols for certain RAM location,we can bring in more predefined
    ones to simplify the coding.You can refer to section 4.2.4 for more
    information.

    <item>The Second Improvement: We should provide the feature that is the
    most useful.When programming using assembly,counting the number of
    instructions is the greatest nuisance. A good way to get rid of it is to
    define a ``symbol'' as well.But the symbol is not for register but for
    instruction,and we call it <strong|label>. A label represent the next
    following instruction and can be referred to by jump operation. It
    greatly reduces the time for programming.

    Likewise,we can allow programmers to define own symbols for certain
    registers.The user-defined identifier (label or symbol) will make the
    process more automatic.See section 4.2.4 for more information
  </itemize>

  These <strong|improvement> adds up to the power of the assembly language,by
  which improves the efficiency.

  <section*|Projects>

  After fully learned the principles of assembly language,try to write
  programs to carry out practical opearations using hack assembly
  language,with specification of the project described in section 4.4

  <section*|Additional points>

  <subsubsection*|completenesss of <em|mov>,and the instruction set>

  <image|https://cdn.jsdelivr.net/gh/linusboyle/imgupload/upload/2020-02-23-21-42-52-6058.png|0.6383w|||>

  <strong|In previous chapter>,we have stated that <strong|Nand is complete>
  and <strong|Add is complete>,.etc. What about the language part? Is a
  single instruction able to represent all the others?

  <em|mov> is an instruction in <hlink|x86|https://en.wikipedia.org/wiki/X86>
  architecture,Stephen Dolan has proved that by using <em|mov> and using it
  only we can represent any process that a computer can do.[3]

  However,just like we do not use Nand everytime we want to implement a
  chip,and do not use add always,we do not use a single instruction to carry
  out all the operations.Modern CPU takes several to thousands instructions
  as their input,and is divided to RISC and CISC accroding to the number of
  the instructions.Learn more from the link in [4].

  <section*|Summary>

  By learning how to write programs and what is programming using Hack
  Assembly language,you are supposed to have basic concept of what we will do
  in following chapters discussing more software abstraction layers. Before
  we advance to next layer,we have to implement all the features we learned
  here in next chapter,by a program called <strong|assembler>.

  <section*|Reference>

  [1] Picture from <hlink|http://www.toves.org/books/java/ch01-overview/index.html|http://www.toves.org/books/java/ch01-overview/index.html>

  [2] Picture from <hlink|https://en.wikipedia.org/wiki/Harvard_architecture|https://en.wikipedia.org/wiki/Harvard_architecture>

  [3] Stephen Dolan(2013),mov is Turing-complete,Computer Laboratory,
  University of Cambridge.Accessible from
  here:<hlink|https://www.cl.cam.ac.uk/~sd601/papers/mov.pdf|https://www.cl.cam.ac.uk/~sd601/papers/mov.pdf>

  [4] Wikipedia,Reduced_Instruction_set_computer,see
  here:<hlink|https://en.wikipedia.org/wiki/Reduced_instruction_set_computer|https://en.wikipedia.org/wiki/Reduced_instruction_set_computer>

  <notes-footer>
</body>

<\initial>
  <\collection>
    <associate|font|stix>
    <associate|font-family|rm>
    <associate|math-font|math-stix>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|-|<tuple|?|1>>
    <associate|--2|<tuple|?|1>>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-2|<tuple|?|1>>
    <associate|auto-3|<tuple|?|?>>
    <associate|auto-4|<tuple|?|?>>
    <associate|auto-5|<tuple|?|?>>
    <associate|auto-6|<tuple|?|?>>
    <associate|auto-7|<tuple|?|?>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|\<#81EA\>\<#8FF0\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|\<#72F7\>\<#58A8\>\<#5C45\>\<#7684\>\<#7531\>\<#6765\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>