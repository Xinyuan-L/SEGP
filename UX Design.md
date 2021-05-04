## Contents

* [**Design Process and Early prototyping and ideation**](#design-process-and-early-prototyping-and-ideation)
* [**Interacting users and broader stakeholders**](#interacting-users-and-broader-stakeholders)
* [**UX approach**](#ux-approach)
* [**Understanding of user group**](#understanding-of-user-group)
* [**Wireframes and interaction flow diagrams for final key subsystems**](#wireframes-and-interaction-flow-diagrams-for-final-key-subsystems)

## Design Process and Early prototyping and ideation

At first we came up with a lot of interesting ideas , such as resturant recommend , university selection recommend , how to cook chinese food , stock prediction and so on.

In the end, we agreed to create a Chinese recipe recommendation website.

We initially identified the functionality through brainstorming.

![image](https://user-images.githubusercontent.com/45390078/115632326-5f0d4f00-a2ff-11eb-84d9-de662149768b.png)

1. Classification of recipes

We categorize recipes according to their type, for example: meat, fish, vegetables, dishes, cuisines, etc.

We want to make it very easy for users to use this feature to find whatever they want to cook.

3. Recipe search

Users can use this to search for recipes and they can easily find the recipes that they want to make.

4. Dishes tutorial

Our website provides tutorials on various dishes, including text and pictures.

In the tutorial, we list the main ingredients, accessories, steps, which will help the user learn to cook quickly.

5. The Recipe Circle

Users can post their own dishes as well as special snacks they find outside.

5. Upload recipes

Users register and upload their own recipes with real names.

Because our site can recommend recipes to users, we eventually removed the category and search function, which made it difficult for users to choose a recipe of the day.

For privacy reasons, we removed sign-in and social features and switched to anonymous sharing.

Having identified the main functions , we use [axure](https://q4r9fc.axshare.com/) to built the prototype of the site。

![image](https://user-images.githubusercontent.com/45390078/115631402-a72b7200-a2fd-11eb-8145-11205ec7db40.png)

We use the Chinese characteristics of food related elements "bowl", "chopsticks", combined with English letters to design our logo, combined into a certain humor, interesting components of the graphic.

Tableware here point out the theme of food, we adopt three-dimensional flat processing.

This design is in line with the aesthetic characteristics and psychological characteristics of the target user group.

## Interacting users and broader stakeholders

In the process of functional analysis, we preliminarily determined that our users are mainly Chinese students studying in English language environment and foreigners interested in Chinese food culture.

For further analysis, we researched the recipe site haodou.

1.haodou 's user data analysis

According to the gender ratio of haodou's users, we find that the majority of users are female, accounting for 63.73%.

Under the influence of traditional concepts and habits, most Chinese families are still dominated by women cooking.

The fact that women are more meticulous and pay more attention to the details of life than men also means that the mainstream users of recipe sites are women.

With the development of economy, more and more men are no longer "far away from cooking". 

Men who pay attention to food quality and enjoy the cooking process also account for 36.27% of the users of haodou.

![image](https://user-images.githubusercontent.com/45390078/116471365-7b177000-a86c-11eb-9da2-9124fea2ddb4.png)

From the perspective of haodou's age group, users are mainly between 25 and 40 years old that accounting for 83.76%.

Users in this age range have families and children, what's more, their jobs are basically stable.

They are more inclined to eat economically healthy food.

They also have perfect kitchen equipment and are willing to study cooking skills, so the proportion of using products is relatively high.

Users under the age of 25 are students or just entering the social group.

Students in school usually lack cooking conditions or cooking skills ,so they will not do their own cooking.

Most of the new social group rent a house or live with their parents, so they don't have enough conditions or need to cook.

Users over the age of 40 are not accustomed to cooking while reading the content of the web , because they are not familiar with the Internet.

Moreover, they also have their own cooking experience and do not need to improve their cooking skills through recipes, so the proportion of users is the least.

![image](https://user-images.githubusercontent.com/45390078/116472898-663bdc00-a86e-11eb-9607-93f280b44294.png)

In terms of geographical distribution of users of Good Bean, there are more users in eastern and southern coastal cities and central regions.

In China, the economic level of these cities is relatively developed.

So people have a higher standard of living and pursue the quality of life.

![image](https://user-images.githubusercontent.com/45390078/116476969-e3b61b00-a873-11eb-976e-6124f200f7db.png)

2.Data analysis of international students

Considering that the majority of our users are Chinese students studying in English language environment and foreigners interested in Chinese food culture, we conducted a survey on the age and domicile location of the students.

![image](https://user-images.githubusercontent.com/45390078/116475608-fdeef980-a871-11eb-9324-cc7c75bf54c6.png)

According to the White Paper on Chinese Overseas Students in 2020, we can draw the following conclusions:

At present, the main group of people studying abroad are 18-28 years old and come from economically developed regions such as Beijing, Shanghai, Guangzhou and Shenzhen, Jiangsu and Zhejiang.

According to the above data, we further refine the user groups.

The recipes stored in our database will cater more to the tastes of people aged 18-28 in Beijing, Shanghai, Guangzhou and Shenzhen and Jiangsu and Zhejiang regions.

## UX approach

We conducted a [questionnaire survey](https://www.surveymonkey.co.uk/r/VFX5QBK) among 30 students currently studying at the University of Bristol.

Surveys and questionnaires allow researchers to get more feedback, which can provide the basis for more detailed analysis.

This type of research is relatively inexpensive.

The disadvantage of this method is that there is no direct interaction with the interviewees, so it is not possible to delve deeper into the answers they proposed.

The findings are as follows:

![image](https://user-images.githubusercontent.com/45390078/115630985-e2797100-a2fc-11eb-9a69-b6a10efdfcf5.png)
![image](https://user-images.githubusercontent.com/45390078/115631034-f6bd6e00-a2fc-11eb-9069-188df2e098c1.png)
![image](https://user-images.githubusercontent.com/45390078/116478380-e0bc2a00-a875-11eb-8637-bf859b20f9a7.png)
![image](https://user-images.githubusercontent.com/45390078/116478392-e6197480-a875-11eb-841f-41b2845a36e3.png)
![image](https://user-images.githubusercontent.com/45390078/116478404-ea459200-a875-11eb-8cf9-99b76f9a9243.png)

Through preliminary investigation, we found that:

1. Many people are confused about what to eat today and wish there was a website that recommended recipes for the day.

2. The vast majority of people don't want to have a login function because they think it's a hassle and a risk of privacy.

3. Most people prefer to use our website on the Desktop side.

In order to supplement the questionnaire survey, we selected four representative users for interview and research.

This ensures that our products are user-centric, which is the foundation of our system development.

## Understanding of user group

User A:

Miss Wang, 23, is a Chinese student at the University of Bristol.

She is religious, so she doesn't eat pork.

She usually likes to keep fit and pays attention to her figure.

On weekends, she often cooks dishes with low calories to lose weight.

When it comes to why she doesn't need to log in, Wang said it would be troublesome to log in every time.

![image](https://user-images.githubusercontent.com/45390078/115634131-e27b7000-a300-11eb-9431-5f8fcbce83bf.png)

User B:

Anne, 24, is an American who is interested in Chinese cuisine.

She likes to share her recipes on recipe websites.She also doesn't need a login function and she wants to get noticed by anonymously sharing her recipes on recipe sites.

![image](https://user-images.githubusercontent.com/45390078/115632779-61bc7400-a300-11eb-947d-8981376a9d44.png)

User C:

Titus, 24, is a British citizen of Chinese descent.

He likes Chinese food very much, but has "difficulty choosing".

So he never knows what to eat today.

Titus also says he doesn't need a login feature because of privacy concerns.

 ![image](https://user-images.githubusercontent.com/45390078/115634098-d2fc2700-a300-11eb-8856-429fab4c3551.png)

User D:

Mr Zhang, 24, is a Chinese student at the University of Bristol.

As a result of excessive obesity, Mr. Zhang has the tendency of fatty liver.

So the doctor advised him to eat more vegetables and less meat.

When it comes to why he doesn't need the login function, Mr. Zhang said he doesn't want the data collected by the website.

![image](https://user-images.githubusercontent.com/45390078/115632397-87954900-a2ff-11eb-9045-d9a9bf23996d.png)

## Wireframes and interaction flow diagrams for final key subsystems

According to the user's demand points, we have determined the main functions of the website and design a website [prototype.](https://q4r9fc.axshare.com/)。

Our idea is:

1.Put the Chinese dishes recommended today in the most prominent place on the homepage of the website.

2.The homepage provides a button for users to answer some set questions. According to the answers, we recommend Chinese dishes to users today.

3.The homepage shows some user comments.

4.The recipe page is displayed according to the cooking steps. The user reviews of this dish are displayed at the end of the recipe, displayed in descending order of the number of likes.

![image](https://user-images.githubusercontent.com/45390078/115633614-b2cc6800-a300-11eb-865c-b0ada78a8bf6.png)
