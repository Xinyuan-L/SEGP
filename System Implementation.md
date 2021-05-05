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

##### The development environment for Sinocook is as follows：

❑ The operating system：Windows 10。

❑ Web framework：Angular CLI version 11.2.1。

❑ The Java development kit：JDK1.8。

❑ The browser：not IE 11。

We adopt B/S 3-tier architecture, including the user interface layer, the data access layer and the business logic layer.

##### Overall system architecture figure:

![image](https://user-images.githubusercontent.com/45390078/116828463-d01df380-ab96-11eb-8722-3aa5ff984617.png)

User interface layer of recipe recommendation refers to the the recommendation recipes users can see in the client (Web);

The recipe management of the business logic layer is the specific business processing of the recipe management operations (add, delete, modify, query, etc.);

The recipe data storage of the data access layer is to store the real-time updated recipe data, and the real-time updated data is to submit the information through the recipe recommendation of the user interface layer to the recipe management of the business logic layer.

After the processing of the recipe management of the business logic layer, the recipe data of the database server in the data layer will be recommended.

The system is divided into client and server.

User data and recipe data are stored on the server side. When using the system, users select their personal preferences on the questionnaire interface.

Once the users choose the preference, the system will submit the questionnaire information to the server, then the server will make a preliminary recommendation to the user based on the questionnaire information.

The server consists of three parts: data storage, Web Service and recommendation algorithm.

##### System coding specification:

In order to standardize the structure and code style of the program and increase the readability of the code, we formulated a set of unified [coding specification](https://github.com/Xinyuan-L/SEGP/blob/main/SinoCook-plan.docx) before coding.


## Back End

When developing dynamic website, database is essential that is mainly used to save the information needed in the website.

Considering the small size of the site, we chose MySQL.

![image](https://user-images.githubusercontent.com/45390078/116626065-918ffb00-a942-11eb-8a97-8cbd5cfaa430.png)

Using naming conventions in a database helps other users better understand tables and the contents of fields in tables.

So we formulated a set of unified coding specification:

#### The recipe image includes the main image (cover) and the step diagram.

1. Put the image in sinocook/src/assets/picture.
2.	Put pictures of each dish in a folder and name it "Did(number)".
3.	The main image (cover) ：cover.jpg，The step diagram：step1.jpg.

#### Name databases, tables, and fields with relevant English words.

If you can't find a professional English word or phrase, you can substitute English words or phrases with the same meaning.

The E-R diagram designed for the core entity object is as follows:

![image](https://user-images.githubusercontent.com/45390078/116004130-464fb280-a5f9-11eb-8e5c-2069fac7700e.png)


The database we created is called Sinocook, which contains four data tables, including taste , steps , dishes , comments。

Then we will introduce the data table.

1. dishes   
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

2. Taste   
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


3. steps   
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


4. comments   
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


**What is the springBoot:**

The Spring Framework is an application framework and inversion of control container for the Java platform.

Spring Boot is a new framework from the Pivotal team designed to make it easy to create, run, debug, deploy.

With Spring Boot, we can focus on the development of Spring applications without worrying too much about XML configuration.

In short, Spring Boot provides a bunch of dependency packages that have been solved the dependency problems.

With Spring Boot, we can get our enterprise project up and running quickly with little configuration.

Spring Boot is an intermediate layer between the developer and the Spring framework itself.

It helps developers manage the configuration of their applications, providing default processing based on common configuration in real development (habit over configuration), simplifying the development of applications and simplifying the operation of applications.

In general, the purpose of Spring Boot is to "simplify" and "speed up" Java Web development by simplifying the configuration of introducing or starting relevant Spring functions during development.

The benefit of this is that developers can focus less on the framework and more on their own code.

**Features of SpringBoot:**

* Create stand-alone Spring applications.
* Embed Tomcat, Jetty or Undertow directly (no need to deploy WAR files).
* Provide opinionated 'starter' dependencies to simplify your build configuration.
* Automatically configure Spring and 3rd party libraries whenever possible.
* Provide production-ready features such as metrics, health checks, and externalized configuration.
* Absolutely no code generation and no requirement for XML configuration.

![image](https://user-images.githubusercontent.com/45390078/116830197-74f0fe80-aba0-11eb-99e3-c02351786ba3.png)

1. **The main directory**

| directory name    | relative path      |  main purpose                                             |
| -------           | -----:             | :----:                                                    |
| source directory  | src\main\java      |Store the source code                                      |
| resource directory| src\main\resources |Stores static resources, dynamic pages, configuration files|
| test directory    | src\test\java      |storage unit testing, test procedure                       |

* java is the main directory for programming and development where we put our code.
* SinocookApplication.java is the main program entry class.
* yml is a properties configuration file.

2. **.mvn**  
The maven relevant documents.

3. **target**：the directory where the compiled files are stored   
This is where the project files are automatically generated after the project is compiled, as well as files that are packaged using Maven.

4. **gitignore**  
git configuration file;
gitignore realizes the management of remote warehouse.

5. **pom.xml**  
The pom is the main project build files for the Maven project, along with the associated configuration files.

6. **groupwork.iml**   
This is the file that records the project directory, the Maven of the project, all the dependencies, and the corresponding version number.

## Front End

#### (1) Outer Directory:

| directory name    |  main purpose                                                                        |
| -------           | :----:                                                                               |
| node_modules      |Stores third-party dependency packages.                                               |
| dist | Built files |
| e2e               |End-to-end test directory for automated testing.                                      |
| src               |Application code directory                                                            |
| angular.json      |The configuration file for the Angular command line tool.                             |
| karma.conf.js     |Karma is the unit test executor and karma.conf.js is the configuration file for karma.|
| package.json      |This is a standard NPM tool configuration file.                                       |
| README.md         |Description                                                                           |
| tslint.json       |A configuration file for tslint that defines rules for TypeScript code quality checks.|
| browserslist      |A file to configure browser compatibility.                                            |
| .editorconfig     |Uniform code styles for different compilers.                                          |
| package-lock.json |Lock the dependent package version.                                                   |
| tsconfig.app.json |The TypeScript configuration file for the app project.                                |
| tsconfig.json     |The TypeScript configuration files for the entire workspace.                          |
| tsconfig.spec.json|The TypeScript configuration files for testing.                                       |

#### (2) src Directory：

| directory name        |  main purpose                                                                        |
| -------               | :----:                                                                               |
| app Directory         |Stores the code we write, including the components and modules of the application.    |
| assets Directory      |A resource directory used to store static resources.                                  |
| environments Directory|Configure the environment                                                             |
| index.html            |The root HTML of the application.                                                     |
| main.ts               |The entry point for the entire project from which Angular starts the project.         |
| polyfills.ts          |Import the necessary libraries.                                                       |
| styles.css            |Put the global style.                                                                 |
| test.ts               |For automated testing.                                                                |

#### (3) app Directory：

The code we write is put in this directory.

## Additional elements and components

##### Our video:

[part1](https://www.youtube.com/watch?v=xelUfsx15lM)

[part2](https://www.youtube.com/watch?v=79Ki0TsgJh0)

Due to space limitation, we only show some functions.

##### The homepage:  

![image](https://user-images.githubusercontent.com/45390078/117138035-6f630680-ada2-11eb-88df-0428d016c011.png)

##### The questionnaire:

![image](https://user-images.githubusercontent.com/45390078/117138093-79850500-ada2-11eb-846e-3c3d5e5da586.png)

##### Slot machine:

![image](https://user-images.githubusercontent.com/45390078/117138138-84d83080-ada2-11eb-9a9a-ab6153c81e9a.png)

##### The recipe

![image](https://user-images.githubusercontent.com/45390078/117138178-8efa2f00-ada2-11eb-970b-5dc03250ae3b.png)

![image](https://user-images.githubusercontent.com/45390078/117138552-13e54880-ada3-11eb-966e-56dc5b2c2434.png)

##### Submit your comments:

![image](https://user-images.githubusercontent.com/45390078/117138203-991c2d80-ada2-11eb-886f-63943ebc3607.png)

##### Like it

![image](https://user-images.githubusercontent.com/45390078/117138405-e6989a80-ada2-11eb-957d-54f8415eb9cd.png)

## Deployment details

We used Maven+Git to build continuous integration and automated deployment.

    1. Maven for project management;
    2.  Git for code management;
    3. Springboot+Mybatis build program framework;
    4. MySQL for data storage;
