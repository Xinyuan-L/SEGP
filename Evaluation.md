
## Contents

* [**Details of how we evaluated our designs**](#details-of-how-we-evaluated-our-designs)
* [**Unit testing / Functional testing**](#Unit-testing-\/-Functional-testing)
* [**User acceptance testing**](#user-acceptance-testing)

## Details of how we evaluated our designs
软件测试可确保所提供的软件符合预期的功能要求，或者该软件的实际输出功能与预期的功能之间是否存在差异，并且该软件是否满足功能性，容错性和稳定性的要求。一般来说，意外的功能，隐藏的错误和软件缺陷是从用户的角度进行测试的。从开发人员的角度来看，我们希望开发的软件没有错误，并且可以处理异常，成为成熟，可靠，高质量的“艺术品”，使开发的软件可以满足客户要求，且易于使用，以提高用户使用软件的信心。

为了在软件的整个生命周期中满足日益增加的软件质量要求，我们利用软件工程化的方法，通过制度来规范软件研发中设计、编码、测试和交付等流程，通过流程来约束整个软件生命周期中的各个环节，其中我们通过增加软件测试的介入强度，增加对软件的评估力度，从而从根本上逐步提高软件质量。
首先，我们通过规范软件研发的各个环节及其衔接来提高软件的质量。从客户的实际需求，转换成软件的具体需求并形成文档，再将软件的需求进行细化、分解，形成软件设计文档，包括概要设计文档和详细设计文档。软件的编码人员则依据设计文档进行软件的编码。上述活动的每一个步骤所形成的文档或文件，都必须经过评审并纳入配置管理。
然后，在软件研发的各个环节中增加软件测试的介入强度，从软件的需求分析和设计文档形成后，软件测试人员就介入研发过程，通过对需求分析和设计文档的评审，评估其可行性和合理性，未通过评审的环节则无法进入下一步环节。
而在具体的测试环节上，通过不同的维度对完成编码的软件进行测试，例如：针对具体函数进行单元级测试；针对函数之间的调用关系进行部件级测试（集成测试）；针对独立的软件进行配置项级测试；对于多个软件所形成的系统进行系统级测试。根据软件的具体情况，选择不同的测试策略，进行不同级别的测试。
具体的测试过程是：测试人员依据软件的设计文档，编写测试计划和测试说明，形成测试用例集，针对文档要求的软件功能、性能、接口、余量和安全性等指标执行测试用例集中所有的用例，记录每一个用例的执行结果并和预期结果进行对比分析，评估其是否满足设计的要求，对测试中发现的问题进行分类统计，最终形成测试报告。报告中含有软件问题的分类和具体描述、软件的千行 BUG 密度统计、软件问题的重要度等级分类统计，这些数据将为软件质量的评估和持续改进提供重要的数据支撑。
通过不断的积累，我们还定期对在软件测试中发现的问题进行分析和总结，并发布软件质量的评估报告，将一段时期内搜集的所有软件问题进行不同角度的分类统计，例如文档问题和程序问题的对比分析，重要问题和一般问题的对比分析，软件的千行 BUG 密度的对比分析，这些对比分析的数据有助于软件的设计人员和编码人员逐步提高其业务水平，从而提高软件质量。

## Unit testing / Functional testing
### Overview
首先要知道，代码的终极目标有两个，第一个是实现需求，第二个是提高代码质量和可维护性。
单元测试是为了提高代码质量和可维护性，是实现代码的第二个目标的一种方法。
单元测试对框架的设计要求非常高，数据与代码与界面要尽可能分离，还涉及到接口定义，输出与输出预期，代码覆盖度等要素。我们作为新手来说，肯定无法将我们的代码进行更为系统地规划。作为前端开发者，我们只能尽可能尝试完成更多的单元测试来最大程度的发挥单元测试的效益。同时不得不说的是，单元测试对我们逆向优化代码起到了很大的作用。
First of all, we must know that there are two ultimate goals of code. The first is to achieve requirements, and the second is to improve code quality and maintainability.
Unit testing is to improve code quality and maintainability, and is a way to achieve the second goal of the code.
Unit testing has very high requirements for the design of the framework. Data and code should be separated as much as possible from the interface. It also involves interface definition, output and output expectations, code coverage and other elements. As a novice, we certainly cannot plan our code more systematically. We can only try to complete as many unit tests as possible to maximize the benefits of unit testing. At the same time, I have to say that unit testing has played a big role in our reverse optimization of the code.
### Front end
#### Toolbar and footer test
+ 我们测试了顶部工具栏的logo跳转功能，以及home，customize，about的跳转功能。
+ 我们测试了footer中home和about的跳转功能。

1. We have tested the **logo** jump function of the top toolbar, and the jump functison of **Home**, **Customize**, and **About**.
2. We have tested the jump function of **Home** and **About** in footer.
#### Home page test
+ 我们测试了首页顶部"CUSTOMIZE"按钮和"THAT IS IT!!"按钮的跳转功能。
+ 我们测试了"THE MOST POPULAR DISHES"中三个被展示dish的点击跳转功能。
+ 我们测试了"Top Comments"中被展示的comment的点击跳转功能。

1. We have tested the jump function of the **"CUSTOMIZE" button** and the **"THAT IS IT!!" button** at the top of the homepage.
2. We have tested the click and jump function of the three **displayed dishes** in **"THE MOST POPULAR DISHES"**.
3. We have tested the click-to-jump function of the **comment** displayed in **"Top Comments"**.
#### Customize page test
+ 我们测试了页面中问卷样式展示是否完整。
+ 我们测试了问题1，问题2，问题3以及问题4的选项是否是单选模式，以及我们是否成功获得了数据。
+ 我们测试了当问题1选择"Yes"选项时问题2会被隐藏的功能。
+ 我们测试了页面底部"Customize"按钮的提交以及跳转功能。
+ 我们测试了如果问卷填写不完整，在点击页面底部"Customize"按钮会跳出提示的功能。

1. We have tested whether the **survey style display** on the page is complete.
2. We have tested whether the options in *question 1*, *question 2*, *question 3* and *question 4* are in **single-select mode**, and whether we have successfully obtained the **data**.
3. We have tested the function that *question 2* will be **hidden** when *question 1* selects the **"Yes" option**.
4. We have tested the **submit and jump functions** of the **"Customize" button** at the bottom of the page.
5. We have tested that if the survey is not completely filled out, the **prompt** would pop up after clicking **the "Customize" button** at the bottom of the page.
#### Slotmachine page test
+ 我们测试了老虎机样式是否展示完整。
+ 我们测试了当按动"Play"按钮时，老虎机是否会按照预期运行。
+ 我们测试了当按动摇杆是，老虎机是否会按照预期运行。
+ 我们测试了在老虎机运行过程中，按钮及摇杆是否切换成了无法点击的样式，以防止用户连续进行点击。
+ 我们测试了在老虎机运行结束后,是否会有全屏阴影遮罩以及弹窗出现。
+ 我们测试了点击阴影遮罩，弹窗及遮罩消失的功能。
+ 我们测试了弹窗演示展示是否完整。
+ 我们测试了弹窗左边"Try again"按钮的点击后弹窗及遮罩消失的功能。
+ 我们测试了弹窗右边"Get this dish"按钮的点击后跳转及传输数据的功能。

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
+ 我们测试了页面加载是否完整。
+ 我们测试了页面左侧点击图标收藏dish，再次点击取消收藏的功能。
+ 我们测试了页面底部文本框获得匿名和评论的功能。
+ 我们测试了点击"Submit"按钮后是否成功提交数据。
+ 我们测试了被展示评论的点赞功能，点击图标点赞，再次点击取消赞。

1. We have tested whether the page load is **complete**.
2. We have tested the function of *clicking the heart icon*, which is on the left side of the page, to **favorite dish** and then clicking again to cancel the favorite.
3. We have tested the function of **inputting nickname and comments** in the text box at the bottom of the page.
4. We have tested whether the data is successfully **submitted** after *clicking the "Submit" button*.
5. We have tested the **like function** of **the displayed comment**.
#### Service test
## User acceptance testing
