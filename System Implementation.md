## Contents

* [**Stack architecture and system design**](#stack-architecture-and-system-design)
* [**Back End**](#back-end)
* [**Middle Tier**](#middle-tier)
* [**Front End**](#front-end)
* [**Additional elements and components**](#additional-elements-and-components)
* [**Deployment details**](#deployment-details)

## Stack architecture and system design

在我们的单页应用程序中，我们使用Angular处理前端客户端应用程序，MySQL处理后端数据库，Springboot处理中间层服务器。

SinoCook的开发环境如下。

（1）服务器端

❑ 操作系统：Windows 10。

❑ Web框架：Angular CLI version 11.2.1。

❑ Java开发包：JDK1.8。

❑ 开发工具：IntelliJ IDEA Community。

❑ 浏览器：不支持IE 11。

❑ 显示器分辨率：最佳效果1024像素×768像素。

（2）客户端

❑ 浏览器：不支持IE 11。

❑ 分辨率：最佳效果1024像素×768像素。

在编写项目代码之前，需要制定好项目的系统文件夹组织结构，这样不但可以保证团队开发的一致性，也可以规范系统的整体架构。创建完系统中可能用到的文件夹或者Java包之后，在开发时，只需将创建的类文件或者资源文件保存到相应的文件夹中即可。本项目的文件夹组织结构如图所示。

系统编码规范:
由于本次开发，每个人负责不同的业务模块，为了使程序的结构与代码风格统一标准化，增加代码的可读性，我们在编码之前制定了一套统一的编码规范。


## Back End

数据库

开发动态网站时数据库是必不可少的，它主要用来保存网站中需要的信息。考虑到网站的规模不大，我们选择MySQL。

（1）	数据库

在数据库中使用命名规范，有助于其他用户更好地理解数据表及表中各字段的内容。

1.	菜谱图片分主图片（封面）和步骤图；

a)	图片资源放在sinocook/src/assets/picture目录下；

b)	每道菜的图片放一个文件夹，命名：Did（数字）；

c)	主图片命名cover.jpg，步骤图命名：step1.jpg；

2.	数据库、数据表、字段都采用相关英文单词或缩写进行命名，如找不到专业的英文单词或词组，可以用相同意义的英文单词或词组代替。如表所示。

为核心实体对象设计的E-R图如下。

![image](https://user-images.githubusercontent.com/45390078/116004130-464fb280-a5f9-11eb-8e5c-2069fac7700e.png)


创建的数据库名为sinocook，其中包含taste , steps , dishes , comments共4张数据表。下面将对数据表进行介绍。

（1）dishes

该表用于保存菜谱的主要信息，其结构如表所示。

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="474" style="width:355.25pt;margin-left:18.0pt;border-collapse:collapse;border:none;
 mso-border-alt:solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:
 0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Field name<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Data type<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Primary key<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Instruction<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Did<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">yes<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dishes id<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dname<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dishes name<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dvegan<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Vegetarian or not<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dtaste<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The taste of the Dishes<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dtime<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Time to cook<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Main<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The main materials<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Others<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The other materials<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dlikes<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Number of likes<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dviews<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Number of views<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Ddescription<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Introduction of dishes<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:11;mso-yfti-lastrow:yes">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Daddress<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Pictures of finished products<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

（2）Taste

该表用于保存食物的味道，其结构如表所示。

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="477" style="width:357.4pt;margin-left:18.0pt;border-collapse:collapse;border:none;
 mso-border-alt:solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:
 0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="79" valign="top" style="width:58.95pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Field name<o:p></o:p></span></p>
  </td>
  <td width="78" valign="top" style="width:58.2pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Data type<o:p></o:p></span></p>
  </td>
  <td width="111" valign="top" style="width:83.15pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Primary key<o:p></o:p></span></p>
  </td>
  <td width="209" valign="top" style="width:157.1pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Instruction<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="79" valign="top" style="width:58.95pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Tid<o:p></o:p></span></p>
  </td>
  <td width="78" valign="top" style="width:58.2pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="111" valign="top" style="width:83.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">yes<o:p></o:p></span></p>
  </td>
  <td width="209" valign="top" style="width:157.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Taste id<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes">
  <td width="79" valign="top" style="width:58.95pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Taste<o:p></o:p></span></p>
  </td>
  <td width="78" valign="top" style="width:58.2pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="111" valign="top" style="width:83.15pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="209" valign="top" style="width:157.1pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Taste name(eg.</span><span lang="EN-US"> </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:minor-bidi">Sweet,</span><span lang="EN-US"> </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
  mso-bidi-theme-font:minor-bidi">Salty )<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>


（3）steps

该表用于保存菜谱的具体步骤，其结构如表所示。

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="474" style="width:355.25pt;margin-left:18.0pt;border-collapse:collapse;border:none;
 mso-border-alt:solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:
 0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Field name<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Data type<o:p></o:p></span></p>
  </td>
  <td width="88" valign="top" style="width:65.95pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Primary key<o:p></o:p></span></p>
  </td>
  <td width="214" valign="top" style="width:160.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Instruction<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Cid<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="88" valign="top" style="width:65.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">yes<o:p></o:p></span></p>
  </td>
  <td width="214" valign="top" style="width:160.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Comments id<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Did<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="88" valign="top" style="width:65.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="214" valign="top" style="width:160.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dishes name<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span class="SpellE"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
  mso-bidi-theme-font:minor-bidi">Cnickname</span></span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:minor-bidi"><o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="88" valign="top" style="width:65.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="214" valign="top" style="width:160.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The number of the anonymous user<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span class="SpellE"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
  mso-bidi-theme-font:minor-bidi">Ctime</span></span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:minor-bidi"><o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="88" valign="top" style="width:65.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="214" valign="top" style="width:160.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Time to comments<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span class="SpellE"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
  mso-bidi-theme-font:minor-bidi">Clikes</span></span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:minor-bidi"><o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="88" valign="top" style="width:65.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="214" valign="top" style="width:160.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Number of likes<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6;mso-yfti-lastrow:yes">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span class="SpellE"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
  mso-bidi-theme-font:minor-bidi">Cdetail</span></span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:minor-bidi"><o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="88" valign="top" style="width:65.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="214" valign="top" style="width:160.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Content of comments<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>


（4）comments

该表用于保存菜谱的评论，其结构如表所示。

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="474" style="width:355.25pt;margin-left:18.0pt;border-collapse:collapse;border:none;
 mso-border-alt:solid windowtext .5pt;mso-yfti-tbllook:1184;mso-padding-alt:
 0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Field name<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Data type<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Primary key<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Instruction<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Sid<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">yes<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Steps id<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Did<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Dishes id<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span class="SpellE"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
  mso-bidi-theme-font:minor-bidi">Snumber</span></span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:minor-bidi"><o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">int<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Number of steps<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Step1<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The first step in cooking<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Step2<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The second step in cooking<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Step3<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The third step in cooking<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Step4<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The fourth&nbsp;step in cooking<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Step5<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The fifth step in cooking<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Step6<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The sixth step in cooking<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Spic_address1<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The picture of the first step <o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:11">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Spic_address2<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The picture of the second step<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:12">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Spic_address3<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The picture of the third step<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:13">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Spic_address4<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The picture of the fourth&nbsp;step<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:14">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Spic_address5<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The picture of the fifth step<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:15;mso-yfti-lastrow:yes">
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">Spic_address6<o:p></o:p></span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">varchar<o:p></o:p></span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">no<o:p></o:p></span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-bidi-theme-font:
  minor-bidi">The picture of the sixth step<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

## Middle Tier


## Front End


## Additional elements and components


## Deployment details
