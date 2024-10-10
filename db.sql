/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yakezhensuo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yakezhensuo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yakezhensuo`;

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '病例编号  Search111 ',
  `bingli_name` varchar(200) DEFAULT NULL COMMENT '病例名称  Search111 ',
  `bingli_types` int(11) DEFAULT NULL COMMENT '病例类型 Search111',
  `kanbing_time` timestamp NULL DEFAULT NULL COMMENT '看病时间',
  `bingli_zishu_text` text COMMENT '病人自述',
  `bingli_zhenduan_text` text COMMENT '诊断结果',
  `bingli_yaofang_text` text COMMENT '药方',
  `bingli_huafei` decimal(10,2) DEFAULT NULL COMMENT '花费金额 ',
  `jiaofei_types` int(11) DEFAULT NULL COMMENT '是否缴费 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='病例';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`yonghu_id`,`yisheng_id`,`bingli_uuid_number`,`bingli_name`,`bingli_types`,`kanbing_time`,`bingli_zishu_text`,`bingli_zhenduan_text`,`bingli_yaofang_text`,`bingli_huafei`,`jiaofei_types`,`insert_time`,`create_time`) values (1,2,2,'1678689742937','病例名称1',1,'2023-03-13 14:42:22','病人自述1','诊断结果1','药方1','104.91',1,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(2,2,3,'1678689742992','病例名称2',2,'2023-03-13 14:42:22','病人自述2','诊断结果2','药方2','54.09',2,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(3,3,1,'1678689742941','病例名称3',4,'2023-03-13 14:42:22','病人自述3','诊断结果3','药方3','543.57',1,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(4,2,2,'1678689742988','病例名称4',1,'2023-03-13 14:42:22','病人自述4','诊断结果4','药方4','67.57',2,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(5,3,2,'1678689742972','病例名称5',2,'2023-03-13 14:42:22','病人自述5','诊断结果5','药方5','88.73',2,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(6,1,1,'1678689742935','病例名称6',2,'2023-03-13 14:42:22','病人自述6','诊断结果6','药方6','930.03',1,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(7,1,3,'1678689742991','病例名称7',4,'2023-03-13 14:42:22','病人自述7','诊断结果7','药方7','249.70',1,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(8,2,2,'1678689742933','病例名称8',1,'2023-03-13 14:42:22','病人自述8','诊断结果8','药方8','903.47',1,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(9,1,3,'1678689742944','病例名称9',3,'2023-03-13 14:42:22','病人自述9','诊断结果9','药方9','708.70',1,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(10,2,3,'1678689742971','病例名称10',4,'2023-03-13 14:42:22','病人自述10','诊断结果10','药方10','777.27',1,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(11,1,2,'1678689742992','病例名称11',4,'2023-03-13 14:42:22','病人自述11','诊断结果11','药方11','409.22',2,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(12,3,1,'1678689742981','病例名称12',3,'2023-03-13 14:42:22','病人自述12','诊断结果12','药方12','616.61',2,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(13,1,1,'1678689742979','病例名称13',3,'2023-03-13 14:42:22','病人自述13','诊断结果13','药方13','174.83',2,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(14,1,3,'1678689742955','病例名称14',4,'2023-03-13 14:42:22','病人自述14','诊断结果14','药方14','210.76',2,'2023-03-13 14:42:22','2023-03-13 14:42:22'),(15,1,1,'1678692002268','标题11111',3,'2023-03-13 15:20:19','自述111','结果1111','药方1111','99.90',1,'2023-03-13 15:20:35','2023-03-13 15:20:35');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-13 14:42:18'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-13 14:42:18'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-13 14:42:18'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-13 14:42:18'),(5,'zhiye_types','职业',1,'职业1',NULL,NULL,'2023-03-13 14:42:18'),(6,'zhiye_types','职业',2,'职业2',NULL,NULL,'2023-03-13 14:42:18'),(7,'zhiwei_types','职位',1,'普通医生',NULL,NULL,'2023-03-13 14:42:18'),(8,'zhiwei_types','职位',2,'主治医生',NULL,NULL,'2023-03-13 14:42:18'),(9,'yisheng_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-03-13 14:42:18'),(10,'yisheng_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-03-13 14:42:18'),(11,'yisheng_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-03-13 14:42:18'),(12,'bingli_types','病例类型',1,'病例类型1',NULL,NULL,'2023-03-13 14:42:18'),(13,'bingli_types','病例类型',2,'病例类型2',NULL,NULL,'2023-03-13 14:42:18'),(14,'bingli_types','病例类型',3,'病例类型3',NULL,NULL,'2023-03-13 14:42:18'),(15,'bingli_types','病例类型',4,'病例类型4',NULL,NULL,'2023-03-13 14:42:18'),(16,'jiaofei_types','是否缴费',1,'未缴费',NULL,NULL,'2023-03-13 14:42:18'),(17,'jiaofei_types','是否缴费',2,'已缴费',NULL,NULL,'2023-03-13 14:42:18'),(18,'zhiye_types','职业',3,'职业3',NULL,'','2023-03-13 15:19:11');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-13 14:42:22','公告详情1','2023-03-13 14:42:22'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-13 14:42:22','公告详情2','2023-03-13 14:42:22'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-13 14:42:22','公告详情3','2023-03-13 14:42:22'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-13 14:42:22','公告详情4','2023-03-13 14:42:22'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-13 14:42:22','公告详情5','2023-03-13 14:42:22'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-13 14:42:22','公告详情6','2023-03-13 14:42:22'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-13 14:42:22','公告详情7','2023-03-13 14:42:22'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-13 14:42:22','公告详情8','2023-03-13 14:42:22'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-13 14:42:22','公告详情9','2023-03-13 14:42:22'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-13 14:42:22','公告详情10','2023-03-13 14:42:22'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-13 14:42:22','公告详情11','2023-03-13 14:42:22'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-13 14:42:22','公告详情12','2023-03-13 14:42:22'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-13 14:42:22','公告详情13','2023-03-13 14:42:22'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-13 14:42:22','公告详情14','2023-03-13 14:42:22');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','effzpdrgj3kf875vp8sjbu5qrt2jw1jy','2023-03-13 14:43:43','2023-03-13 16:23:04'),(2,1,'a1','yonghu','用户','we42i2itrw7t6o3v6bmh0h5pjle3xofz','2023-03-13 14:51:15','2023-03-13 16:17:19'),(3,4,'a5','yonghu','用户','l55oalmsl6cjzmpadgbdx3kxj7xzbsby','2023-03-13 15:16:48','2023-03-13 16:16:48'),(4,1,'a1','yisheng','医生','83ltej06poif8rfxcdsmh4dovn5d4t45','2023-03-13 15:19:42','2023-03-13 16:19:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-13 14:42:17');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生编号 Search111 ',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '医生邮箱',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111',
  `yisheng_content` text COMMENT '医生介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_uuid_number`,`yisheng_name`,`yisheng_phone`,`yisheng_id_number`,`yisheng_photo`,`sex_types`,`yisheng_email`,`zhiwei_types`,`yisheng_content`,`create_time`) values (1,'a1','123456','1678689742961','医生姓名1','17703786901','410224199010102001','upload/yisheng1.jpg',2,'1@qq.com',2,'<p>医生介绍1换个哈哈哈或</p>','2023-03-13 14:42:22'),(2,'a2','123456','1678689742959','医生姓名2','17703786902','410224199010102002','upload/yisheng2.jpg',1,'2@qq.com',2,'医生介绍2','2023-03-13 14:42:22'),(3,'a3','123456','1678689742962','医生姓名3','17703786903','410224199010102003','upload/yisheng3.jpg',1,'3@qq.com',1,'医生介绍3','2023-03-13 14:42:22');

