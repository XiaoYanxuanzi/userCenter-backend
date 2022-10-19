/*
 Navicat MySQL Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : user_center

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 19/10/2022 12:56:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `avatarUrl` varchar(1024) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `gender` tinyint(0) NULL DEFAULT NULL COMMENT '性别',
  `userPassword` varchar(512) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL COMMENT '密码',
  `phone` varchar(128) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(512) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `userStatus` int(0) NOT NULL DEFAULT 0 COMMENT '状态 0 - 正常',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `isDelete` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `userRole` int(0) NOT NULL DEFAULT 0 COMMENT '用户角色 0 - 普通用户 1 - 管理员',
  `planetCode` varchar(512) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '星球编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1582258060770947076 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
