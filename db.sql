/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanfuwupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanfuwupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanfuwupingtai`;

/*Table structure for table `bangongdianhua` */

DROP TABLE IF EXISTS `bangongdianhua`;

CREATE TABLE `bangongdianhua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bangongdianhua_name` varchar(200) DEFAULT NULL COMMENT '教师名称 Search111',
  `bangongdianhua_types` int(200) DEFAULT NULL COMMENT '教师部门 Search111',
  `bangongdianhua_phone` varchar(200) DEFAULT NULL COMMENT '教师联系方式',
  `bangongdianhua_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `bangongdianhua_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `bangongdianhua_content` text COMMENT '教师详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师办公电话';

/*Data for the table `bangongdianhua` */

insert  into `bangongdianhua`(`id`,`bangongdianhua_name`,`bangongdianhua_types`,`bangongdianhua_phone`,`bangongdianhua_photo`,`sex_types`,`bangongdianhua_money`,`bangongdianhua_content`,`insert_time`,`create_time`) values (1,'教师1',1,'17785544641','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620179047305.jpg',1,'0.00','教师详情1\r\n','2021-05-05 09:44:45','2021-05-05 09:44:45'),(2,'教师2',2,'17785544642','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620179106331.jpg',1,NULL,'教师详情2\r\n','2021-05-05 09:45:11','2021-05-05 09:45:11');

/*Table structure for table `chanyinxinxi` */

DROP TABLE IF EXISTS `chanyinxinxi`;

CREATE TABLE `chanyinxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chanyinxinxi_name` varchar(200) DEFAULT NULL COMMENT '菜品名称 Search111',
  `chanyinxinxi_photo` varchar(200) DEFAULT NULL COMMENT '菜品图片',
  `chanyinxinxi_money` decimal(10,2) DEFAULT NULL COMMENT '菜品价格',
  `chanyinxinxi_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='餐饮信息';

/*Data for the table `chanyinxinxi` */

insert  into `chanyinxinxi`(`id`,`chanyinxinxi_name`,`chanyinxinxi_photo`,`chanyinxinxi_money`,`chanyinxinxi_content`,`insert_time`,`create_time`) values (1,'菜品1','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620177518592.jpg','10.00','详情信息1\r\n\r\n','2021-05-05 09:18:44','2021-05-05 09:18:44'),(2,'菜品2','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620177533801.jpg','20.00','详情信息2\r\n\r\n','2021-05-05 09:18:59','2021-05-05 09:18:59');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/xiaoyuanfuwupingtai/upload/1620179128121.jpg'),(2,'picture2','http://localhost:8080/xiaoyuanfuwupingtai/upload/1620179135028.jpg'),(3,'picture3','http://localhost:8080/xiaoyuanfuwupingtai/upload/1620179144755.jpg'),(6,'homepage','http://localhost:8080/xiaoyuanfuwupingtai/upload/1620179155845.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-04 21:31:06'),(2,'sex_types','性别',2,'女',NULL,'2021-05-04 21:31:06'),(3,'ershouwupin_types','物品类型名称',1,'类型1',NULL,'2021-05-04 21:31:06'),(4,'ershouwupin_types','物品类型名称',2,'类型2',NULL,'2021-05-04 21:31:06'),(5,'ershouwupin_types','物品类型名称',3,'类型3',NULL,'2021-05-04 21:31:06'),(6,'bangongdianhua_types','教师部门名称',1,'部门1',NULL,'2021-05-04 21:31:06'),(7,'bangongdianhua_types','教师部门名称',2,'部门2',NULL,'2021-05-04 21:31:06'),(8,'bangongdianhua_types','教师部门名称',3,'部门3',NULL,'2021-05-04 21:31:06'),(9,'news_types','新闻类型名称',1,'新闻类型1',NULL,'2021-05-04 21:31:06'),(10,'news_types','新闻类型名称',2,'新闻类型2',NULL,'2021-05-04 21:31:06');

/*Table structure for table `ershouwupin` */

DROP TABLE IF EXISTS `ershouwupin`;

CREATE TABLE `ershouwupin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ershouwupin_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `ershouwupin_types` int(200) DEFAULT NULL COMMENT '物品类型 Search111',
  `ershouwupin_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '发布用户',
  `ershouwupin_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `ershouwupin_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='二手物品';

/*Data for the table `ershouwupin` */

insert  into `ershouwupin`(`id`,`ershouwupin_name`,`ershouwupin_types`,`ershouwupin_photo`,`yonghu_id`,`ershouwupin_money`,`ershouwupin_content`,`insert_time`,`create_time`) values (1,'物品名称1',1,'http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620178760325.jpg',1,'100.00','详情信息1\r\n\r\n','2021-05-05 09:20:50','2021-05-05 09:20:50'),(2,'物品名称2',2,'http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620178747986.jpg',2,'200.00','详情信息2\r\n\r\n','2021-05-05 09:21:08','2021-05-05 09:21:08');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻1',2,'http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620179172780.jpg','2021-05-05 09:46:16','新闻详情1\r\n','2021-05-05 09:46:16'),(2,'新闻2',2,'http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620179183527.jpg','2021-05-05 09:46:26','新闻详情2\r\n','2021-05-05 09:46:26');