/*Table structure for table `yisheng_yuyue` */

DROP TABLE IF EXISTS `yisheng_yuyue`;

CREATE TABLE `yisheng_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约唯一编号 Search111 ',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_yuyue_text` text COMMENT '预约理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请预约时间',
  `yisheng_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `yisheng_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `yisheng_yuyue_yesno_text` text COMMENT '预约回复',
  `yisheng_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='医生预约';

/*Data for the table `yisheng_yuyue` */

insert  into `yisheng_yuyue`(`id`,`yisheng_yuyue_uuid_number`,`yisheng_id`,`yonghu_id`,`yisheng_yuyue_text`,`insert_time`,`yisheng_yuyue_time`,`yisheng_yuyue_yesno_types`,`yisheng_yuyue_yesno_text`,`yisheng_yuyue_shenhe_time`,`create_time`) values (16,'1678691469251',3,1,'回复改动过大','2023-03-13 15:11:09','2023-03-15 15:10:30',1,NULL,NULL,'2023-03-13 15:11:09'),(17,'1678691822958',3,4,'gdfdsgs','2023-03-13 15:17:03','2023-03-14 15:16:54',1,NULL,NULL,'2023-03-13 15:17:03'),(18,'1678691873659',1,1,'发的法大使馆第三个','2023-03-13 15:17:54','2023-03-19 15:17:39',2,'哈哈哈京津冀','2023-03-13 15:19:57','2023-03-13 15:17:54');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `zhiye_types` int(11) DEFAULT NULL COMMENT '职业 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`zhiye_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,1,'1@qq.com','9655.05','2023-03-13 14:42:22'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,1,'2@qq.com','387.55','2023-03-13 14:42:22'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,2,'3@qq.com','147.09','2023-03-13 14:42:22'),(4,'a5','123456','张5','17788889999','777888888899994141','upload/1678691834955.jpg',2,2,'5@qq.com','0.00','2023-03-13 15:16:43');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
