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

 Date: 04/05/2021 13:45:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `Cid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Did` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Cnickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Ctime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Clikes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Cdetail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', 'test1', '16848522562514', '12', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('10', '1', 'test10', '16848522562523', '21', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('11', '1', 'test11', '16848522562524', '22', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('12', '1', 'test12', '16848522562525', '23', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('13', '1', 'test13', '16848522562526', '24', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('14', '1', 'test14', '16848522562527', '25', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('15', '1', 'test15', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('16', '2', 'test16', '16848522562514', '12', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('17', '2', 'test17', '16848522562515', '13', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('18', '2', 'test18', '16848522562516', '14', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('19', '2', 'test19', '16848522562517', '15', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('2', '1', 'test2', '16848522562515', '13', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('20', '2', 'test20', '16848522562518', '16', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('21', '2', 'test21', '16848522562519', '17', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('22', '2', 'test22', '16848522562520', '18', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('23', '2', 'test23', '16848522562521', '19', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('24', '2', 'test24', '16848522562522', '20', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('25', '2', 'test25', '16848522562523', '21', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('26', '2', 'test26', '16848522562524', '22', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('27', '2', 'test27', '16848522562525', '23', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('28', '2', 'test28', '16848522562526', '24', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('29', '2', 'test29', '16848522562527', '25', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('3', '1', 'test3', '16848522562516', '14', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('30', '2', 'test30', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('31', '3', 'test31', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('32', '4', 'test32', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('33', '5', 'test33', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('34', '6', 'test34', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('35', '7', 'test35', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('36', '8', 'test36', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('37', '9', 'test37', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('38', '10', 'test38', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('39', '11', 'test39', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('4', '1', 'test4', '16848522562517', '15', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('40', '12', 'test40', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('41', '13', 'test41', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('42', '14', 'test42', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('43', '15', 'test43', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('44', '16', 'test44', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('45', '17', 'test45', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('46', '18', 'test46', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('47', '19', 'test47', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('48', '20', 'test48', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('49', '21', 'test49', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('5', '1', 'test5', '16848522562518', '16', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('50', '22', 'test50', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('51', '23', 'test51', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('52', '24', 'test52', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('53', '25', 'test53', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('54', '26', 'test54', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('55', '27', 'test55', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('56', '28', 'test56', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('57', '29', 'test57', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('58', '30', 'test58', '16848522562528', '26', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('6', '1', 'test6', '16848522562519', '17', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('7', '1', 'test7', '16848522562520', '18', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('8', '1', 'test8', '16848522562521', '19', 'I really love this meal !!');
INSERT INTO `comments` VALUES ('9', '1', 'test9', '16848522562522', '20', 'I really love this meal !!');

SET FOREIGN_KEY_CHECKS = 1;
