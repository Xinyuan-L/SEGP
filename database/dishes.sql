/*
 Navicat MySQL Data Transfer

 Source Server         : newrecipe
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : mysql

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 04/05/2021 13:44:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP DATABASE IF EXISTS `sinocook2`;
CREATE DATABASE `sinocook2`;
-- ----------------------------
-- Table structure for dishes
-- ----------------------------

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes`  (
  `Did` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Dname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Dvegan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Dtaste` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Dtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Main` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Others` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Dlikes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Dviews` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Ddescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Daddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Did`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES ('1', 'Purple cabbage yogurt salad', '1', '1', '5', 'purple cabadge, cucumber, yogurt, egg\n\nsirloin steak, ', 'white vinegar, salt\n\nlow-sodium soy sauce, 	\n\npacked brown sugar, 	\n\ncornstarch, Kosher salt, black pepper', '1', '2', 'It is a traditional chinese food!', 'assets/picture/Did1/cover.jpg');
INSERT INTO `dishes` VALUES ('10', 'Braised pork with gluten', '0', '1', '60', 'streaky pork, gluten', 'sugar, dark soy sauce, tsaoko, lace, bay leaf, anise, MSG', '1', '11', 'It is a traditional chinese food!', 'assets/picture/Did10/cover.jpg');
INSERT INTO `dishes` VALUES ('11', 'Marinated quail eggs', '0', '2', '60', 'quail eggs', 'sugar, dark soy sauce, tsaoko, lace, bay leaf, anise, MSG', '1', '12', 'It is a traditional chinese food!', 'assets/picture/Did11/cover.jpg');
INSERT INTO `dishes` VALUES ('12', 'Gold chicken fillet', '0', '6', '30', 'chicken fillet', 'bread crumbs, eggs, glutinous rice flour', '1', '13', 'It is a traditional chinese food!', 'assets/picture/Did12/cover.jpg');
INSERT INTO `dishes` VALUES ('13', 'Fried chicken thighs', '0', '2', '15', 'chicken thighs', 'flour, white pepper powder, peppered salt, salt, wine, ginger', '1', '14', 'It is a traditional chinese food!', 'assets/picture/Did13/cover.jpg');
INSERT INTO `dishes` VALUES ('14', 'Stir-fried spinach', '1', '2', '5', 'spinach', 'salt, oil, dried chilli, garlic', '1', '15', 'It is a traditional chinese food!', 'assets/picture/Did14/cover.jpg');
INSERT INTO `dishes` VALUES ('15', 'Stir-fried cabbage', '1', '2', '5', 'cabbage', 'salt, oil, dried chilli, garlic', '1', '16', 'It is a traditional chinese food!', 'assets/picture/Did15/cover.jpg');
INSERT INTO `dishes` VALUES ('16', 'Deeply fried squid', '0', '4', '5', 'squid, red chilli, green onion', 'garlic, light soy sauce, salt, wine, oil', '1', '17', 'It is a traditional chinese food!', 'assets/picture/Did16/cover.jpg');
INSERT INTO `dishes` VALUES ('17', 'Stewed baby cabbage', '0', '7', '40', 'baby cabbage, ham', 'chicken grease, shallot', '1', '18', 'It is a traditional chinese food!', 'assets/picture/Did17/cover.jpg');
INSERT INTO `dishes` VALUES ('18', 'Fried brussel mustard', '0', '2', '5', 'brussel mustard, bacon, garlic', 'salt, soy sauce', '1', '19', 'It is a traditional chinese food!', 'assets/picture/Did18/cover.jpg');
INSERT INTO `dishes` VALUES ('19', 'Vegetable soup', '1', '7', '30', 'flour, eggs, tomato, scallion, spinach', 'chicken essense, salt', '1', '20', 'It is a traditional chinese food!', 'assets/picture/Did19/cover.jpg');
INSERT INTO `dishes` VALUES ('2', 'Dry-fry green beans', '1', '2', '30', 'green beans, minced pork, scallion, ginger, garlic, dried chilli, pepper', 'Teriyaki sauce, Rattan chilli oil, wine', '1', '3', 'It is a traditional chinese food!', 'assets/picture/Did2/cover.jpg');
INSERT INTO `dishes` VALUES ('20', 'Pannbiff', '0', '2', '15', 'beef, green onion', 'satay sauce, fresh dew seasoning, cornstartch, oil', '1', '21', 'It is a traditional chinese food!', 'assets/picture/Did20/cover.jpg');
INSERT INTO `dishes` VALUES ('21', 'Steamed pork with black bean', '0', '2', '60', 'streaky pork', 'black bean sauce, minced garlic, chilli, ginger, dark soy sauce, salt', '1', '22', 'It is a traditional chinese food!', 'assets/picture/Did21/cover.jpg');
INSERT INTO `dishes` VALUES ('22', 'Goulash', '0', '2', '120', 'beef, carrot, celery', 'ginger, anise, cinnamon, soy sauce, curry', '1', '23', 'It is a traditional chinese food!', 'assets/picture/Did22/cover.jpg');
INSERT INTO `dishes` VALUES ('23', 'Fried broccoli with ham', '0', '2', '15', 'broccoli, ham', 'salt, soy sauce, ginger, scallion, chilli', '1', '24', 'It is a traditional chinese food!', 'assets/picture/Did23/cover.jpg');
INSERT INTO `dishes` VALUES ('24', 'Roasted eggs with avacadoes', '0', '1', '15', 'eggs, avacadoes, cheese', 'salt, sesame', '1', '25', 'It is a traditional chinese food!', 'assets/picture/Did24/cover.jpg');
INSERT INTO `dishes` VALUES ('25', 'Spinach agaric salad', '1', '2', '3', 'spinach, agaric, carrot', 'salt, vinegar, soy sauce, garlic, chilli', '1', '26', 'It is a traditional chinese food!', 'assets/picture/Did25/cover.jpg');
INSERT INTO `dishes` VALUES ('26', 'Sauteed cashews with peas', '0', '7', '5', 'peas, cashews, fungus, carrots', 'oil, salt, soy sauce, suger, MSG', '1', '27', 'It is a traditional chinese food!', 'assets/picture/Did26/cover.jpg');
INSERT INTO `dishes` VALUES ('27', 'Milk-flavored corn', '1', '1', '5', 'sweet corn', 'condensed milk', '1', '28', 'It is a traditional chinese food!', 'assets/picture/Did27/cover.jpg');
INSERT INTO `dishes` VALUES ('28', 'Marinated pork ribs', '0', '2', '15', 'pork ribs, garlic, ginger', 'fermented bean curd, wine, vinegar, surgar, light soy sauce', '1', '29', 'It is a traditional chinese food!', 'assets/picture/Did28/cover.jpg');
INSERT INTO `dishes` VALUES ('29', 'Steamed okra', '1', '4', '10', 'okra ', 'garlic, chilli, light soy sauce, salt black beans, sugar', '1', '30', 'It is a traditional chinese food!', 'assets/picture/Did29/cover.jpg');
INSERT INTO `dishes` VALUES ('3', 'Fried tofu', '1', '3', '30', 'garlic, mushroom, onion, tofu', 'chilli, streaky pork, oil', '1', '4', 'It is a traditional chinese food!', 'assets/picture/Did3/cover.jpg');
INSERT INTO `dishes` VALUES ('30', 'Stir-Fried Pork Kidney', '0', '4', '15', 'kidney, garlic bolt, cornstartch, chilli powder', 'Pixian bean paste, soy sauce, green onion, garlic,  ginger, oil, vinegar', '1', '31', 'It is a traditional chinese food!', 'assets/picture/Did30/cover.jpg');
INSERT INTO `dishes` VALUES ('4', 'Mapo tofu', '1', '4', '30', 'tofu, beef', 'Pixian bean paste, soy sauce, green onion, garlic,  ginger, pepper powder, cornstartch', '1', '5', 'It is a traditional chinese food!', 'assets/picture/Did4/cover.jpg');
INSERT INTO `dishes` VALUES ('5', 'Fish-flavoured mushroom', '1', '5', '15', 'mushroom, chilli, carrot, agaric', 'Pixian bean paste, soy sauce, green onion, garlic,  ginger, sugar, cornstartch, oil, vinegar', '1', '6', 'It is a traditional chinese food!', 'assets/picture/Did5/cover.jpg');
INSERT INTO `dishes` VALUES ('6', 'Sliced fried cucumber', '1', '4', '25', 'cucumber', 'garlic, dried chilli, oil, salt, Pixian bean paste', '1', '7', 'It is a traditional chinese food!', 'assets/picture/Did6/cover.jpg');
INSERT INTO `dishes` VALUES ('7', 'Fried potatoes with tomatoes', '1', '5', '15', 'tomatoes, patatoes', 'salt, oil', '1', '8', 'It is a traditional chinese food!', 'assets/picture/Did7/cover.jpg');
INSERT INTO `dishes` VALUES ('8', 'Sliced fried potatoes', '1', '4', '25', 'potatoes, hotpot seasoning', 'green onion, red chilli, dried chilli, garlic', '1', '9', 'It is a traditional chinese food!', 'assets/picture/Did8/cover.jpg');
INSERT INTO `dishes` VALUES ('9', 'Fried instant noodles', '1', '2', '5', 'instant noodles, lettuce, beaten eggs', 'salt,oil, cumin powder, dark soy sauce, green peppers,  ham sausages', '1', '10', 'It is a traditional chinese food!', 'assets/picture/Did9/cover.jpg');

SET FOREIGN_KEY_CHECKS = 1;
