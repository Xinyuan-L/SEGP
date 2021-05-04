/*
 Navicat Premium Data Transfer

 Source Server         : 172.17.0.10
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : sh-cynosdbmysql-grp-r3zqz3ck.sql.tencentcdb.com:29922
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 19/04/2021 22:48:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for SinoCook
-- ----------------------------
DROP TABLE IF EXISTS `SinoCook`;
CREATE TABLE `SinoCook`  (
  `Did` int(11) DEFAULT NULL,
  `Dishes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Vegan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Taste` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Main` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Step1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Step2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Step3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Step4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Step5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Step6` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SinoCook
-- ----------------------------
INSERT INTO `SinoCook` VALUES (1, 'Purple cabbage yogurt salad', 'yes', 'Sour & Sweet', '5 mins', 'purple cabadge, cucumber, yogurt, egg\n\nsirloin steak, ', 'white vinegar, salt\n\nlow-sodium soy sauce, 	\n\npacked brown sugar, 	\n\ncornstarch, Kosher salt, black pepper', 'Rinse the purple cabbage and shred it.', 'Add salt and white vinegar, mix well and leave to marinate for a few minutes.', 'Peel the shell of the hard-boiled egg and cut into small pieces.', 'Rinse cucumber and slice it.', 'Place cucumber slices and eggs on the purple cabbage and add yogurt', 'Mix them and eat it.', NULL);
INSERT INTO `SinoCook` VALUES (2, 'Dry-fry green beans', 'yes', 'Salty', '30 mins', 'green beans, minced pork, scallion, ginger, garlic, dried chilli, pepper', 'Teriyaki sauce, Rattan chilli oil, wine', 'Prepare all of the main and other ingredients.', 'French beans pinch, remove bean tendons, break the growth section;\nFinely chop the meat filling, mince the onion, ginger and garlic, and cut the dried pepper into pieces', 'Put the oil in a cold wok, bring to a low heat and stir fry the green beans slowly until the surface of the green beans is wrinkled.', 'Heat up the oil in a wok over a medium heat and stir fry the scallions and ginger. Add the minced meat and stir-fry until slightly browned. Add Sichuan peppercorns, dried chilies and cooking wine', 'Add green beans, teriyaki sauce and chili oil. Stir fry over high heat until all ingredients are colored. Remove from heat and remove from pan', NULL, NULL);
INSERT INTO `SinoCook` VALUES (3, 'Fried tofu', 'yes', 'Tender', '30 mins', 'garlic, mushroom, onion, tofu', 'chilli, streaky pork, oil', 'Prepare sliced garlic, sliced shiitake mushrooms, diced onion, diced green pepper, diced red pepper.', 'Slice the pork belly and the beancurd. Put the cooking oil in the pot and add the beancurd.', 'Fry them over low heat until golden brown on both sides. Add in the cooking oil, garlic slices, pork belly and stir-fry until they turn brown.', 'Add tofu, light soy sauce, salt and sugar, and stir well', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (4, 'Mapo tofu', 'yes', 'Spicy', '30 mins', 'tofu, beef', 'Pixian bean paste, soy sauce, green onion, garlic,  ginger, pepper powder, cornstartch', 'Mince the beef, ginger, garlic, onion and Pixian bean paste, then add the cornstarch into water and stir well. Cut tofu into small pieces.', 'Add water and salt to a pot and bring to a boil. Pour in cubes of tender bean curd. Once the water is boiling again, take out the tofu and cool it.', 'Add oil in a wok and turn to low heat. When the temperature of oil is about 150℃, add in minced beef and stir fry', 'Put in Pixian broad bean paste, garlic, ginger and fry together', 'When the soup turns red, add tofu, light soy sauce and scallion and simmer for 2 minutes, then add more boiling water and cover with a lid and simmer for about 10 minutes.', 'Add chicken powder, pepper, cornstarch and scallion and stir for 30 seconds.', NULL);
INSERT INTO `SinoCook` VALUES (5, 'Fish-flavoured mushroom', 'yes', 'Sour', '15 mins', 'mushroom, chilli, carrot, agaric', 'Pixian bean paste, soy sauce, green onion, garlic,  ginger, sugar, cornstartch, oil, vinegar', 'Prepare and wash 250g mushroom,  50g carrot and 50g agaric.', 'Add water and mushroom into a boiler and boil for 5 minutes, then fly the mushroom out.', 'Shred carrot, pepper, agaric and tear Pleurotus erinus into strips. Add green onion, ginger and garlic, sugar, vinegar, starch, water and soy sauce in a bowl. Mix well', 'Add hot oil and Pixian bean paste to the wok and stir fry for 1 minute.', 'Add mushroom and stir fry well.', 'Add shredded chilli, shredded carrot and agaric and stir-fry well', NULL);
INSERT INTO `SinoCook` VALUES (6, 'Sliced fried cucumber', 'yes', 'Spicy', '25 mins', 'cucumber', 'garlic, dried chilli, oil, salt, Pixian bean paste', 'Wash and cut 300g cucumber into slices.', 'Put the slices into a small bowl, add 3g salt and wait for 20 minutes.', 'Cut garlic and dried chilli into slices ', 'Add a little oil and 25g Pixian bean paste into pan and stir fry them for 1 minute.', 'Add dried chilli, sliced cucumbers and sliced garlic into the pan and stir fry for 1 minute. ', 'Add 1/2 teaspoons of sugar into the pan and stir for 15 seconds.', NULL);
INSERT INTO `SinoCook` VALUES (7, 'Fried potatoes with tomatoes', 'yes', 'Sour', '15 mins', 'tomatoes, patatoes', 'salt, oil', 'Cut 100g potatoes into slices and cut 2 tamatoes into chunks.', 'Add 20g oil and sliced potatoes into a pan and stir fry for 2 minutes.', 'Add the prepared tomatoes into the pan and stir fry for 2 minutes', 'Add 4g salt and stir fry for 15 seconds.', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (8, 'Sliced fried potatoes', 'yes', 'Spicy', '25 mins', 'potatoes, hotpot seasoning', 'green onion, red chilli, dried chilli, garlic', 'Cut 100g potatoes into slices and put them into cold water, then wait for 5 minutes.', 'Add hot oil, 2g green onions, 2g sliced garlic, 1g red chilli into a pan and stir fry them for 30 seconds.', 'Add 25g hotpot seasonings into the pan and stir fry for 15 seconds.', 'Add 150g sliced potatoes for 1 minute.', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (9, 'Fried instant noodles', 'yes', 'Salty', '5 mins', 'instant noodles, lettuce, beaten eggs', 'salt,oil, cumin powder, dark soy sauce, green peppers,  ham sausages', 'Add a bag of instant noodles into boiled water and hold up for 1 minute.', 'Pour the water out of the pan, add 15g oil into the pan and heat the oil to 150 degrees Celsius, then add 50g beaten eggs into this pan, stir fry it well.', 'Add 15g shredded green peppers, 15g shredded sausages and instant noodles, then stir fry for 1 minute', 'Add 1 teaspoon of salt, 3g dark soy sauce and 25g lettuce, then stir fry for 2 minutes.', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (10, 'Braised pork with gluten', 'no', 'Sweet', '60 mins', 'streaky pork, gluten', 'sugar, dark soy sauce, tsaoko, lace, bay leaf, anise, MSG', 'Prepare and wash 2g tsaoko, 5g lace, 3g bay leaf, 1g anise, then dry them.', 'Cut 500g streaky pork into chunks.', 'Cut 150g gluten into stripes.', 'Add oil into a pan and heat it until the tempereture is 150 ℃. Then add 50g sugar and stir fry for 5 minutes and then add the pork and gluten and 1 kg water and boil for 20 minutes. Finally, add the dried spices, 2g dark soy sauce and 2g MSG. ', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (11, 'Marinated quail eggs', 'no', 'Salty', '60 mins', 'quail eggs', 'sugar, dark soy sauce, tsaoko, lace, bay leaf, anise, MSG', 'Put 500g quail eggs into a pan and coddle them. When the quail eggs are cooked, gently crack the eggs.', 'Pour 150g oil into the pan and heat until the tempereture is 150℃.', 'Add 150g sugar into the pan dan stir fry until it converts to brown liquid.', 'Add Sichuan peppercorns, star anise, cinnamon, oyster sauce, salt, dried chilli and dark soy sauce. Add quail eggs. Bring to a boil and then turn to medium heat and simmer for 20 minutes.', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (12, 'Gold chicken fillet', 'no', 'Crispy', '30 mins', 'chicken fillet', 'bread crumbs, eggs, glutinous rice flour', 'Wash 250 grams of chicken breast meat and cut it into strips. Mix well with salt, chicken essence and cornstarch.Then add a spoonful of glutinous rice flour and beat it with an egg.', 'Place the chicken filets on the breadcrumbs and coat evenly with the breadcrumbs.', 'Fry the chicken filets in the pan over a low heat until they turn golden brown and then turn them over.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (13, 'Fried chicken thighs', 'no', 'Salty', '15 mins', 'chicken thighs', 'flour, white pepper powder, peppered salt, salt, wine, ginger', 'Prepare and wash 8 chicken thighs, add 15 grams of cooking wine, 10 grams of ginger, 5 grams of salt and mix well, and then marinate for about 15 minutes.', 'Mix together 250g of flour, 25g of white pepper and a small amount of salt and pepper. Then coat the marinated drumsticks evenly with the mixed powder.', 'Heat the oil in the pan. When the temperature reaches 200 degrees, fry the chicken thighs in the pan. Fry them for 8 minutes on low heat and then take them out.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (14, 'Stir-fried spinach', 'yes', 'Salty', '5 mins', 'spinach', 'salt, oil, dried chilli, garlic', 'Prepare and wash 400g of spinach.', 'Mince 25g of garlic.', 'Put and heat the oil in a wok. When the temperature reaches 200 degrees, add the chopped garlic and dried chilli and fry until fragrant.', 'Add the washed spinach into the wok. And fry for 2 minutes.', 'Add 1 teaspoon of salt and fry for 30 seconds.', NULL, NULL);
INSERT INTO `SinoCook` VALUES (15, 'Stir-fried cabbage', 'yes', 'Salty', '5 mins', 'cabbage', 'salt, oil, dried chilli, garlic', 'Prepare and wash 400g of cabbage.', 'Mince 25g of garlic.', 'Put and heat the oil in a wok. When the temperature reaches 200 degrees, add the chopped garlic and dried chilli and fry until fragrant.', 'Add the washed cabbage into the wok. And fry for 2 minutes.', 'Add 1 teaspoon of salt and fry for 30 seconds.', NULL, NULL);
INSERT INTO `SinoCook` VALUES (16, 'Deeply fried squid', 'no', 'Spicy', '5 mins', 'squid, red chilli, green onion', 'garlic, light soy sauce, salt, wine, oil', 'Prepare and wash 500g of squid. Then cut it into stripes.', 'Cut 15g of red chillis, 15g of garlic and 10g of green onions into mince.', 'Pour and heat 100g of oil in a wok. When the temperature reaches 150 degrees, add the minced garlic, green onions, red chilli and fry for 30 seconds.', 'Add 1 teaspoon of salt, 3g of dark soy sauce, 25g of oyster sauce, 100ml of wine and the squid stripes, then stir fry for 2 minutes.', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (17, 'Stewed baby cabbage', 'no', 'Light', '40 mins', 'baby cabbage, ham', 'chicken grease, shallot', 'Prepare and wash 300g of baby cabbage and remove its root. ', 'Prepare 100g of ham and cut it into long stripes.', 'Put the ham stripes and 5g of chicken grease onto the baby cabbage.', 'Put all the food into a steamer and turn the steamer up to 100℃. Then wait for 30 minutes.', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (18, 'Fried brussel mustard', 'no', 'Salty', '5 mins', 'brussel mustard, bacon, garlic', 'salt, soy sauce', 'Chop 150g of brussel mustard into chunks and cut 50g of bacon and 5g of garlic into slices.', 'Put and heat the oil in a wok. When the temperature reaches 150 degrees, add the chopped garlic and bacon and stir fry for 1 minute.', 'Add sliced brussel mustard,  3g of salt and 2g of soy sauce and stir fry for 2 mminutes.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (19, 'Vegetable soup', 'yes', 'Light', '30 mins', 'flour, eggs, tomato, scallion, spinach', 'chicken essense, salt', 'Dice 1 tomato, cut 50 grams of spinach into segments, slice a small amount of scallions and beat 1 egg. Additionally, add 5g of water into 200g of flour and mix them for 5 minutes.', 'Put and heat 10g of oil in a boiler. When the temperature reaches 150 degrees, add 15g of scallion and diced tomato and stir fry for 1 minute. Then add 500g of water.', 'Heat the food until boiling, then add the prepared flour and mix for 5 minutes.', 'Add the prepared spinach and heat for 5 minutes.', 'Add the beaten egg and 5g of chicken essense, then heat for 5 minutes.', NULL, NULL);
INSERT INTO `SinoCook` VALUES (20, 'Pannbiff', 'no', 'Salty', '15 mins', 'beef, green onion', 'satay sauce, fresh dew seasoning, cornstartch, oil', 'Add 25g of minced green onion, 200g of minced beef, 10g of satay sauce, 5g of cornstartch and 15g of fresh dew seasoning into a bowl, then mix them well.', 'Use the prepared food to make patties with a diameter of 5cm and a thickness of 2cm.', 'Put and heat 10g of oil in a pan. When the temperature reaches 150 degrees, put the patties on the pan and decoct for 2 minutes each side.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (21, 'Steamed pork with black bean', 'no', 'Salty', '60 mins', 'streaky pork', 'black bean sauce, minced garlic, chilli, ginger, dark soy sauce, salt', 'Chop 150g of streaky pork into chunks and cut 2g of chilli and 5g of garlic into slices.', 'Put a proper amount of peanut oil in the pot, add ginger, garlic minced, pepper saute until fragrant, then put in the pork belly stir-fry, add a proper amount of salt and fry evenly, then put in the dark soy sauce, fry until fragrant, then serve on a plate.', 'Place 20 grams of Yangjiang black beans on top of the  streaky pork and steam them in an electric rice cooker for 30 minutes before serving.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (22, 'Goulash', 'no', 'Salty', '120 mins', 'beef, carrot, celery', 'ginger, anise, cinnamon, soy sauce, curry', 'Dice 2kg of beef into chunks and put it in a boiler, pour 2kg of water in the boiler, then heat it until boiling.', 'Slice 5g of garlic, 5g of ginger, 1g of anise and cinnamon, then put them into the boiler. ', 'Cut 50g of celery, 250g of carrots into stripes, then put them into the boiler. ', 'Add water, beef, carrots, seasoning together to boil, and then change to small fire to stew, add curry, stir evenly, 1 hour later add celery stir evenly, stew for half an hour and then add Chinese cabbage stir evenly continue to stew until the beef is tender, the basic soup can be dried.', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (23, 'Fried broccoli with ham', 'no', 'Salty', '15 mins', 'broccoli, ham', 'salt, soy sauce, ginger, scallion, chilli', 'Prepare and wash 500g of broccoli, and boil it for 1 minute, then bring it up.', 'Cut 50g of ham, 10g of chilli, 10g of garlic and 5g of ginger into mince.', 'Turn the temperature of pan to 150 degrees and stir fry the other ingredients for 30 seconds.', 'Put the minced ham into the pan and stir fry for 1 minute. ', 'Add broccoli and 3g of salt into the pan and stir fry for 2 minutes.', NULL, NULL);
INSERT INTO `SinoCook` VALUES (24, 'Roasted eggs with avacadoes', 'no', 'Sweet', '15 mins', 'eggs, avacadoes, cheese', 'salt, sesame', 'Slice an avocado in the middle and put an egg on each side.', 'Add 0.5g of salt, 0.5g of sesame onto the avocadoes.', 'Bake in the preheated oven at 200 degrees. Bake in the middle layer over low heat for about 8 minutes. Then take out the baking tray, sprinkle with 5g of cheese and bake in the oven for another 5 minutes.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (25, 'Spinach agaric salad', 'yes', 'Salty', '3 mins', 'spinach, agaric, carrot', 'salt, vinegar, soy sauce, garlic, chilli', 'Blanch the fungus and spinach respectively, then put cold water into the mixing bowl, and then put the carrots cut into diamond shapes, chopped millet pepper and garlic into the pot.', 'Add 5 grams of soy sauce, 2 grams of vinegar, 2 grams of salt, 1 grams of sesame oil and mix well.', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (26, 'Sauteed cashews with peas', 'no', 'Light', '5 mins', 'peas, cashews, fungus, carrots', 'oil, salt, soy sauce, suger, MSG', 'Prepare and slice the ingridients: 150g of peas, 30g of cashews, 30g of fungus and 30g of carrots.', 'Boil the peas for 2 minutes and then bring them up.', 'Stir fry the cashews for 2 minutes, then add peas, cashews, 1g of salt, 1g of soy sauce, 1g of sugar and stir fry for another 2 minutes.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (27, 'Milk-flavored corn', 'yes', 'Sweet', '5 mins', 'sweet corn', 'condensed milk', 'Prepare 20g of condensed milk and chop 250g of corns into chunks.', 'Brush condensed milk on the outside of each segment of corn.', 'Wrap the corn in plastic wrap with the plate, then punch some holes in the plastic wrap with a toothpick, and put it into the microwave oven on high heat for 5 minutes.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (28, 'Marinated pork ribs', 'no', 'Salty', '15 mins', 'pork ribs, garlic, ginger', 'fermented bean curd, wine, vinegar, surgar, light soy sauce', 'Drain the ribs. Sauteed ginger and garlic slices, ribs in a hot wok, stir fry for 3 minutes.', 'Then put in the beancurd, 1 tablespoon cooking wine, 2 tablespoons vinegar, 3 tablespoons sugar and 4 tablespoons light soy sauce. Stir fry and add a small bowl of water, simmer for about 15 minutes. Put the juice on the plate and sprinkle some chopped green onion.', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (29, 'Steamed okra', 'yes', 'Spicy', '10 mins', 'okra ', 'garlic, chilli, light soy sauce, salt black beans, sugar', 'Rinse 400 grams of okra, remove the head and tail, cut through the middle and place on a plate.', 'Chop 20g of garlic into a bowl. Stir in 1 teaspoon of light soy sauce, 1 teaspoon of sugar, 2 teaspoons of chili bean paste and 2 teaspoons of chopped chilli.', 'Pour the sauce onto the okra.', 'Pour 1kg of water to a boiler and place on a steamer rack, then add okra and steam for 5 minutes.', NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (30, 'Stir-Fried Pork Kidney', 'no', 'Spicy', '15 mins', 'kidney, garlic bolt, cornstartch, chilli powder', 'Pixian bean paste, soy sauce, green onion, garlic,  ginger, oil, vinegar', ' Wash 250 grams of pig kidney, cut them in the middle with a knife, remove the waist, rinse, cut the pig kidney into chunks.', 'Mix the pig kidney with cooking wine, wet starch and salt, and mix the other ingridients, including: 25g of Pixian bean paste, 10g of chili powder, 1g of salt, 1g of sugar, 3g of soy sauce and 1g of vinegar.', 'Put and heat the oil in a wok. When the temperature reaches 200 degrees, add all the ingredients and stir fry for 2 minutes.', NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `SinoCook` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
