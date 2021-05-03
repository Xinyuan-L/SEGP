## Contents

* [**Stack architecture and system design**](#stack-architecture-and-system-design)
* [**Back End**](#back-end)
* [**Middle Tier**](#middle-tier)
* [**Front End**](#front-end)
* [**Additional elements and components**](#additional-elements-and-components)
* [**Deployment details**](#deployment-details)

## Stack architecture and system design

A single-page application (SPA) is a web application or website that interacts with the user by dynamically rewriting the current web page with new data from the web server, instead of the default method of a web browser loading entire new pages. 

So we integrate multiple functions on one page.

In our single-page application, we use Angular to handle the front-end client application, MySQL to manage the back-end database and SpringBoot to handle the back-end data and return information to the front-end.

![image](https://user-images.githubusercontent.com/45390078/116828557-59cdc100-ab97-11eb-9b82-6f4a4762b47e.png)


The development environment for Sinocook is as follows：

❑ The operating system：Windows 10。

❑ Web framework：Angular CLI version 11.2.1。

❑ The Java development kit：JDK1.8。

❑ The browser：not IE 11。

We adopt B/S 3-tier architecture, including the user interface layer, the data access layer and the business logic layer.

Overall system architecture figure:

![image](https://user-images.githubusercontent.com/45390078/116828463-d01df380-ab96-11eb-8722-3aa5ff984617.png)

User interface layer of recipe recommendation refers to the the recommendation recipes users can see in the client (Web);

The recipe management of the business logic layer is the specific business processing of the recipe management operations (add, delete, modify, query, etc.);

The recipe data storage of the data access layer is to store the real-time updated recipe data, and the real-time updated data is to submit the information through the recipe recommendation of the user interface layer to the recipe management of the business logic layer. 

After the processing of the recipe management of the business logic layer, the recipe data of the database server in the data layer will be recommended.

The system is divided into client and server.

User data and recipe data are stored on the server side. When using the system, users select their personal preferences on the questionnaire interface.

Once the users choose the preference, the system will submit the questionnaire information to the server, then the server will make a preliminary recommendation to the user based on the questionnaire information.

The server consists of three parts: data storage, Web Service and recommendation algorithm.

System coding specification:

In order to standardize the structure and code style of the program and increase the readability of the code, we formulated a set of unified [coding specification](https://github.com/Xinyuan-L/SEGP/blob/main/SinoCook-plan.docx) before coding.


## Back End

When developing dynamic website, database is essential that is mainly used to save the information needed in the website.

Considering the small size of the site, we chose MySQL.

![image](https://user-images.githubusercontent.com/45390078/116626065-918ffb00-a942-11eb-8a97-8cbd5cfaa430.png)

Using naming conventions in a database helps other users better understand tables and the contents of fields in tables. 

So we formulated a set of unified coding specification:

1.	The recipe image includes the main image (cover) and the step diagram.

a)	Put the image in sinocook/src/assets/picture.

b)	Put pictures of each dish in a folder and name it "Did(number)".

c)	The main image (cover) ：cover.jpg，The step diagram：step1.jpg.

2.	Name databases, tables, and fields with relevant English words.

If you can't find a professional English word or phrase, you can substitute English words or phrases with the same meaning.

The E-R diagram designed for the core entity object is as follows:

![image](https://user-images.githubusercontent.com/45390078/116004130-464fb280-a5f9-11eb-8e5c-2069fac7700e.png)


The database we created is called Sinocook, which contains four data tables, including taste , steps , dishes , comments。

Then we will introduce the data table.

（1）dishes

Table Dishes are used to store the main information for the recipe and its structure is shown in the table：

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

Table Taste are used to store the taste of food and its structure is shown in the table：

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

Table steps are used to store the steps for a recipe and its structure is shown in the table：

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="474" style="width:355.25pt;margin-left:18.0pt;border-collapse:collapse;border:none">
 <tbody><tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Field name</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border:solid windowtext 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Data type</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border:solid windowtext 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Primary key</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border:solid windowtext 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Instruction</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Did</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">int</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">yes</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Dishes id</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Dname</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">varchar</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Dishes name</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Dvegan</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">int</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Vegetarian or not</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Dtaste</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">int</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">The taste of the Dishes</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Dtime</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">int</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Time to cook</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Main</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">varchar</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">The main materials</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Others</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">varchar</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">The other materials</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Dlikes</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">int</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Number of likes</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Dviews</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">int</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Number of views</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Ddescription</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">varchar</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Introduction of dishes</span></p>
  </td>
 </tr>
 <tr>
  <td width="95" valign="top" style="width:71.5pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Daddress</span></p>
  </td>
  <td width="76" valign="top" style="width:56.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">varchar</span></p>
  </td>
  <td width="94" valign="top" style="width:70.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">no</span></p>
  </td>
  <td width="208" valign="top" style="width:155.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoListParagraph" style="text-indent:0cm"><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif">Pictures of finished products</span></p>
  </td>
 </tr>
</tbody></table>


（4）comments

Table comments are used to store comments of recipes and its structure is shown in the table：

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

To make our program development easier, we use SpringBoot.

![image](https://user-images.githubusercontent.com/45390078/116944136-ca92dd00-ac6c-11eb-9d6e-8f939673de99.png)


What is the springBoot:

The Spring Framework is an application framework and inversion of control container for the Java platform. 

Spring Boot is a new framework from the Pivotal team designed to make it easy to create, run, debug, deploy.

With Spring Boot, we can focus on the development of Spring applications without worrying too much about XML configuration.

In short, Spring Boot provides a bunch of dependency packages that have been solved the dependency problems.

With Spring Boot, we can get our enterprise project up and running quickly with little configuration.

Spring Boot is an intermediate layer between the developer and the Spring framework itself.

It helps developers manage the configuration of their applications, providing default processing based on common configuration in real development (habit over configuration), simplifying the development of applications and simplifying the operation of applications.

In general, the purpose of Spring Boot is to "simplify" and "speed up" Java Web development by simplifying the configuration of introducing or starting relevant Spring functions during development.

The benefit of this is that developers can focus less on the framework and more on their own code.

Features of SpringBoot:

Create stand-alone Spring applications.

Embed Tomcat, Jetty or Undertow directly (no need to deploy WAR files).

Provide opinionated 'starter' dependencies to simplify your build configuration.

Automatically configure Spring and 3rd party libraries whenever possible.

Provide production-ready features such as metrics, health checks, and externalized configuration.

Absolutely no code generation and no requirement for XML configuration.

![image](https://user-images.githubusercontent.com/45390078/116830197-74f0fe80-aba0-11eb-99e3-c02351786ba3.png)

1.The main directory

| directory name    | relative path      |  main purpose                                             |
| -------           | -----:             | :----:                                                    |
| source directory  | src\main\java      |Store the source code                                      |
| resource directory| src\main\resources |Stores static resources, dynamic pages, configuration files|
| test directory    | src\test\java      |storage unit testing, test procedure                       |

java目录是进行编程和开发的主要目录，业务逻辑代码在这里完成。

SinocookApplication.java是主程序入口类。

resources目录是资源放置目录，yml为属性配置文件。

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