/*Table structure for table `shiwuzhaoling` */

DROP TABLE IF EXISTS `shiwuzhaoling`;

CREATE TABLE `shiwuzhaoling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiwuzhaoling_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `shiwuzhaoling_types` int(200) DEFAULT NULL COMMENT '物品类型 Search111',
  `shiwuzhaoling_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `shiwuzhaoling_dizhi` varchar(200) DEFAULT NULL COMMENT '获取地址',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '发布用户',
  `shiwuzhaoling_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `shiwuzhaoling_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='失物招领';

/*Data for the table `shiwuzhaoling` */

insert  into `shiwuzhaoling`(`id`,`shiwuzhaoling_name`,`shiwuzhaoling_types`,`shiwuzhaoling_photo`,`shiwuzhaoling_dizhi`,`yonghu_id`,`shiwuzhaoling_money`,`shiwuzhaoling_content`,`insert_time`,`create_time`) values (1,'物品1',1,'http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620178703233.jpg','获取地址1',1,'100.00','详情信息1\r\n\r\n','2021-05-05 09:38:35','2021-05-05 09:38:35'),(2,'物品2',2,'http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620178727504.jpg','获取地址2',2,'200.00','详情信息2\r\n\r\n','2021-05-05 09:38:53','2021-05-05 09:38:53');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','35sgzeapckxvwx6c3jcmb8jt1ryrwyw4','2021-05-04 21:35:19','2021-05-05 11:18:56'),(2,1,'111','yonghu','用户','xoqaqfu3n3jkmgno9sr0pxpwyiikmc9n','2021-05-05 09:47:09','2021-05-05 11:51:18'),(3,2,'444','wangzhan','网站管理员','1g05y7pwczj8wrqz6yuz8cmcesbdr64d','2021-05-05 10:48:42','2021-05-05 11:50:39');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `wangzhan` */

DROP TABLE IF EXISTS `wangzhan`;

CREATE TABLE `wangzhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `wangzhan_name` varchar(200) DEFAULT NULL COMMENT '网站管理员姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `wangzhan_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `wangzhan_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `wangzhan_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网站管理员';

/*Data for the table `wangzhan` */

insert  into `wangzhan`(`id`,`username`,`password`,`wangzhan_name`,`sex_types`,`wangzhan_id_number`,`wangzhan_phone`,`wangzhan_photo`,`create_time`) values (1,'333','123456','网站管理员1',1,'410882200011231141','17789988961','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620177413027.jpg','2021-05-05 09:16:54'),(2,'444','123456','网站管理员2',2,'410882200011231142','17789988962','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620177562020.jpg','2021-05-05 09:19:23');

/*Table structure for table `xiaochechaxun` */

DROP TABLE IF EXISTS `xiaochechaxun`;

CREATE TABLE `xiaochechaxun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaochechaxun_name` varchar(200) DEFAULT NULL COMMENT '校车编号 Search111',
  `xiaochechaxun_time` timestamp NULL DEFAULT NULL COMMENT '发车时间',
  `xiaochechaxun_photo` varchar(200) DEFAULT NULL COMMENT '校车图片',
  `xiaochechaxun_content` text COMMENT '校车详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='校车查询';

/*Data for the table `xiaochechaxun` */

insert  into `xiaochechaxun`(`id`,`xiaochechaxun_name`,`xiaochechaxun_time`,`xiaochechaxun_photo`,`xiaochechaxun_content`,`insert_time`,`create_time`) values (1,'001','2021-05-05 09:42:45','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620179005017.jpg','<img src=\"http://localhost:8080/xiaoyuanfuwupingtai/upload/1620179005009.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/xiaoyuanfuwupingtai/upload/1620179005009.jpg\">\r\n','2021-05-05 09:43:26','2021-05-05 09:43:26'),(2,'002','2021-05-06 12:00:00','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620179016844.jpg','<img src=\"http://localhost:8080/xiaoyuanfuwupingtai/upload/1620179016843.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/xiaoyuanfuwupingtai/upload/1620179016843.jpg\">\r\n','2021-05-05 09:43:38','2021-05-05 09:43:38');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_banji_zhuanye` varchar(200) DEFAULT NULL COMMENT '专业班级',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_banji_zhuanye`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',1,'410882200111111111','17711111111','22424@qq.com','专业班级1','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620177591788.jpg','2021-05-05 09:19:52'),(2,'222','123456','用户2',2,'410882200111112222','17711111112','22222@qq.com','专业班级2','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620177616518.jpg','2021-05-05 09:20:17'),(3,'123','123456','123',2,'410882200111112223','17711111113','123@qq,com','专业班级3','http://localhost:8080/xiaoyuanfuwupingtai/file/download?fileName=1620182956229.jpg','2021-05-05 10:49:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
