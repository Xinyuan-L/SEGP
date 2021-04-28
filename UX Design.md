## Contents

* [**Design Process and Early prototyping and ideation**](#design-process-and-early-prototyping-and-ideation)
* [**Interacting users and broader stakeholders**](#interacting-users-and-broader-stakeholders)
* [**UX approach**](#ux-approach)
* [**Understanding of user group**](#understanding-of-user-group)
* [**Additional elements and components**](#additional-elements-and-components)
* [**Wireframes and interaction flow diagrams for final key subsystems**](#wireframes-and-interaction-flow-diagrams-for-final-key-subsystems)

## Design Process and Early prototyping and ideation

最初我们提出了很多有趣的设想，resturant recommend、university selection recommend、how to cook chinese food、stock prediction等等，最终选定了菜谱推荐网站。
我们首先通过头脑风暴初步确定了功能。

![image](https://user-images.githubusercontent.com/45390078/115632326-5f0d4f00-a2ff-11eb-84d9-de662149768b.png)

1.菜谱分类
根据菜谱的类型进行分类，方便用户查找，例如：肉类、鱼类、蔬菜、菜式、菜系、特色等等，让用户可以轻松依据分类找到自己想做的任何菜。

2.菜谱搜索
菜谱搜索的功能，支持模糊搜索，这样更加方便用户查找菜谱，让用户一键查找到自己想做的菜谱。

3.菜品教程
提供各种菜品的教程，文字和图片结合，并列出需要的主料、辅料，步骤，口味等，帮助用户很快学会做菜。

4.菜谱圈子
大家可以在这里发布自己做的菜肴，也可以发布自己在外面的特色小吃等，提高用户活跃度。

5.上传菜谱
用户注册以后实名上传自己设计的菜谱。

考虑到网站可以推荐菜谱，所以我们最终删除了菜谱分类和搜索功能，这会使得用户难以抉择今日食谱。
考虑到隐私问题，我们删除了注册登录和社交功能，改成了匿名分享。
确定了主要功能后，我们使用[axure](https://q4r9fc.axshare.com/)构建了网站的原型。

![image](https://user-images.githubusercontent.com/45390078/115631402-a72b7200-a2fd-11eb-8145-11205ec7db40.png)

主logo设计釆用具有中国特色的美食相关元素“碗”、“筷”，结合英文字母进行图形创意，组合成一个具有一定幽默、趣味成分的图形。
餐具在这里点明美食主题，在视觉表现上，遵循视觉潮流，釆用立体扁平化处理，符合目标用户人群的审美特征、追求新鲜有趣的事物，引领潮流的心理特点。

## Interacting users and broader stakeholders

在进行功能分析过程中，我们首先初步确定了我们的用户主体是英语语言环境的中国留学生及对中国美食文化感兴趣的外国人。

为了进一步分析，我们对haodou这个菜谱网站进行了调研。

1.haodou网站用户数据分析

从haodou网站的用户性别上可以看出：用户类型主要为女性，占比达到63.73%。

在传统观念及习惯的影响下，大多中国家庭中，仍是女性下厨为主。女性相较男性更为细致、更加关注生活细节的特点也决定了菜谱网站的主流用户会是女性。

随着经济的发展，也有越来越多的男性不再“远庖厨”，注重饮食品质、享受烹饪过程的男性也占据了好豆用户的36.27%。

![image](https://user-images.githubusercontent.com/45390078/116471365-7b177000-a86c-11eb-9da2-9124fea2ddb4.png)

从haodou的年龄层来看，用户年龄主要分布在25-40岁之间，占比达到83.76%。在此年龄区间的用户拥有家庭及子女，工作基本稳定，在观念上更倾向于经济健康的饮食，并且厨房设备完善，追求下厨体验，愿意钻研厨艺，因而使用产品的比例较高。

在25岁以下的用户基本是95后，大多为学生或刚步入社会群体，在校学生由于学校的烹饪条件不足，或烹饪技巧不足基本上不会自己动手做菜。刚步入社会的群体大多租房或与父母同住，做菜所需的条件不足以及没必要做饭，主要通过外卖、食堂、餐馆以及父母做饭来解决用餐。

在40岁以上用户由于对APP具有一定的学习成本，不太适应边看APP内容边做菜而且也有自己的烹饪经验，不太需要通过美食类软件来提升厨艺，故而用户占比最少。

![image](https://user-images.githubusercontent.com/45390078/116472898-663bdc00-a86e-11eb-9607-93f280b44294.png)

从好豆的用户使用地域分布来看，东部和南部沿海城市以及中部地区使用占比较高。在中国，这部分城市经济水平较为发达，人们的生活水平较高，比较追求生活质量。

![image](https://user-images.githubusercontent.com/45390078/116476969-e3b61b00-a873-11eb-976e-6124f200f7db.png)

2.留学生群体数据分析

考虑到我们的用户主体是英语语言环境的中国留学生及对中国美食文化感兴趣的外国人，我们又对留学生群体的年龄和户籍所在地进行调研。

![image](https://user-images.githubusercontent.com/45390078/116475608-fdeef980-a871-11eb-9324-cc7c75bf54c6.png)

根据《2020中国留学生白皮书》，我们得到结论，目前出国留学的主力人群年龄分布于18-28岁，来自于北上广深、江浙等经济发达的地区。

根据以上数据，我们进一步细化了用户群体。据此，我们打算数据库中存储的菜谱更多迎合北上广深、江浙地区18-28岁学生群体的口味。

## UX approach

我们对30名布里斯托大学在读学生进行了[问卷调查](https://www.surveymonkey.co.uk/r/VFX5QBK)。
调查和问卷调查可以让研究人员获得更多的反馈，这可以为更详细的分析提供基础。这种类型的研究成本相对较低。这种方法的缺点是与受访者没有直接的互动，因此不可能更深入地探究他们提出的答案。
调查结果如下：

![image](https://user-images.githubusercontent.com/45390078/115630985-e2797100-a2fc-11eb-9a69-b6a10efdfcf5.png)
![image](https://user-images.githubusercontent.com/45390078/115631034-f6bd6e00-a2fc-11eb-9069-188df2e098c1.png)
![image](https://user-images.githubusercontent.com/45390078/116477290-50c9b080-a874-11eb-87d5-55d2b4363626.png)
![image](https://user-images.githubusercontent.com/45390078/116477388-722a9c80-a874-11eb-8450-6665687e27bf.png)
![image](https://user-images.githubusercontent.com/45390078/116477878-21677380-a875-11eb-978e-4ae333263e5f.png)

为了对问卷调查进行补充，我们选择其中四名有代表性的用户进行访谈调研。
这确保我们的产品以用户为中心，并定义了测试用例和需求，这些需求是我们系统开发的基础。

## Understanding of user group

用户A：
王女士，23岁，布里斯托大学中国留学生，有宗教信仰，不吃猪肉。王女士平时比较喜欢健身，比较注重身材，周末经常会自己做减肥热量比较低的菜。当谈到为什么不需要登录功能，王女士表示，每次都要登录，这会很麻烦。

![image](https://user-images.githubusercontent.com/45390078/115634131-e27b7000-a300-11eb-9431-5f8fcbce83bf.png)

用户B：
Anne，24岁，对中国美食感兴趣的美国人，喜欢分享自己做好的美食到食谱网站上。Anne也不需要登录功能，她希望能通过匿名分享自己做好的美食到食谱网站上获得关注。

![image](https://user-images.githubusercontent.com/45390078/115632779-61bc7400-a300-11eb-947d-8981376a9d44.png)

用户C：
Titus，24岁，英国籍华裔，非常喜欢中国菜，但有“选择困难症”，永远不知道今天吃什么。考虑到隐私问题，Titus也表示不需要登录功能。

 ![image](https://user-images.githubusercontent.com/45390078/115634098-d2fc2700-a300-11eb-8856-429fab4c3551.png)

用户D：
张先生，24岁，布里斯托大学中国留学生，由于过度肥胖，有脂肪肝趋势，医生建议多吃蔬菜，少吃肉。当谈到为什么不需要登录功能，张先生表示，他不希望被网站收集数据，这会个人隐私。

![image](https://user-images.githubusercontent.com/45390078/115632397-87954900-a2ff-11eb-9045-d9a9bf23996d.png)

## Wireframes and interaction flow diagrams for final key subsystems

根据用户提出的需求点，我们确定了网站的主要功能，并设计出网站[原型](https://q4r9fc.axshare.com/)。

1.展示中式烹饪步骤；
2.匿名评论中式食谱；
3.能够根据用户需求推荐中式菜肴；
4.老虎机选择了用户对当今中国菜的最终推荐。

![image](https://user-images.githubusercontent.com/45390078/115633614-b2cc6800-a300-11eb-865c-b0ada78a8bf6.png)
