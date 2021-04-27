## Contents

* [**Group working methods**](#group-working-methods)
* [**Interacting users and broader stakeholders**](#interacting-users-and-broader-stakeholders)
* [**Team roles**](#team-roles)
* [**Documentation of sprints**](#documentation-of-sprints)
* [**Team use of Git**](#team-use-of-git)

The waterfall model

The waterfall model is one of the earliest software development models. It is a linear, sequential approach to the software development life cycle (SDLC). 
The waterfall model emphasizes a logical progression of steps. Similar to the direction water flows over the edge of a cliff, distinct endpoints or goals are set for each phase of development and cannot be revisited after completion. 


![image](https://user-images.githubusercontent.com/45390078/115988985-e387f800-a5b3-11eb-8147-c65f7b861610.png)

The waterfall methodology is composed of seven non-overlapping stages:

Requirements: Potential requirements, deadlines and guidelines for the project are analyzed and placed into a functional specification. This stage handles the defining and planning of the project without mentioning specific processes.

Analysis: The system specifications are analyzed to generate product models and business logic   that will guide production. This is also when financial and technical resources are audited for feasibility.
	Technical feasibility, analyze whether the required functions can be realized at the technical level;
	Economic feasibility: analyze whether the software can be profitable;
	Legal feasibility; analyze whether the software system to be done conforms to legal standards.

Design: A design specification document is created to outline technical design requirements such as programming language, hardware, data sources, architecture and services.
	Outline design: Outline design is a process in which designers form an interactive framework and a visual framework according to the process of user interaction and user needs.
	detailed design: detailed design is the process of how to achieve a specific function in detail design, for example: to achieve the user login function.
Coding/Implementation: The source code is developed using the models, logic and requirements designated in the prior stages. Typically, the system is designed in smaller components, or units, before being implemented together.

Testing: This is when quality assurance, unit,  system   and  beta tests take place to report issues that may need to be resolved. This may cause a forced repeat of the coding stage for debugging. If the system passes the tests, the waterfall continues forward.

Operation/Deployment: The product or application is deemed fully functional and is deployed to a live environment.

Maintenance: Corrective, adaptive and perfective maintenance is carried out indefinitely to improve, update and enhance the final product. This could include releasing  patch   updates or releasing new versions.

Before moving to the next phase, there is usually a review and sign off process to ensure that all defined goals have been met.




Just as a coin has two sides, the waterfall model is no exception and has its own advantages and disadvantages.


Advantages of the waterfall model

While agile or dynamic methods often replace the waterfall model, there are some advantages:

Upfront documentation and planning stages allow for large or shifting teams to remain informed and move towards a common goal.
Forces structured , disciplined organization.
Is simple to understand, follow and arrange tasks.
Facilitates departmentalization and managerial control based on schedule or deadlines.
Reinforces good coding habits to define before design and then code.
Allows for early design or specification changes to be made easily.
Clearly defines milestones and deadlines.

Disadvantages of the waterfall model

The disadvantages of the waterfall model typically surround risk associated with a lack of revision, including:

Design is not adaptive; often when a flaw is found, the entire process needs to start over.
Ignores the potential to receive mid-process user or client feedback and make changes based on results.
Delays testing until the end of the development life cycle.
Does not consider error correction.
Does not handle requests for changes, scope adjustments or updates well.
Reduces efficiency by not allowing processes to overlap.
No working product is available until the later stages of the life cycle.
Not ideal for complex, high risk, ongoing or object-oriented projects.

The waterfall approach is ideal for projects that have specific documentation, fixed requirements, ample resources, an established timeline and well-understood technology. 

同时，为了弥补瀑布模型的不足，我们同时引入了原型化模型方法。

Prototype Development

Prototype development is defined by a rapid development pace for iterating and testing. Oftentimes a prototype is created as a simplified version of the desired final product or feature that is used to test concepts before fully committing to them. Prototypes are a great way to get stakeholders on board with a new project or changes to an existing project without making costly upfront investments. Early prototypes can be simple sketches and drawings, but in this article I'm going to focus specifically on coded prototypes.

![image](https://user-images.githubusercontent.com/45390078/116005839-a26a0500-a600-11eb-9875-a5670caea885.png)

Here’s a stepwise approach that can be executed to design a software prototype:

Step 1: Requirement Identification
As a starting point, gather the basic requirements from the technology to the user interface preferences. This basic knowledge is the pillar of your prototype which will eventually determine the internal and intricate design. It will also affect performance and security while representing your business.  

Step 2: Initial Prototype
With the initial requirements in place, the features will work in a certain way that will not correspond to the actual software. The whole concept of the prototype is just to have an idea of its working, look and feel to the users.  

Step 3: Test and Feedback 
Once the initial prototype is presented to the users, stakeholders and to the target audience, all kinds of inputs are then collected. This organized and valuable feedback is analyzed and put to use for further improvements in the product. 

Step 4: Revise and Repeat
With the accumulated feedback, the review committee discusses the stages where suggested changes can be incorporated based on various factors. Those changes are then implemented and again tested for the prototype cycle to run as a feedback loop. 

优点：
1）通过向用户提供原型获取用户的反馈，使开发出的软件能够真正反映用户的需求。
2）采用逐步求精的方法完善原型，使得原型能够“快速”开发，避免了像瀑布模型一样在冗长的开发过程中难以对用户的反馈作出快速的响应。
3）相对瀑布模型而言，原型模型更符合人们开发软件的习惯，是目前较流行的一种实用软件生存期模型。
缺点：
1）需要工具支持，否则开发工作量大。
2）原型法不能用于解决复杂系统和开发大型系统。
3）对用户的管理水平要求高。适用范围：适用于小型、简单、处理过程比较明确、没有大量运算和逻辑处理的系统。



考虑到这是一个有明确截止时间的小型项目，我们采用原型化模型+瀑布模型。

![image](https://user-images.githubusercontent.com/45390078/116005928-04c30580-a601-11eb-89cd-33bc188444f5.png)


![image](https://user-images.githubusercontent.com/45390078/116006670-25408f00-a604-11eb-9a2e-e52ba8869606.png)

