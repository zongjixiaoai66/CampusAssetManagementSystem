/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t249`;
CREATE DATABASE IF NOT EXISTS `t249` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t249`;

DROP TABLE IF EXISTS `baofei`;
CREATE TABLE IF NOT EXISTS `baofei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_id` int DEFAULT NULL COMMENT '校园资产',
  `baofei_number` int DEFAULT NULL COMMENT '报废数量 Search111',
  `baofei_content` text COMMENT '报废备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报废时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='资产报废';

DELETE FROM `baofei`;
INSERT INTO `baofei` (`id`, `shangpin_id`, `baofei_number`, `baofei_content`, `insert_time`, `create_time`) VALUES
	(1, 4, 10, '<p>萨达</p>', '2022-01-06 01:36:14', '2022-01-06 01:36:14');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'shangpin_types', '资产类型名称', 1, '资产类型1', NULL, NULL, '2022-01-05 06:10:46'),
	(2, 'shangpin_types', '资产类型名称', 2, '资产类型2', NULL, NULL, '2022-01-05 06:10:46'),
	(3, 'shangpin_types', '资产类型名称', 3, '资产类型3', NULL, NULL, '2022-01-05 06:10:46'),
	(4, 'shangpin_types', '资产类型名称', 4, '资产类型4', NULL, NULL, '2022-01-05 06:10:46'),
	(5, 'didian_types', '存放地点类型名称', 1, '存放地点1', NULL, NULL, '2022-01-05 06:10:46'),
	(6, 'didian_types', '存放地点类型名称', 2, '存放地点2', NULL, NULL, '2022-01-05 06:10:46'),
	(7, 'didian_types', '存放地点类型名称', 3, '存放地点3', NULL, NULL, '2022-01-05 06:10:46'),
	(8, 'shangpin_churu_inout_types', '入库类型名称', 2, '入库', NULL, NULL, '2022-01-05 06:10:46'),
	(9, 'guihuan_types', '是否归还', 1, '借用', NULL, NULL, '2022-01-05 06:10:46'),
	(10, 'guihuan_types', '是否归还', 2, '归还', NULL, NULL, '2022-01-05 06:10:46'),
	(11, 'sex_types', '性别类型名称', 1, '男', NULL, NULL, '2022-01-05 06:10:47'),
	(12, 'sex_types', '性别类型名称', 2, '女', NULL, NULL, '2022-01-05 06:10:47'),
	(13, 'bumen_types', '部门类型名称', 1, '售后部', NULL, '0.98', '2022-01-05 06:10:47'),
	(14, 'bumen_types', '部门类型名称', 2, '销售部', NULL, '0.96', '2022-01-05 06:10:47'),
	(15, 'bumen_types', '部门类型名称', 3, '研发部', NULL, '0.94', '2022-01-05 06:10:47'),
	(16, 'didian_types', '存放地点类型名称', 4, '存放地点4', NULL, NULL, '2022-01-06 01:31:24');

DROP TABLE IF EXISTS `jieyong`;
CREATE TABLE IF NOT EXISTS `jieyong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_id` int DEFAULT NULL COMMENT '校园资产',
  `jieyong_number` int DEFAULT NULL COMMENT '借用数量 Search111',
  `jieyong_content` text COMMENT '借用备注',
  `guihuan_types` int DEFAULT NULL COMMENT '是否归还 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '借用时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='资产借用';

DELETE FROM `jieyong`;
INSERT INTO `jieyong` (`id`, `yonghu_id`, `shangpin_id`, `jieyong_number`, `jieyong_content`, `guihuan_types`, `insert_time`, `create_time`) VALUES
	(2, 1, 3, 9, '<p>beizhu</p>', 2, '2022-01-06 01:20:49', '2022-01-06 01:20:49'),
	(3, 1, 2, 4, '<p>sd </p>', 2, '2022-01-06 01:22:11', '2022-01-06 01:22:11'),
	(4, 1, 2, 8, '<p>77</p>', 1, '2022-01-06 01:27:42', '2022-01-06 01:27:42'),
	(5, 4, 4, 10, '<p>sad</p>', 2, '2022-01-06 01:38:37', '2022-01-06 01:38:37');

DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '资产编号 Search111 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '资产名称 Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '资产照片',
  `shangpin_types` int DEFAULT NULL COMMENT '资产类型 Search111',
  `didian_types` int DEFAULT NULL COMMENT '存放地点 Search111',
  `shangpin_kucun_number` int DEFAULT NULL COMMENT '资产库存  Search111',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '资产介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='校园资产';

DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `shangpin_uuid_number`, `shangpin_name`, `shangpin_photo`, `shangpin_types`, `didian_types`, `shangpin_kucun_number`, `shangpin_delete`, `shangpin_content`, `create_time`) VALUES
	(1, '1641371588836', '电脑1', 'http://localhost:8080/xiaoyuanzichan/upload/1641371602910.jpg', 4, 2, 300, 1, '<p>电脑1的介绍</p>', '2022-01-05 08:35:23'),
	(2, '1641371726050', '电脑2', 'http://localhost:8080/xiaoyuanzichan/upload/1641371732870.jpg', 4, 2, 200, 1, '<p>电脑2的详细介绍</p>', '2022-01-05 08:35:48'),
	(3, '1641371782875', '电脑5', 'http://localhost:8080/xiaoyuanzichan/upload/1641371791334.jpg', 1, 2, 410, 1, '<p>电脑5的资产介绍</p>', '2022-01-05 08:37:01'),
	(4, '1641432691594', '寒鸦图书', 'http://localhost:8080/xiaoyuanzichan/upload/1641432707694.jpg', 4, 4, 100, 1, '<p>萨达</p>', '2022-01-06 01:32:02');

DROP TABLE IF EXISTS `shangpin_churu_inout`;
CREATE TABLE IF NOT EXISTS `shangpin_churu_inout` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `shangpin_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '入库名称  Search111 ',
  `shangpin_churu_inout_types` int DEFAULT NULL COMMENT '入库类型',
  `shangpin_churu_inout_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='入库';

DELETE FROM `shangpin_churu_inout`;
INSERT INTO `shangpin_churu_inout` (`id`, `shangpin_churu_inout_uuid_number`, `shangpin_churu_inout_name`, `shangpin_churu_inout_types`, `shangpin_churu_inout_content`, `insert_time`, `create_time`) VALUES
	(1, '1641372237019', '11', 2, '', '2022-01-05 08:43:57', '2022-01-05 08:43:57'),
	(2, '1641432879223', '入库2', 2, '', '2022-01-06 01:34:39', '2022-01-06 01:34:39');

DROP TABLE IF EXISTS `shangpin_churu_inout_list`;
CREATE TABLE IF NOT EXISTS `shangpin_churu_inout_list` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_churu_inout_id` int DEFAULT NULL COMMENT '入库',
  `shangpin_id` int DEFAULT NULL COMMENT '校园资产',
  `shangpin_churu_inout_list_number` int DEFAULT NULL COMMENT '入库数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='入库详情';

DELETE FROM `shangpin_churu_inout_list`;
INSERT INTO `shangpin_churu_inout_list` (`id`, `shangpin_churu_inout_id`, `shangpin_id`, `shangpin_churu_inout_list_number`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 4, '2022-01-05 08:43:57', '2022-01-05 08:43:57'),
	(2, 1, 3, 3, '2022-01-05 08:43:57', '2022-01-05 08:43:57'),
	(4, 2, 4, 9, '2022-01-06 01:34:39', '2022-01-06 01:34:39');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'ildsut2ip57ptpmkw4cjmrxnlyr6qe30', '2022-01-05 08:17:32', '2024-07-05 03:58:59'),
	(2, 1, 'a1', 'yonghu', '用户', '4qjmhohe48l458udw5d30uya6vww8e4g', '2022-01-05 09:59:01', '2024-07-05 04:00:03'),
	(3, 3, 'a3', 'yonghu', '用户', '10kpqzgjb8vh7hp7sgmtrt3afaktwdh8', '2022-01-06 01:30:07', '2022-01-06 02:30:08'),
	(4, 4, 'a4', 'yonghu', '用户', 'id30hquya0z5t9vmkhyio5fz88mknolr', '2022-01-06 01:37:29', '2022-01-06 02:37:30');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `weixiu`;
CREATE TABLE IF NOT EXISTS `weixiu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_id` int DEFAULT NULL COMMENT '校园资产',
  `weixiu_number` int DEFAULT NULL COMMENT '维修数量 Search111',
  `weixiu_content` text COMMENT '维修备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '维修时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='资产维修';

DELETE FROM `weixiu`;
INSERT INTO `weixiu` (`id`, `shangpin_id`, `weixiu_number`, `weixiu_content`, `insert_time`, `create_time`) VALUES
	(1, 2, 4, '<p>维修备注</p>', '2022-01-05 08:44:19', '2022-01-05 08:44:19'),
	(2, 4, 10, '<p>无</p>', '2022-01-06 01:35:59', '2022-01-06 01:35:59');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `bumen_types` int DEFAULT NULL COMMENT '部门',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `bumen_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户1', '17703786901', '410224199610232001', 'http://localhost:8080/xiaoyuanzichan/upload/1641371976683.jpg', 2, '99@qq.com', 3, '2022-01-05 08:39:51'),
	(2, '用户2', '123456', '用户2', '17703786902', '410224199610232002', 'http://localhost:8080/xiaoyuanzichan/upload/1641372037039.jpg', 2, '22@qq.com', 2, '2022-01-05 08:40:49'),
	(3, '用户3', '123456', '用户3', '17703786903', '410224199610232003', 'http://localhost:8080/xiaoyuanzichan/upload/1641432991858.jpg', 2, '22@qq.com', 3, '2022-01-06 01:30:00'),
	(4, '用户4', '123456', '用户4', '17703786904', '410224199610232004', 'http://localhost:8080/xiaoyuanzichan/upload/1641433054766.jpg', 2, '44@qq.com', 2, '2022-01-06 01:37:23');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
