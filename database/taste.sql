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

 Date: 04/05/2021 13:44:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for taste
-- ----------------------------
DROP TABLE IF EXISTS `taste`;
CREATE TABLE `taste`  (
  `Taste` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Tid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taste
-- ----------------------------
INSERT INTO `taste` VALUES ('Sweet', '1');
INSERT INTO `taste` VALUES ('Salty', '2');
INSERT INTO `taste` VALUES ('Tender', '3');
INSERT INTO `taste` VALUES ('Spicy', '4');
INSERT INTO `taste` VALUES ('Sour', '5');
INSERT INTO `taste` VALUES ('Crispy', '6');
INSERT INTO `taste` VALUES ('Light', '7');

SET FOREIGN_KEY_CHECKS = 1;
