## Contents

* [**Stack architecture and system design**](#stack-architecture-and-system-design)
* [**Back End**](#back-end)
* [**Middle Tier**](#middle-tier)
* [**Front End**](#front-end)
* [**Additional elements and components**](#additional-elements-and-components)
* [**Deployment details**](#deployment-details)

## Stack architecture and system design

所谓单页应用，指的是在一个页面上集成多种功能，甚至整个系统就只有一个页面，所有的业务功能都是它的子模块，通过特定的方式挂接到主界面上。

在我们的单页应用程序中，我们使用Angular处理前端客户端应用程序，MySQL处理后端数据库，Springboot处理中间层服务器。

![image](https://user-images.githubusercontent.com/45390078/116828557-59cdc100-ab97-11eb-9b82-6f4a4762b47e.png)


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

![image](https://user-images.githubusercontent.com/45390078/116828463-d01df380-ab96-11eb-8722-3aa5ff984617.png)

Overall system architecture

本系统采用现今较为成熟的B/S三层架构模式，该三层架构分别是表示层、数据层、业务层。系统总体架构图如图所示，表示层的菜谱推荐是指普通用户在客户端（WEB）可看到的推荐列表；业务层的菜谱管理是对菜谱管理操作（增加、删除、修改、查询等操作）的具体业务处理；数据层的菜谱数据存储是存储实时更新的菜谱数据，实时更新的数据是通过表示层的菜谱管理提交菜谱信息到业务层的菜谱管理，经过业务层菜谱管理的处理，提交到数据层中数据库服务器的菜谱数据。系统分为客户端和服务器端。服务端存储用户数据、菜谱数据，当用户使用本系统时，须在问卷界面选择个人偏好。当用户选定偏好之后，系统会把用户提交的问卷信息提交到服务端，服务端依据这些信息会给该用户进行初步的推荐。服务器端由数据存储、Web service、推荐算法三部分组成。

系统编码规范:
由于本次开发，每个人负责不同的业务模块，为了使程序的结构与代码风格统一标准化，增加代码的可读性，我们在编码之前制定了一套统一的[编码规范](https://github.com/Xinyuan-L/SEGP/blob/main/SinoCook-plan.docx)。


## Back End

开发动态网站时数据库是必不可少的，它主要用来保存网站中需要的信息。考虑到网站的规模不大，我们选择MySQL。

![image](https://user-images.githubusercontent.com/45390078/116626065-918ffb00-a942-11eb-8a97-8cbd5cfaa430.png)

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

为了实现我们的程序开发更加简单，这里使用Springboot来帮助开发。

![image](https://user-images.githubusercontent.com/45390078/116625981-745b2c80-a942-11eb-99e5-1ce9d14e0c8b.png)


什么是springBoot？
Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化Spring应用的创建、运行、调试、部署等。使用Spring Boot可以做到专注于Spring应用的开发，而无需过多关注XML的配置。Spring Boot使用“习惯优于配置”的理念，简单来说，它提供了一堆依赖打包，并已经按照使用习惯解决了依赖问题。使用Spring Boot可以不用或者只需要很少的Spring配置就可以让企业项目快速运行起来。
Spring Boot是开发者和Spring 本身框架的中间层，帮助开发者统筹管理应用的配置，提供基于实际开发中常见配置的默认处理（即习惯优于配置），简化应用的开发，简化应用的运维；总的来说，其目的Spring Boot就是为了对Java web 的开发进行“简化”和加“快”速度，简化开发过程中引入或启动相关Spring 功能的配置。这样带来的好处就是降低开发人员对于框架的关注点，可以把更多的精力放在自己的业务代码上。

SpringBoot的特点？

a) 能够快速创建基于Spring的应用程序。（简化配置）
b) 能够直接使用java的main方法启动内嵌的Tomcat，Jetty服务器运行Spring boot程序，不需要部署war包文件。
c) 提供约定的starter POM来简化来简化Maven配置，让Maven配置变得简单。
d) 根据项目的maven依赖配置，Spring boot自动配置Spring,SpringMVC等其它开源框架。
e) 提供程序的健康检查等功能。（检查内部的运行状态等）
f) 基本可以完全不使用xml配置文件，采用注解配置。（或者默认约定的配置，代码中已经实现）

![image](https://user-images.githubusercontent.com/45390078/116830197-74f0fe80-aba0-11eb-99e3-c02351786ba3.png)


一、主要目录

| 目录名称| 相对路径       |  主要用途                      |
| --------   | -----:            | :----:                            |
| 源码目录| src\main\java     |存储源码                        |
| 资源目录| src\main\resources |存储静态资源、动态页面、配置文件|
| 测试目录| src\test\java      |存储单元测试、测试程序          |

java目录是进行编程和开发的主要目录，业务逻辑代码在这里完成。

SinocookApplication.java 主程序入口类

resources目录是资源放置目录，yml为属性配置文件

二、.mvn
maven相关文件

自动生成的项目会自动添加mvnw （maven wrapper文件）,此文件是为了保证各个开发人员在自己使用maven构建时保证maven的版本一致生成的。

三、target：编译文件存放的目录
项目编译后自动生成的项目文件，使用maven打包后的文件也在此处。

四、.gitignore
git配置文件
gitignore文件实现对远程仓库的管理。

六、pom.xml
pom文件为maven工程的主要项目构建文件，以及相关配置文件.

七、*.iml文件
groupwork.iml

这是记录项目目录、项目的maven、所有的依赖以及相应的版本号的文件

此文件为idea的工程文件和maven文件，开发的时候不会提交到服务器。

## Front End

首层目录：
node_modules		第三方依赖包存放目录
e2e  				端到端的测试目录  用来做自动测试的
src   				应用源代码目录  
angular.json   Angular命令行工具的配置文件。后期可能会去修改它，引一些其他的第三方的包  比如jquery等
karma.conf.js  		karma是单元测试的执行器，karma.conf.js是karma的配置文件
package.json   		这是一个标准的npm工具的配置文件，这个文件里面列出了该应用程序所使用的第三方依赖包。实际上我们在新建项目的时候，等了半天就是在下载第三方依赖包。下载完成后会放在node_modules这个目录中，后期我们可能会修改这个文件。
README.md           说明文件
tslint.json       	是tslint的配置文件，用来定义TypeScript代码质量检查的规则，不用管它
browserslist       配置浏览器兼容性的文件
.editorconfig      不同编译器统一代码风格
package-lock.json    依赖包版本锁定文件
tsconfig.app.json    app项目的TypeScript的配置文件
tsconfig.json    整个工作区的TypeScript配置文件
tsconfig.spec.json   用于测试的TypeScript配置文件
tslint.json    TypeScript的代码静态扫描配置

src目录：
app目录				包含应用的组件和模块，我们写的代码都在这个目录
assets目录  			资源目录，存储静态资源的  比如图片
environments目录   	环境配置。Angular是支持多环境开发的，我们可以在不同的环境下（开发环境，测试环境，生产环境）共用一套代码，主要用来配置环境的
index.html  		整个应用的根html，程序启动就是访问这个页面
main.ts    			整个项目的入口点，Angular通过这个文件来启动项目
polyfills.ts   		主要是用来导入一些必要库，为了让Angular能正常运行在老版本下
styles.css   		主要是放一些全局的样式
test.ts    			也是自动化测试用的

app目录：
app目录是我们要编写的代码目录。我们写的代码都是放在这个目录。


## Additional elements and components

## Deployment details

Maven+Git搭建持续集成和自动化部署

    1. Maven做项目管理；
    2. Git做代码管理；
    3. Springboot+Mybatis搭建程序框架；
    4. MySQL作为数据存储；

