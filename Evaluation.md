
## Contents

* [**Details of how we evaluated our designs**](#details-of-how-we-evaluated-our-designs)
* [**Unit testing / Functional testing**](#user-content-unit-testing--functional-testing)
* [**User acceptance testing**](#user-acceptance-testing)

## Details of how we evaluated our designs

Software testing ensures that the software we provide meets the expected functional requirements.
In general, unexpected features, hidden bugs, and software bugs are tested from the user's perspective.
From a developer's perspective, we want to develop software that is error-free, handles exceptions, meets customer requirements, and is easy to use.

We use systems to regulate the design, coding, testing and delivery processes of software development.
We use processes to constrain various parts of the software life cycle.
By increasing the intervention intensity of software testing and increasing the intensity of software evaluation, we can fundamentally improve the software quality step by step.

First, we improve the quality of software by standardizing all aspects of software development and their connections.
We transform the actual needs of the customer into the specific needs of the software and document them.

Then we decompose the requirements of the software to form a software design document.
Software coders code the software according to the design document.

In addition, we add software testing to each link of software development to test different functions.
**Including:**

* Unit level testing for specific functions;

* Conducting component-level testing (integration testing) on the calling relationships between functions;

* Config item level testing against individual software;

* System-level testing of a system formed by multiple pieces of software.

According to the specific situation of the software, different testing strategies are selected to carry out different levels of testing.

The specific **testing process** is as follows:
1. Testers write test plans and test instructions according to software design documents, forming test case sets.

2. The tester then executes all the use cases in the test case set against the software functionality, performance, interface, margin, and security required by the document.

3. Testers record the execution results of each use case and compare them with the expected results to evaluate whether they meet the design requirements.

4. At last, the tester classifies the problems found in the test and forms the final test report.

## Unit testing / Functional testing

### Overview

First of all, we must know that there are two ultimate goals of code. The first is to achieve requirements, and the second is to improve code quality and maintainability.

Unit testing is to improve code quality and maintainability, and is a way to achieve the second goal of the code.

Unit testing has very high requirements for the design of the framework. Data and code should be separated as much as possible from the interface. It also involves interface definition, output and output expectations, code coverage and other elements. As a novice, we certainly cannot plan our code more systematically. We can only try to complete as many unit tests as possible to maximize the benefits of unit testing. At the same time, I have to say that unit testing has played a big role in our reverse optimization of the code.
### Front end

#### Toolbar and footer test

1. We have tested the **logo** jump function of the top toolbar, and the jump functison of **Home**, **Customize**, and **About**.

2. We have tested the jump function of **Home** and **About** in footer.

#### Home page test

1. We have tested the jump function of the **"CUSTOMIZE" button** and the **"THAT IS IT!!" button** at the top of the homepage.

2. We have tested the click and jump function of the three **displayed dishes** in **"THE MOST POPULAR DISHES"**.

3. We have tested the click-to-jump function of the **comment** displayed in **"Top Comments"**.

#### Customize page test

1. We have tested whether the **survey style display** on the page is complete.

2. We have tested whether the options in *question 1*, *question 2*, *question 3* and *question 4* are in **single-select mode**, and whether we have successfully obtained the **data**.

3. We have tested the function that *question 2* will be **hidden** when *question 1* selects the **"Yes" option**.

4. We have tested the **submit and jump functions** of the **"Customize" button** at the bottom of the page.

5. We have tested that if the survey is not completely filled out, the **prompt** would pop up after clicking **the "Customize" button** at the bottom of the page.

#### Slotmachine page test

1. We have tested whether the slot machine format is **displayed completely**.

2. We have tested whether the slot machine would **operate** as expected when the **"Play" button** is pressed.

3. We have tested whether the slot machine would **operate** as expected when the **stick** is pressed.

4. We have tested whether **the button and stick** are switched to **unclickable styles** during the operation of the slot machine to *prevent users from clicking continuously*.

5. We have tested whether there would be a **full-screen shadow mask** and a **pop-up window** after the slot machine runs.

6. We have tested the function of *clicking the shadow mask*, the pop-up window and the mask **disappear**.

7. We have tested whether the pop-up demo display is complete.

8. We have tested the function of *the pop-up window and the mask disappearing* after **clicking the "Try again" button** on the left side of the pop-up window.

9. We have tested the function of *jumping and transferring data* after **clicking the "Get this dish" button** on the right side of the pop-up window.

#### Dish page test

1. We have tested whether the page load is **complete**.

2. We have tested the function of *clicking the heart icon*, which is on the left side of the page, to **favorite dish** and then clicking again to cancel the favorite.

3. We have tested the function of **inputting nickname and comments** in the text box at the bottom of the page.

4. We have tested whether the data is successfully **submitted** after *clicking the "Submit" button*.

5. We have tested the **like function** of **the displayed comment**.

#### CommunicationService test

This service provides two functions, getMessage() and sendMessage(), for all components to get message from other components and send message to others.

* we have tested that whether a component can get the message using **getMessage()** after an another component send message by **sendMessage()**;

#### RequsetService tests

This service provides HTTP request methods including GET, POST, PUT, DELETE, for components to get response data from backend API with at most two parameters, URL and request data(JOSN format);  

We have tested that whether component can get response:

* from API '/getTodayFood' using GET method.

* from API '/getPopular' using GET method.

* from API '/getTopComment' using GET method.

* from API '/getDish' using GET method with dish name as request data.

* from API '/getComments' using GET method with dish id as request data.

* from API '/customize' using POST method with questionnaire answer as request data.

## User acceptance testing

### Our video.

[part1: homepage display, get dish from homepage recommendation, dish page display](https://www.youtube.com/watch?v=xelUfsx15lM)

[part2: get dish from customize and Slotmachine display](https://www.youtube.com/watch?v=79Ki0TsgJh0)

### SinoCook User Experience Test Survey

###### Q1: Do you think our website opens smoothly?

* yes
* no

###### Q2: Do you think our website has attractive content?

* Very good
* general
* very poor

###### Q3: How do you feel about the interface design?

* Very good
* general
* very poor

###### Q4: Do you like the simple style of our pages?

* Very good
* general
* very poor

###### Q5: Do our pictures look beautiful?

* Very good
* general
* very poor

###### Q6: Do you think our website is fully functional?

* Very good
* general
* very poor

###### Q7: Do you think our navigation is clear and has an easy-to-understand structure?

* Very good
* general
* very poor

###### Q8: Will you recommend our website to your friends?

* yes
* no

###### Q9: How do you think our website could be improved to make it more attractive?


###### Q10: Do you have any valuable comments on our website?


All of our users have commented positively on our site, and some have suggested we add a [question-and-answer](https://github.com/Xinyuan-L/SEGP/blob/main/Conclusion.md) feature.
After user testing, we officially launched our project.
