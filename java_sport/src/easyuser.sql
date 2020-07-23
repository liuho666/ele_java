/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.40 : Database - eleproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eleproject` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eleproject`;

/*Table structure for table `easyuser` */

DROP TABLE IF EXISTS `easyuser`;

CREATE TABLE `easyuser` (
  `id` int(24) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `state` tinyint(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `easyuser` */

insert  into `easyuser`(`id`,`username`,`password`,`email`,`role`,`state`) values (1,'admin','123456','123@qq.com','超级管理员',1),(2,'naughty','888888','456@qq.com','普通管理员',1),(3,'flysky01','987654','qwe@qq.com','普通用户',1),(4,'anglybirds','321654','aaaa@163.com','普通用户',0),(7,'admin003','q123456','c@qq.com','普通用户',1),(8,'admin005','123456','cxz@qq.com','普通用户',0),(9,'admin007','123456','rty@qq.com','普通用户',0);

/*Table structure for table `mainmenu` */

DROP TABLE IF EXISTS `mainmenu`;

CREATE TABLE `mainmenu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1201 DEFAULT CHARSET=utf8;

/*Data for the table `mainmenu` */

insert  into `mainmenu`(`id`,`title`,`path`) values (100,'权限管理','/admin'),(200,'主要概况','/a'),(300,'电力检测','/b'),(400,'电能质量','/c'),(500,'用电分析','/d'),(600,'事件记录','/e'),(700,'安全用电','/f'),(800,'运行环境','/g'),(900,'设备控制','/h'),(1000,'设备管理','/i'),(1100,'运维管理','/j'),(1200,'用户报告','/k');

/*Table structure for table `submenu` */

DROP TABLE IF EXISTS `submenu`;

CREATE TABLE `submenu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `mid` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `mainmenu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1203 DEFAULT CHARSET=utf8;

/*Data for the table `submenu` */

insert  into `submenu`(`id`,`title`,`path`,`mid`) values (101,'用户列表','/user',100),(102,'修改权限','/rights',100),(201,'用能月报','/aa',200),(202,'变配电站状态','/ab',200),(203,'变压器状态','/ac',200),(204,'运维中心','/ad',200),(205,'看板','/ae',200),(206,'看板二','/af',200),(207,'看板三','/ag',200),(301,'电力数据','/ba',300),(302,'变压器监测','/bb',300),(303,'电力运行报表','/bc',300),(304,'配电图','/bd',300),(305,'电力极值报表','/be',300),(306,'电力运行日报','/bf',300),(307,'平均功率因数','/bg',300),(401,'谐波监测','/ca',400),(501,'用能报表','/da',500),(502,'同比分析','/db',500),(503,'环比分析','/dc',500),(504,'电能集抄','/dd',500),(505,'计量及线路损耗','/de',500),(506,'自定义用电报表','/df',500),(507,'分时段用电','/dg',500),(508,'最大需量报表','/dh',500),(509,'企业负荷','/di',500),(510,'实时需量','/dj',500),(511,'用能及电费报表','/dk',500),(512,'整点集抄','/dl',500),(601,'遥信事件','/ea',600),(602,'越限事件','/eb',600),(603,'操作日志','/ec',600),(604,'短信日志','/ed',600),(605,'平台运行日志','/ee',600),(606,'报警信息','/ef',600),(607,'推送记录','/eg',600),(701,'漏电监测','/fa',700),(702,'线缆及母排降温','/fb',700),(801,'环境监测','/ga',800),(802,'视频监控','/gb',800),(803,'环境湿温度','/gc',800),(804,'仪表通讯状态','/gd',800),(805,'网关通信状态','/ge',800),(806,'视频设备状态','/gf',800),(901,'遥控定义','/ha',900),(902,'照明控制','/hb',900),(903,'控制操作日志','/hc',900),(904,'仪表控制','/hd',900),(1001,'设备定义','/ia',1000),(1002,'设备档案','/ib',1000),(1101,'任务管理','/ja',1100),(1102,'巡检记录','/jb',1100),(1103,'缺陷记录','/jc',1100),(1104,'消警记录','/jd',1100),(1105,'抢修记录','/je',1100),(1201,'用户报告','/ka',1200),(1202,'文档管理','/kb',1200);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
