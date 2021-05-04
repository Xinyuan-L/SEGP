## Contents

* [**Group working methods**](#group-working-methods)
* [**Team roles**](#team-roles)
* [**Documentation of sprints**](#documentation-of-sprints)
* [**Team use of Git**](#team-use-of-git)

## Group working methods

The Waterfall Model

The waterfall model is one of the earliest software development models. 

It is a linear, sequential approach to the software development life cycle (SDLC). 

The waterfall model emphasizes a logical progression of steps. 

Similar to the direction water flows over the edge of a cliff, distinct endpoints or goals are set for each phase of development and cannot be revisited after completion. 

![image](https://user-images.githubusercontent.com/45390078/115988985-e387f800-a5b3-11eb-8147-c65f7b861610.png)

The waterfall methodology is composed of seven non-overlapping stages:

Requirements: Potential requirements, deadlines and guidelines for the project are analyzed and placed into a functional specification. 

This stage handles the defining and planning of the project without mentioning specific processes.

Analysis: The system specifications are analyzed to generate product models and business logic that will guide production. 

This is also when financial and technical resources are audited for feasibility.

Technical feasibility, analyze whether the required functions can be realized at the technical level;

Economic feasibility: analyze whether the software can be profitable;

Legal feasibility; analyze whether the software system to be done conforms to legal standards.

Design: A design specification document is created to outline technical design requirements such as programming language, hardware, data sources, architecture and services.

Outline design: Outline design is a process in which designers form an interactive framework and a visual framework according to the process of user interaction and user needs.

Detailed design: detailed design is the process of how to achieve a specific function in detail design, for example: to achieve the user login function.

Coding/Implementation: The source code is developed using the models, logic and requirements designated in the prior stages. Typically, the system is designed in smaller components, or units, before being implemented together.

Testing: This is when quality assurance, unit,  system   and  beta tests take place to report issues that may need to be resolved. 

This may cause a forced repeat of the coding stage for debugging. If the system passes the tests, the waterfall continues forward.

Operation/Deployment: The product or application is deemed fully functional and is deployed to a live environment.

Maintenance: Corrective, adaptive and perfective maintenance is carried out indefinitely to improve, update and enhance the final product. 

This could include releasing  patch   updates or releasing new versions.

Before moving to the next phase, there is usually a review and sign off process to ensure that all defined goals have been met.

Just as a coin has two sides, the waterfall model is no exception and has its own advantages and disadvantages.

Advantages of the waterfall model:

While agile or dynamic methods often replace the waterfall model, there are some advantages:

Upfront documentation and planning stages allow for large or shifting teams to remain informed and move towards a common goal.

Forces structured , disciplined organization.

Is simple to understand, follow and arrange tasks.

Facilitates departmentalization and managerial control based on schedule or deadlines.

Reinforces good coding habits to define before design and then code.

Allows for early design or specification changes to be made easily.

Clearly defines milestones and deadlines.

Disadvantages of the waterfall model:

Design is not adaptive; often when a flaw is found, the entire process needs to start over.

Ignores the potential to receive mid-process user or client feedback and make changes based on results.

Delays testing until the end of the development life cycle.

Does not consider error correction.

Does not handle requests for changes, scope adjustments or updates well.

Reduces efficiency by not allowing processes to overlap.

No working product is available until the later stages of the life cycle.

Not ideal for complex, high risk, ongoing or object-oriented projects.

The waterfall approach is ideal for projects that have specific documentation, fixed requirements, ample resources, an established timeline and well-understood technology. 

In order to make up for the shortcomings of waterfall model, we also introduce the method of prototype development.

Prototype Development

Prototype development is defined by a rapid development pace for iterating and testing. 

Oftentimes a prototype is created as a simplified version of the desired final product or feature that is used to test concepts before fully committing to them. Prototypes are a great way to get stakeholders on board with a new project or changes to an existing project without making costly upfront investments. 

Early prototypes can be simple sketches and drawings, but in this article I'm going to focus specifically on coded prototypes.

![image](https://user-images.githubusercontent.com/45390078/116005839-a26a0500-a600-11eb-9875-a5670caea885.png)

Here’s a stepwise approach that can be executed to design a software prototype:

Step 1: Requirement Identification

As a starting point, gather the basic requirements from the technology to the user interface preferences. 

This basic knowledge is the pillar of your prototype which will eventually determine the internal and intricate design. 

It will also affect performance and security while representing your business.  

Step 2: Initial Prototype

With the initial requirements in place, the features will work in a certain way that will not correspond to the actual software. 

The whole concept of the prototype is just to have an idea of its working, look and feel to the users.  

Step 3: Test and Feedback 

Once the initial prototype is presented to the users, stakeholders and to the target audience, all kinds of inputs are then collected. 

This organized and valuable feedback is analyzed and put to use for further improvements in the product. 

Step 4: Revise and Repeat
With the accumulated feedback, the review committee discusses the stages where suggested changes can be incorporated based on various factors. 

Those changes are then implemented and again tested for the prototype cycle to run as a feedback loop. 

Advantages of the Prototype Development:

By providing users with prototypes to obtain user feedback, so that the developed software can truly reflect the needs of users.

The prototype is perfected by the method of step-by-step refinement, so that the prototype can be developed "quickly".

Avoid the waterfall model in the lengthy development process is difficult to make a quick response to the user's feedback.

Compared with waterfall model, prototype model is more in line with people's habit of software development, and is a popular practical software life model at present.

Disadvantages of the Prototype Development:

Need tool support, otherwise the development effort is too much.

Prototyping cannot be used to solve complex systems and develop large systems.

The requirement of user management level is high.

Considering that this is a small project with a clear deadline, we adopted the Prototype Development + Waterfall Model.

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

Sprint 1 : Analysis and Design（3.18-4.8）

这次冲刺，我们通过多种途径进行需求分析，并根据目标用户的反馈来确定是否要添加某一项新功能，leader对需求进行评审，确保需求的合理性和重要程度，将需求拆分到各个开发人员，通过估时来确定每个人具体完成的任务。

在此阶段我们就产品的概念和设计达成了一致。

阶段成果：

我们分配好了任务；

设置GitHub存储库并熟悉平台；

创建了UI设计原型。

我们将构造的[原型](https://q4r9fc.axshare.com/#id=sbwg5b&p=home)展示给用户，获得了第一轮反馈。

| User         | Feedback                                                |                                                     
| --------     | -----:                                                  |
| Miss wang    | 我觉得看太多评论引发我的选择恐惧症，希望可以只看最高赞评论  |
| Anne         | 希望每个步骤都能有图片。                                  |
| Titus        | 希望老虎机能推送多道菜供挑选。                            |
| Mr. Zhang    |我觉得最好匿名使用，我比较注重个人隐私，不想被平台手收集数据. |

Reflections:在第一个sprint中，我们构建出了产品的模型视图，获得了第一轮用户反馈。

2、Sprint 2 : Development -Alpha Version Release（4.9-4.19）

任务拆分和评估完成后，进入开发阶段。

在开发过程中，必要的沟通会议是不可或缺的。如何减少不必要的会议，提高会议的效率是我们一直努力的方向。

我们的会议采用 微软outlook  Calendar 邀约的方式，被邀请者可以根据自己的时间和会议的重要性来选择要不要参加，同时会议的组织者也可以清楚的查看其他人的时间防止安排冲突。

阶段目标：

	根据原型上线一个版本；

	找用户测试并反馈意见。

阶段成果：

发布了Alpha Version。

在该版本中，主页随机推荐每日菜谱，用户也可以根据自己需要个性化推荐，可以对菜谱进行评论。

| User      | Feedback                              |
| --------     | -----:                                  |
| Miss wang  | 手滑点赞能否取消。                    |
| Anne      |匿名可以自己设定吗？系统生成的我记不住。|
| Titus      |我觉得很好。                            |
| Mr. Zhang  |我觉得很好。                            |

Reflections:在这个sprint中，我们发布了第一个版本。

3、Sprint 3 : Development -Beta Version Release（4.19-4.28）

阶段目标：

	根据sprint2得到的用户反馈改进我们的产品；

	找用户测试并反馈意见。

阶段成果：

发布了Beta Version。

在该版本中，增加了点赞和取消点赞的功能。

| User      | Feedback     |
| --------     | -----:         |
| Miss wang  |我觉得很好。 |
| Anne      |我觉得很好。 |
| Titus      |我觉得很好。 |
| Mr. Zhang  |我觉得很好。 |

Reflections:在这个sprint中，我们发布了第二个版本。


4、Sprint 4 : Test and Feedback（4.29-5.7）

项目质量也是在开发过程中不可忽视的一环。

我们规定主要项目的代码提交前必须做 Code Review，并要求代码作者在每次提交之前都应该自己过一遍代码，走一遍功能测试，确保基本的功能是完整的。

进入测试阶段前，我们添加了 Show Case 环节。

其实 Show Case 就是产品在工程师提交给 QA 之前组织开发人员、设计师、测试人员简单过一遍功能点，发现逻辑上比较明显的一些问题交给开发人员再次修改，以及确保整体流程不会被严重的 Bug Block 住。

团队内部测试完毕后，会使用内部自动化发布工具发给用户升级，在一周内进行内测和灰度两次测试。我们自己作为内测用户。

在开发过程中也难免会遇到线上的一些事故，比如服务器冗机、客户端出现严重质量问题等等，记录这些事件发生的原因、经过、结果以及对于整个事件的反思和总结，只有这样才能不断提升我们的能力，让团队在反思中成长。

5、Sprint 5 : Documentation（5.7-5.13）

迭代总结与复盘

最后是整个迭代末期的总结和复盘。项目上线后，我们组织了一场线上会议，邀请了一些用户参加。

将产品、技术功能点进行展示，根据他们的反馈进行分析和总结，验证之前的需求是否达到想要的目的。

在最后阶段，此最终冲刺的目标是完成文档，为了展示我们的系统如何协同工作以及如何使用它们，我们拍摄了我们产品的简短演示视频。

## Team use of Git

We used Maven+Git to build continuous integration and automated deployment.

    1. Maven for project management;
    2.  Git for code management;
    3. Springboot+Mybatis build program framework;
    4. MySQL for data storage;
