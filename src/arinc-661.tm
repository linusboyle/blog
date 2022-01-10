<TeXmacs|2.1.1>

<style|<tuple|generic2|chinese|libertine-font>>

<\body>
  <notes-header>

  <doc-data|<doc-title|ARINC 661\<#9A7E\>\<#9A76\>\<#8231\>\<#663E\>\<#793A\>\<#7CFB\>\<#7EDF\>\<#6807\>\<#51C6\>\<#7B80\>\<#8FF0\>>>

  <\notes-abstract>
    ARINC 661 Specification: Cockpit Display System Interfaces To User
    System\<#FF08\>\<#9A7E\>\<#9A76\>\<#8231\>\<#663E\>\<#793A\>\<#7CFB\>\<#7EDF\>\<#4EBA\>\<#673A\>\<#63A5\>\<#53E3\>\<#89C4\>\<#8303\>)
  </notes-abstract>

  <quotation|\<#56E0\>\<#4E3A\>\<#8981\>\<#5199\>\<#4E00\>\<#4E2A\>\<#57FA\>\<#4E8E\>\<#540C\>\<#6B65\>\<#6A21\>\<#578B\>\<#7684\>\<#663E\>\<#793A\>\<#6A21\>\<#5757\>\<#7F16\>\<#8BD1\>\<#5DE5\>\<#5177\>\<#FF0C\>\<#67E5\>\<#4E86\>\<#4E00\>\<#4E0B\>\<#5DF2\>\<#6709\>\<#7684\>\<#5F02\>\<#6B65\>\<#89C4\>\<#8303\>\<#3002\>\<#628A\>\<#89C4\>\<#8303\>\<#56EB\>\<#56F5\>\<#541E\>\<#67A3\>\<#5730\>\<#770B\>\<#4E86\>\<#4E00\>\<#904D\>\<#FF0C\>\<#968F\>\<#624B\>\<#8BB0\>\<#4E00\>\<#70B9\>\<#4E1C\>\<#897F\>\<#FF1A\>>

  ARINC 661\<#89C4\>\<#8303\>\<#4E5F\>\<#5C31\>\<#662F\>\<#300C\>\<#9A7E\>\<#9A76\>\<#8231\>\<#663E\>\<#793A\>\<#7CFB\>\<#7EDF\>\<#4EBA\>\<#673A\>\<#63A5\>\<#53E3\>\<#89C4\>\<#8303\>\<#300D\>\<#FF0C\>\<#89C4\>\<#5B9A\>\<#4E86\>\<#9A7E\>\<#9A76\>\<#8231\>\<#5185\>\<#663E\>\<#793A\>\<#7CFB\>\<#7EDF\>\<#FF08\>CDS\<#FF09\>\<#548C\>\<#529F\>\<#80FD\>\<#90E8\>\<#4EF6\>\<#FF08\>UA\<#FF09\>\<#4E4B\>\<#95F4\>\<#7684\>\<#901A\>\<#4FE1\>\<#6807\>\<#51C6\>\<#548C\>\<#4E00\>\<#7CFB\>\<#5217\>\<#663E\>\<#793A\>\<#903B\>\<#8F91\>\<#3002\>\<#5176\>\<#89C4\>\<#5B9A\>\<#6309\>\<#7167\>\<#7EC4\>\<#4EF6\>\<#FF08\>Widgets\<#FF09\>\<#7684\>\<#5C42\>\<#6B21\>\<#8FDB\>\<#884C\>\<#663E\>\<#793A\>\<#FF0C\>\<#7EC4\>\<#4EF6\>\<#6811\>\<#7EC4\>\<#6210\>\<#4E00\>\<#4E2A\>\<#5C42\>\<#6B21\>\<#FF08\>Layer\<#FF09\>\<#FF0C\>\<#8FD9\>\<#4E5F\>\<#662F\>\<#5BF9\>\<#4E8E\>\<#4E00\>\<#4E2A\>UA\<#800C\>\<#8A00\>\<#FF0C\>\<#6240\>\<#80FD\>\<#83B7\>\<#53D6\>\<#5230\>\<#7684\>\<#6700\>\<#9AD8\>\<#663E\>\<#793A\>\<#5C42\>\<#3002\>

  CDS\<#5185\>\<#6838\>\<#63A7\>\<#5236\>\<#7740\>GUI\<#7684\>\<#6E32\>\<#67D3\>\<#548C\>\<#8FD0\>\<#884C\>\<#FF0C\>\<#5C06\>\<#7269\>\<#7406\>\<#663E\>\<#793A\>\<#8BBE\>\<#5907\>\<#5206\>\<#4E3A\>\<#4E00\>\<#4E2A\>\<#4E2A\>\<#7A97\>\<#53E3\>\<#FF08\>Window\<#FF09\>\<#663E\>\<#793A\>\<#FF0C\>\<#6BCF\>\<#4E2A\>\<#7A97\>\<#53E3\>\<#663E\>\<#793A\>\<#4E00\>\<#4E2A\>\<#6216\>\<#591A\>\<#4E2A\>\<#5C42\>\<#6B21\>\<#3002\>CDS\<#63A7\>\<#5236\>\<#5C42\>\<#6B21\>\<#7684\>\<#53EF\>\<#89C1\>\<#6027\>\<#4E0E\>\<#6D3B\>\<#52A8\>\<#FF0C\>\<#901A\>\<#8FC7\>\<#7F51\>\<#7EDC\>\<#4FDD\>\<#6301\>\<#548C\>\<#7BA1\>\<#7406\>\<#5C42\>\<#6B21\>\<#7684\>UA\<#7684\>\<#901A\>\<#4FE1\>\<#3002\>

  ARINC\<#7684\>\<#4E8B\>\<#4EF6\>\<#662F\>\<#5F02\>\<#6B65\>\<#7684\>\<#FF0C\>\<#4F46\>\<#662F\>UA\<#53EF\>\<#4EE5\>\<#5B9A\>\<#671F\>\<#66F4\>\<#65B0\>\<#5176\>\<#5C42\>\<#6B21\>\<#5185\>\<#5404\>\<#7EC4\>\<#4EF6\>\<#7684\>\<#53C2\>\<#6570\>\<#FF0C\>\<#4EE5\>\<#6839\>\<#636E\>\<#540E\>\<#7AEF\>\<#6570\>\<#636E\>\<#4FEE\>\<#6539\>\<#5176\>\<#663E\>\<#793A\>\<#6548\>\<#679C\>\<#3002\>\<#5F53\>\<#64CD\>\<#4F5C\>\<#5458\>\<#5F15\>\<#53D1\>\<#4E8B\>\<#4EF6\>\<#4E4B\>\<#65F6\>\<#FF0C\>\<#4E8B\>\<#4EF6\>\<#4F1A\>\<#5355\>\<#5411\>\<#5730\>\<#901A\>\<#77E5\>\<#7ED9\>UA\<#3002\>\<#4E2A\>\<#4EBA\>\<#7406\>\<#89E3\>\<#FF1A\>\<#5728\>\<#8FD9\>\<#4E2A\>\<#8FC7\>\<#7A0B\>\<#4E2D\>\<#FF0C\>UA\<#5B9E\>\<#9645\>\<#4E0A\>\<#662F\>\<#5B8C\>\<#5168\>\<#5F02\>\<#6B65\>\<#4E8E\>CDS\<#7684\>\<#3002\>

  \<#7EC4\>\<#4EF6\>\<#7684\>\<#663E\>\<#793A\>\<#6548\>\<#679C\>\<#53D6\>\<#51B3\>\<#4E8E\>\<#7F16\>\<#8BD1\>\<#65F6\>\<#53C2\>\<#6570\>\<#548C\>\<#8FD0\>\<#884C\>\<#65F6\>\<#53C2\>\<#6570\>\<#3002\>\<#6240\>\<#6709\>\<#51B3\>\<#5B9A\>\<#7EC4\>\<#4EF6\>\<#6240\>\<#9700\>\<#5185\>\<#5B58\>\<#5927\>\<#5C0F\>\<#7684\>\<#53C2\>\<#6570\>\<#90FD\>\<#5FC5\>\<#987B\>\<#5728\>\<#7F16\>\<#8BD1\>\<#65F6\>\<#7ED9\>\<#5B9A\>\<#3002\>\<#8FD0\>\<#884C\>\<#65F6\>\<#53C2\>\<#6570\>\<#7531\>UA\<#6839\>\<#636E\>\<#5176\>\<#540E\>\<#7AEF\>\<#64CD\>\<#63A7\>\<#FF0C\>CDS\<#8D1F\>\<#8D23\>\<#66F4\>\<#65B0\>\<#663E\>\<#793A\>\<#3002\>

  \<#7EC4\>\<#4EF6\>\<#6811\>\<#4EE5\>\<#53CA\>\<#5176\>\<#4ED6\>\<#7684\>\<#4E00\>\<#4E9B\>\<#4FE1\>\<#606F\>\<#FF0C\>\<#5B58\>\<#50A8\>\<#5728\>\<#5B9A\>\<#4E49\>\<#6587\>\<#4EF6\>\<#FF08\>DF\<#FF09\>\<#91CC\>\<#3002\>DF\<#6709\>\<#4E24\>\<#79CD\>\<#683C\>\<#5F0F\>\<#FF1A\>\<#4E8C\>\<#8FDB\>\<#5236\>\<#4E0E\>XML\<#3002\>XML\<#683C\>\<#5F0F\>\<#6BD4\>\<#4E8C\>\<#8FDB\>\<#5236\>\<#683C\>\<#5F0F\>\<#591A\>\<#51FA\>\<#4E00\>\<#4E9B\>\<#5143\>\<#4FE1\>\<#606F\>\<#FF0C\>\<#5176\>\<#5177\>\<#4F53\>\<#8BED\>\<#6CD5\>\<#4ECE\>\<#6807\>\<#51C6\>\<#7ED9\>\<#7684\>\<#4F8B\>\<#5B50\>\<#53EF\>\<#89C1\>\<#4E00\>\<#6591\>\<#FF1A\>

  <\code>
    \<less\>?xml version="1.0"?\<gtr\>

    \<less\>!DOCTYPE a661_df SYSTEM "a661.dtd"\<gtr\>

    \<less\>a661_df library_version="0" supp_version="2"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="ApplicationId" value="0x6788"/\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>a661_layer\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="LayerId" value="66"/\<gtr\>

    \<less\>prop name="ContextNumber" value="0x1230"/\<gtr\>

    \<less\>prop name="Height" value="20000"/\<gtr\>

    \<less\>prop name="Width" value="20000"/\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>a661_widget name="CabinTempPanel" type="A661_PANEL"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="WidgetId" value="4641"/\<gtr\>

    \<less\>prop name="PosX" value="11000"/\<gtr\>

    \<less\>prop name="PosY" value="12700"/\<gtr\>

    \<less\>prop name="SizeX" value="7620"/\<gtr\>

    \<less\>prop name="SizeY" value="5978"/\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>a661_widget name="TemperatureCelciusScale"
    type="A661_PICTURE"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="WidgetId" value="4642"/\<gtr\>

    \<less\>prop name="PosX" value="750"/\<gtr\>

    \<less\>prop name="PosY" value="2390"/\<gtr\>

    \<less\>prop name="SizeX" value="6126"/\<gtr\>

    \<less\>prop name="SizeY" value="2490"/\<gtr\>

    \<less\>prop name="PictureRef" value="SymbolTemperatureCelciusScale"/\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>/a661_widget\<gtr\>

    \<less\>a661_widget name="TemperatureIndicatedPointer"
    type="A661_SYMBOL"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="WidgetId" value="4643"/\<gtr\>

    \<less\>prop name="PosX" value="3810" /\<gtr\>

    \<less\>prop name="PosY" value="2390" /\<gtr\>

    \<less\>prop name="RotationAngle" value="9100" /\<gtr\>

    \<less\>prop name="StyleSet" value="OEM_STYLESET_FREE_COLOR" /\<gtr\>

    \<less\>prop name="ColorIndex" value="OEM_WHITE" /\<gtr\>

    \<less\>prop name="PictureReference" value="SymbolTemperatureIndicatedPointer"
    /\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>/a661_widget\<gtr\>

    \<less\>a661_widget name="TemperatureSelectedPointer"
    type="A661_SYMBOL"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="WidgetId" value="4644"/\<gtr\>

    \<less\>prop name="PosX" value="3810" /\<gtr\>

    \<less\>prop name="PosY" value="2390" /\<gtr\>

    \<less\>prop name="RotationAngle" value="1820" /\<gtr\>

    \<less\>prop name="StyleSet" value="OEM_STYLESET_FREE_COLOR" /\<gtr\>

    \<less\>prop name="ColorIndex" value="OEM_GREEN4" /\<gtr\>

    \<less\>prop name="PictureReference" value="SymbolTemperatureSelectedPointer"
    /\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>/a661_widget\<gtr\>

    \<less\>a661_widget name="IndicatedTempDRO" type="A661_LABEL"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="WidgetId" value="4645"/\<gtr\>

    \<less\>prop name="PosX" value="2864" /\<gtr\>

    \<less\>prop name="PosY" value="1768" /\<gtr\>

    \<less\>prop name="SizeX" value="950" /\<gtr\>

    \<less\>prop name="SizeY" value="622" /\<gtr\>

    \<less\>prop name="StyleSet" value="OEM_STYLESET_NORMAL_READOUT" /\<gtr\>

    \<less\>prop name="Font" value="OEM_STYLESET_DEFAULT_FONT" /\<gtr\>

    \<less\>prop name="MaxStringLength" value="4" /\<gtr\>

    \<less\>prop name="Alignment" value="A661_RIGHT" /\<gtr\>

    \<less\>prop name="LabelString" value="24" /\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>/a661_widget\<gtr\>

    \<less\>a661_widget name="IndicatedUnitLabel" type="A661_LABEL"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="WidgetId" value="4645"/\<gtr\>

    \<less\>prop name="PosX" value="3984" /\<gtr\>

    \<less\>prop name="PosY" value="1768" /\<gtr\>

    \<less\>prop name="SizeX" value="473" /\<gtr\>

    \<less\>prop name="SizeY" value="622" /\<gtr\>

    \<less\>prop name="StyleSet" value="OEM_STYLESET_NORMAL_READOUT" /\<gtr\>

    \<less\>prop name="Font" value="OEM_STYLESET_DEFAULT_FONT" /\<gtr\>

    \<less\>prop name="MaxStringLength" value="2" /\<gtr\>

    \<less\>prop name="LabelString" value="\<degree\>C" /\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>/a661_widget\<gtr\>

    \<less\>a661_widget name="IncreaseSelectTemp"
    type="A661_PICTURE_PUSH_BUTTON"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="WidgetId" value="4646"/\<gtr\>

    \<less\>prop name="PosX" value="473" /\<gtr\>

    \<less\>prop name="PosY" value="473" /\<gtr\>

    \<less\>prop name="SizeX" value="2864" /\<gtr\>

    \<less\>prop name="SizeY" value="950" /\<gtr\>

    \<less\>prop name="PictureReference" value="SymbolArrowUp" /\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>/a661_widget\<gtr\>

    \<less\>a661_widget name="DecreaseSelectTemp"
    type="A661_PICTURE_PUSH_BUTTON"\<gtr\>

    \<less\>model\<gtr\>

    \<less\>prop name="WidgetId" value="4647"/\<gtr\>

    \<less\>prop name="PosX" value="3984" /\<gtr\>

    \<less\>prop name="PosY" value="473" /\<gtr\>

    \<less\>prop name="SizeX" value="2864" /\<gtr\>

    \<less\>prop name="SizeY" value="950" /\<gtr\>

    \<less\>prop name="PictureReference" value="SymbolArrowDown" /\<gtr\>

    \<less\>/model\<gtr\>

    \<less\>/a661_widget\<gtr\>

    \<less\>/a661_widget\<gtr\>

    \<less\>/a661_layer\<gtr\>

    \<less\>/a661_df\<gtr\>
  </code>

  <notes-footer>
</body>

<\initial>
  <\collection>
    <associate|math-font|math-dejavu>
  </collection>
</initial>