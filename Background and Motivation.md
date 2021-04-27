

据调查，随着人们对健康饮食及视频安全问题的广泛关注，相比点外卖和外出就餐，人们开始注重于在家下厨，因此对于不会做饭但是有做饭需求的用户群体来说，菜谱的需求越来越强烈。
根据面向30人的问卷调查，我们发现在英中国留学生群体有86.67%存在“不知道今天吃什么”的选择困难症，有83.33%希望有一个网站教他们如何烹饪正宗的中国美食。

![image](https://user-images.githubusercontent.com/45390078/115630985-e2797100-a2fc-11eb-9a69-b6a10efdfcf5.png)
![image](https://user-images.githubusercontent.com/45390078/115631034-f6bd6e00-a2fc-11eb-9069-188df2e098c1.png)



因此我们初步拟定了the overarching aim of this project：菜谱推荐。
为解决这一问题，文章设计了一种菜谱个性化推荐系统，提供每日三餐菜谱的推荐，来帮助用户解决他们对于三餐的纠结。
考虑到不同群体有不同的饮食偏好，为了充分满足用户的喜好，我们设计了一些问题用于统计饮食偏好，并依据用户的回答进行菜单推荐。
WEB产品信息构建师从功能层面和情感层面提出产品的用户体验是“可用性用户期望值的超越（情感）” [2]。[2]朱征字等,网站界面设计用户体验[J],2010年,08:20-21。
唐纳诺曼（从本能的、行为的及反思的三种设计水平的基础上，提出产品的情感价值可以使人们在使用产品中更加快乐、更富有创造性，他强调情感价值在产品设计中的重要性[3]。
[3](美)唐纳德.A:诺曼.情感化设计[M]。北京:电子工业出版社, 2005.
考虑到人性化的设计与服务将大大提高用户的使用体验，我们以老虎机游戏的形式针自动给出相应菜谱的推荐。
目前分享中国菜谱的美食网站主要有美食社区、美食天下、美食杰、豆果网、天天美食、好豆网等一些具有中餐特色的食谱网站。
以好豆网、豆果网、下厨房为代表的，分享菜谱、发现美食为主的社区型美食网站已经成为美食网站发展的主流趋势。
但是，这些美食社区网站的用户体验有待提高，其社区化所具备的交流、互动性没有得到充分的发展，用户使用起来依然存在着一些问题。
易观国际月活跃用户数据排名显示，好豆菜谱移动端用户数超过2 000万，月活跃用户377.6万，位居第一；位列第二的下厨房移动端用户数超过1 300万，月活跃用户356.7万[4]。[4] 邹声瑞，蔡阅林，赵越，等.美食类APP发展模式及盈利方式研究——以“美食地图”为例[J].科学导报，2015(20):201.
选取比较有代表性的是xiachufang和haodou来分析。
![image](https://user-images.githubusercontent.com/45390078/115630873-b100a580-a2fc-11eb-875e-3bfd723e4c33.png)

<table class="MsoTable15Grid4Accent1" border="1" cellspacing="0" cellpadding="0" width="557" style="width:417.95pt;border-collapse:collapse;border:none;
 mso-border-alt:solid #8EAADB .5pt;mso-border-themecolor:accent1;mso-border-themetint:
 153;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:-1;mso-yfti-firstrow:yes;mso-yfti-lastfirstrow:yes">
  <td width="124" valign="top" style="width:93.3pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent1;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent1;mso-border-left-alt:solid #4472C4 .5pt;
  mso-border-left-themecolor:accent1;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent1;background:#4472C4;mso-background-themecolor:
  accent1;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="mso-yfti-cnfc:5"><b><span lang="EN-US" style="color:white;mso-themecolor:background1"><o:p>&nbsp;</o:p></span></b></p>
  </td>
  <td width="208" valign="top" style="width:155.75pt;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent1;border-left:none;border-bottom:solid #4472C4 1.0pt;
  mso-border-bottom-themecolor:accent1;border-right:none;mso-border-top-alt:
  solid #4472C4 .5pt;mso-border-top-themecolor:accent1;mso-border-bottom-alt:
  solid #4472C4 .5pt;mso-border-bottom-themecolor:accent1;background:#4472C4;
  mso-background-themecolor:accent1;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="text-align:center;mso-yfti-cnfc:1"><b><span lang="EN-US" style="color:white;mso-themecolor:background1">Content<o:p></o:p></span></b></p>
  </td>
  <td width="225" valign="top" style="width:168.9pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent1;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent1;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent1;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent1;background:#4472C4;mso-background-themecolor:
  accent1;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="text-align:center;mso-yfti-cnfc:1"><b><span lang="EN-US" style="color:white;mso-themecolor:background1">Functions<o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:0">
  <td width="124" valign="top" style="width:93.3pt;border:solid #8EAADB 1.0pt;
  mso-border-themecolor:accent1;mso-border-themetint:153;border-top:none;
  mso-border-top-alt:solid #8EAADB .5pt;mso-border-top-themecolor:accent1;
  mso-border-top-themetint:153;mso-border-alt:solid #8EAADB .5pt;mso-border-themecolor:
  accent1;mso-border-themetint:153;background:#D9E2F3;mso-background-themecolor:
  accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="text-align:center;mso-yfti-cnfc:68"><span class="SpellE"><b><span lang="EN-US" style="color:black;mso-color-alt:windowtext">haodou</span></b></span><b><span lang="EN-US" style="font-size:0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;background:black;
  mso-font-kerning:0pt;mso-ansi-language:X-NONE;mso-fareast-language:X-NONE;
  mso-bidi-language:X-NONE;layout-grid-mode:line"> </span><span lang="EN-US" style="color:black;mso-color-alt:windowtext;mso-no-proof:yes"><!--[if gte vml 1]><v:shapetype
   id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t"
   path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f">
   <v:stroke joinstyle="miter"/>
   <v:formulas>
    <v:f eqn="if lineDrawn pixelLineWidth 0"/>
    <v:f eqn="sum @0 1 0"/>
    <v:f eqn="sum 0 0 @1"/>
    <v:f eqn="prod @2 1 2"/>
    <v:f eqn="prod @3 21600 pixelWidth"/>
    <v:f eqn="prod @3 21600 pixelHeight"/>
    <v:f eqn="sum @0 0 1"/>
    <v:f eqn="prod @6 1 2"/>
    <v:f eqn="prod @7 21600 pixelWidth"/>
    <v:f eqn="sum @8 21600 0"/>
    <v:f eqn="prod @7 21600 pixelHeight"/>
    <v:f eqn="sum @10 21600 0"/>
   </v:formulas>
   <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"/>
   <o:lock v:ext="edit" aspectratio="t"/>
  </v:shapetype><v:shape id="图片_x0020_13" o:spid="_x0000_i1026" type="#_x0000_t75"
   style='width:82.2pt;height:69pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src="表格.files/image001.png" o:title=""/>
  </v:shape><![endif]--><!--[if !vml]--><img width="110" height="92" src="表格.files/image002.png" v:shapes="图片_x0020_13"><!--[endif]--></span><span lang="EN-US"><o:p></o:p></span></b></p>
  </td>
  <td width="208" valign="top" style="width:155.75pt;border-top:none;border-left:
  none;border-bottom:solid #8EAADB 1.0pt;mso-border-bottom-themecolor:accent1;
  mso-border-bottom-themetint:153;border-right:solid #8EAADB 1.0pt;mso-border-right-themecolor:
  accent1;mso-border-right-themetint:153;mso-border-top-alt:solid #8EAADB .5pt;
  mso-border-top-themecolor:accent1;mso-border-top-themetint:153;mso-border-left-alt:
  solid #8EAADB .5pt;mso-border-left-themecolor:accent1;mso-border-left-themetint:
  153;mso-border-alt:solid #8EAADB .5pt;mso-border-themecolor:accent1;
  mso-border-themetint:153;background:#D9E2F3;mso-background-themecolor:accent1;
  mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="mso-yfti-cnfc:64"><span lang="EN-US" style="color:black;mso-color-alt:windowtext">1. Menu classification is simple
  while the classification is not <span class="GramE">perfect..</span></span></p>
  </td>
  <td width="225" valign="top" style="width:168.9pt;border-top:none;border-left:
  none;border-bottom:solid #8EAADB 1.0pt;mso-border-bottom-themecolor:accent1;
  mso-border-bottom-themetint:153;border-right:solid #8EAADB 1.0pt;mso-border-right-themecolor:
  accent1;mso-border-right-themetint:153;mso-border-top-alt:solid #8EAADB .5pt;
  mso-border-top-themecolor:accent1;mso-border-top-themetint:153;mso-border-left-alt:
  solid #8EAADB .5pt;mso-border-left-themecolor:accent1;mso-border-left-themetint:
  153;mso-border-alt:solid #8EAADB .5pt;mso-border-themecolor:accent1;
  mso-border-themetint:153;background:#D9E2F3;mso-background-themecolor:accent1;
  mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" style="mso-yfti-cnfc:64"><span lang="EN-US" style="color:black;mso-color-alt:windowtext">1. The release function entry is
  easy to <span class="GramE">find;</span><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p>
  <p class="MsoNormal" style="mso-yfti-cnfc:64"><span lang="EN-US" style="color:black;mso-color-alt:windowtext">2. The menu interface is simple
  and easy to understand.</span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1;mso-yfti-lastrow:yes">
  <td width="124" valign="top" style="width:93.3pt;border:solid #8EAADB 1.0pt;
  mso-border-themecolor:accent1;mso-border-themetint:153;border-top:none;
  mso-border-top-alt:solid #8EAADB .5pt;mso-border-top-themecolor:accent1;
  mso-border-top-themetint:153;mso-border-alt:solid #8EAADB .5pt;mso-border-themecolor:
  accent1;mso-border-themetint:153;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="text-align:center;mso-yfti-cnfc:4"><span class="SpellE"><b><span lang="EN-US">xiachufang<span style="mso-no-proof:yes"><!--[if gte vml 1]><v:shape
   id="图片_x0020_12" o:spid="_x0000_i1025" type="#_x0000_t75" alt="图片包含 文本&#10;&#10;描述已自动生成"
   style='width:82.2pt;height:70.2pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src="表格.files/image003.png" o:title="图片包含 文本&#10;&#10;描述已自动生成"
    croptop="9573f"/>
  </v:shape><![endif]--><!--[if !vml]--><img width="110" height="94" src="表格.files/image004.jpg" alt="图片包含 文本

描述已自动生成" v:shapes="图片_x0020_12"><!--[endif]--></span></span></b></span><b><span lang="EN-US"><o:p></o:p></span></b></p>
  </td>
  <td width="208" valign="top" style="width:155.75pt;border-top:none;border-left:
  none;border-bottom:solid #8EAADB 1.0pt;mso-border-bottom-themecolor:accent1;
  mso-border-bottom-themetint:153;border-right:solid #8EAADB 1.0pt;mso-border-right-themecolor:
  accent1;mso-border-right-themetint:153;mso-border-top-alt:solid #8EAADB .5pt;
  mso-border-top-themecolor:accent1;mso-border-top-themetint:153;mso-border-left-alt:
  solid #8EAADB .5pt;mso-border-left-themecolor:accent1;mso-border-left-themetint:
  153;mso-border-alt:solid #8EAADB .5pt;mso-border-themecolor:accent1;
  mso-border-themetint:153;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal"><span lang="EN-US">1.The video menu interface is messy,
  which affects the <span class="GramE">viewing;</span></span></p>
  <p class="MsoNormal"><span lang="EN-US">2. The menu classification is <span class="GramE">overstaffed;</span></span></p>
  <p class="MsoNormal"><span lang="EN-US">.</span></p>
  </td>
  <td width="225" valign="top" style="width:168.9pt;border-top:none;border-left:
  none;border-bottom:solid #8EAADB 1.0pt;mso-border-bottom-themecolor:accent1;
  mso-border-bottom-themetint:153;border-right:solid #8EAADB 1.0pt;mso-border-right-themecolor:
  accent1;mso-border-right-themetint:153;mso-border-top-alt:solid #8EAADB .5pt;
  mso-border-top-themecolor:accent1;mso-border-top-themetint:153;mso-border-left-alt:
  solid #8EAADB .5pt;mso-border-left-themecolor:accent1;mso-border-left-themetint:
  153;mso-border-alt:solid #8EAADB .5pt;mso-border-themecolor:accent1;
  mso-border-themetint:153;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal"><span lang="EN-US">1. The release entry is not <span class="GramE">obvious;</span></span></p>
  <p class="MsoNormal"><span lang="EN-US">3. Lack of personalized customization
  services.</span></p>
  </td>
 </tr>
</tbody></table>

通过对现存的中国菜谱网站设计现状进行分析可以发现，其在用户体验、用户互动性、趣味性方面还有待加强，缺乏个性化推荐服务，用户的情感需求得不到满足。
为了提高网站的用户体验、互动性，我们将游戏化设计概念贯穿于整个美食社区网站的设计过程中，在统计完用户的需求后，使用老虎机的形式将菜单推荐给用户。
力图通过设计实践将游戏化设计所具有的趣味性、激励性、互动性融入美食社区网站中，以提高其用户体验，帮助用户更好、更快乐的使用美食网站，最终实现提髙用户粘性，产生稳定用户群的目的。

