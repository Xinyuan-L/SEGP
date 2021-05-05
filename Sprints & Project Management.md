## Contents

* [**Group working methods**](#group-working-methods)
* [**Team roles**](#team-roles)
* [**Documentation of sprints**](#documentation-of-sprints)
* [**Team use of Git**](#team-use-of-git)

## Group working methods

#### The Waterfall Model

The waterfall model is one of the earliest software development models.

It is a linear, sequential approach to the software development life cycle (SDLC).

The waterfall model emphasizes a logical progression of steps.

Similar to the direction water flows over the edge of a cliff, distinct endpoints or goals are set for each phase of development and cannot be revisited after completion.

![image](https://user-images.githubusercontent.com/45390078/115988985-e387f800-a5b3-11eb-8147-c65f7b861610.png)

The waterfall methodology is composed of **seven non-overlapping stages**:

1. **Requirements:** Potential requirements, deadlines and guidelines for the project are analyzed and placed into a functional specification.  

  This stage handles the defining and planning of the project without mentioning specific processes.

2. **Analysis:** The system specifications are analyzed to generate product models and business logic that will guide production.    

  This is also when financial and technical resources are audited for feasibility.

    * Technical feasibility: analyze whether the required functions can be realized at the technical level;

    * Economic feasibility: analyze whether the software can be profitable;

    * Legal feasibility: analyze whether the software system to be done conforms to legal standards.

3. **Design:** A design specification document is created to outline technical design requirements such as programming language, hardware, data sources, architecture and services.

  * Outline design: Outline design is a process in which designers form an interactive framework and a visual framework according to the process of user interaction and user needs.

  * Detailed design: detailed design is the process of how to achieve a specific function in detail design, for example: to achieve the user login function.

4. **Coding/Implementation:** The source code is developed using the models, logic and requirements designated in the prior stages. Typically, the system is designed in smaller components, or units, before being implemented together.

5. **Testing:** This is when quality assurance, unit,  system   and  beta tests take place to report issues that may need to be resolved.

  This may cause a forced repeat of the coding stage for debugging. If the system passes the tests, the waterfall continues forward.

6. **Operation/Deployment:** The product or application is deemed fully functional and is deployed to a live environment.

7. **Maintenance:** Corrective, adaptive and perfective maintenance is carried out indefinitely to improve, update and enhance the final product.

  This could include releasing  patch   updates or releasing new versions.

Before moving to the next phase, there is usually a review and sign off process to ensure that all defined goals have been met.

Just as a coin has two sides, the waterfall model is no exception and has its own advantages and disadvantages.

#### Advantages of the waterfall model:

While agile or dynamic methods often replace the waterfall model, there are some **advantages:**

* Upfront documentation and planning stages allow for large or shifting teams to remain informed and move towards a common goal.

* Forces structured , disciplined organization.

* It is simple to understand, follow and arrange tasks.

* Facilitates departmentalization and managerial control based on schedule or deadlines.

* Reinforces good coding habits to define before design and then code.

* Allows for early design or specification changes to be made easily.

* Clearly defines milestones and deadlines.

**Disadvantages of the waterfall model:**

* Design is not adaptive; often when a flaw is found, the entire process needs to start over.

* Ignores the potential to receive mid-process user or client feedback and make changes based on results.

* Delays testing until the end of the development life cycle.

* Does not consider error correction.

* Does not handle requests for changes, scope adjustments or updates well.

* Reduces efficiency by not allowing processes to overlap.

* No working product is available until the later stages of the life cycle.

* Not ideal for complex, high risk, ongoing or object-oriented projects.

The waterfall approach is ideal for projects that have specific documentation, fixed requirements, ample resources, an established timeline and well-understood technology.

In order to make up for the shortcomings of waterfall model, we also introduce the method of prototype development.

#### Prototype Development

Prototype development is defined by a rapid development pace for iterating and testing.

Oftentimes a prototype is created as a simplified version of the desired final product or feature that is used to test concepts before fully committing to them. Prototypes are a great way to get stakeholders on board with a new project or changes to an existing project without making costly upfront investments.

Early prototypes can be simple sketches and drawings, but in this article I'm going to focus specifically on coded prototypes.

![image](https://user-images.githubusercontent.com/45390078/116005839-a26a0500-a600-11eb-9875-a5670caea885.png)

Here’s a stepwise approach that can be executed to design a software prototype:

##### Step 1: Requirement Identification

As a starting point, gather the basic requirements from the technology to the user interface preferences.

This basic knowledge is the pillar of your prototype which will eventually determine the internal and intricate design.

It will also affect performance and security while representing your business.  

##### Step 2: Initial Prototype

With the initial requirements in place, the features will work in a certain way that will not correspond to the actual software.

The whole concept of the prototype is just to have an idea of its working, look and feel to the users.  

##### Step 3: Test and Feedback

Once the initial prototype is presented to the users, stakeholders and to the target audience, all kinds of inputs are then collected.

This organized and valuable feedback is analyzed and put to use for further improvements in the product.

##### Step 4: Revise and Repeat
With the accumulated feedback, the review committee discusses the stages where suggested changes can be incorporated based on various factors.

Those changes are then implemented and again tested for the prototype cycle to run as a feedback loop.

**Advantages of the Prototype Development:**

1. By providing users with prototypes to obtain user feedback, so that the developed software can truly reflect the needs of users.

2. The prototype is perfected by the method of step-by-step refinement, so that the prototype can be developed "quickly".

3. Avoid the waterfall model in the lengthy development process is difficult to make a quick response to the user's feedback.

4. Compared with waterfall model, prototype model is more in line with people's habit of software development, and is a popular practical software life model at present.

**Disadvantages of the Prototype Development:**

1. Need tool support, otherwise the development effort is too much.

2. Prototyping cannot be used to solve complex systems and develop large systems.

3. The requirement of user management level is high.

4. Considering that this is a small project with a clear deadline, we adopted the Prototype Development + Waterfall Model.

![image](https://user-images.githubusercontent.com/45390078/116005928-04c30580-a601-11eb-89cd-33bc188444f5.png)

## Team roles

|name|task|
|:--:|:--:|
|Jie|Data collection, database management;|
|Xinyuan| Backend design & management; |
|Kang| Frontend work & website build;|
|Wanqing| website test, document writing, github maintenance;|
|Yiyuan| Frontend work & website build, project management;|

## Documentation of sprints

Sinocook's Development process was based on the Prototype Development + Waterfall Model.

We try our best to execute every step of the development process in order to deliver a high quality product on time.

We have made some adjustments and optimizations in the process that are suitable for the team.

The iterative cycle and flow of project development are shown in the figure below:

![image](https://user-images.githubusercontent.com/45390078/116006670-25408f00-a604-11eb-9a2e-e52ba8869606.png)

Development is divided into five major sprints.

We have regular group discussions and the leader arranges the work.

Due to the difficulties of COVID-19 for offline meetings, we mainly used 微信 (WeChat) and Teams for communication.

![image](https://user-images.githubusercontent.com/45390078/117072888-0a1eff00-ad29-11eb-9f30-e186e7ece962.png)![image](https://user-images.githubusercontent.com/45390078/117072891-0db28600-ad29-11eb-9831-e4ac34fee261.png)

#### Sprint 1 : Analysis and Design（3.18-4.8）

During this Sprint, we performed requirements analysis in a variety of ways and decided whether to add a new feature or not based on feedback from the target audience.

In addition, the leader will review the requirements to ensure the rationality and importance of the requirements.

The requirements are then broken down to individual developers, and the time estimates are used to determine what specific tasks each person has accomplished.

At this stage we agreed on the concept and design of the product.

##### Stage Achievements:

1. Tasks were initially assigned;

2. Set up your GitHub repository and familiarize yourself with the platform;

3. Created a UI design prototype.

4. We will construct the [prototype] (https://q4r9fc.axshare.com/#id=sbwg5b&p=home) to show to the user, won the first round of feedback.

5. We show our[prototype](https://q4r9fc.axshare.com/#id=sbwg5b&p=home) to the user and collect the first round of feedback.

| User         | Feedback                                                |                                                     
| :--------:     | :-----|
| Miss wang    | Can I just read the top reviews so that I can choose quickly?|
| Anne         | I'd like to see pictures for every step of the cooking process.|
| Titus        | I hope the dish from the slot machine can be replaced. |
| Mr. Zhang    |I think it's better to use it anonymously. I don't want to be collected information by the platform. |

##### Reflections:

During the first sprint, we built a model view of the product and got the first round of user feedback.

#### Sprint 2 : Development -Alpha Version Release（4.9-4.19）

After the task split and evaluation is complete, we officially enter the development phase.

In the development process, necessary communication meetings are indispensable.

How to reduce unnecessary meetings and improve the efficiency of the meeting is the direction of our efforts.

Our conference adopts the method of Microsoft Calendar invitation and the invitees can choose whether to attend or not according to their own time and the importance of the meeting.

Meanwhile, the conference organizer can also clearly check the time of others to avoid scheduling conflicts.

##### Stage objectives:

1. Launch a version based on a prototype;

2. Find users to test and give feedback.

##### Stage Achievements:

Alpha Version has been released.

In this version, the home page randomly recommends daily recipes, and users can personalize recommendations according to their own needs, and can comment on recipes.

| User       | Feedback                             |
| :------:   | :-----                               |
| Miss wang  | Can I cancel the likes?？             |
| Anne       | Can I set the anonymity by myself?    |
| Titus      | Very good.                            |
| Mr. Zhang  | Very good.                            |

##### Reflections:

During this Sprint, we released the first release.

#### Sprint 3 : Development -Beta Version Release（4.19-4.28）

##### Stage objectives:

1. Improve our products based on user feedback from Sprint2;

2. Find users to test and give feedback.

##### Stage Achievements:

During this Sprint, we released the second version.

In this version, the ability to unlike has been added.

| User       | Feedback  |
| :------:   | :-----:    |
| Miss wang  | Very good. |
| Anne       | Very good. |
| Titus      | Very good. |
| Mr. Zhang  | Very good. |

##### Reflections:

The users were happy with the release, so we were able to wrap up the development process and move on to the next phase.

#### Sprint 4 : Test and Feedback（4.29-5.7）

Project quality is also in the development process can not be ignored a link.
We have a rule that Code reviews for major projects must be done before they are submitted.

We require code authors to perform their own functional tests before each submission to ensure that the basic functionality is complete.
Our tests are divided into functional tests and user tests.
In the development process will inevitably encounter some online accidents.

For example, the server is redundant, the client has serious quality problems and so on.
We will record the reasons, processes and results of these events, as well as the reflections and summaries of the whole event.
Only in this way can we constantly improve our ability, so that the team in the reflection of growth.

You can see [Evaluation.md](./Evaluation.md)

#### Sprint 5 : Documentation（5.7-5.13）

The last part is the summary and review at the end of the whole iteration.
In the final phase, the goal of this final sprint is to complete the document.

To show how our systems work together and how to use them, we record short demo videos of our products.
