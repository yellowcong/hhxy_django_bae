/*
SQLyog v10.2 
MySQL - 5.0.22-community-nt : Database - hhxy_python
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hhxy_python` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hhxy_python`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user'),(22,'Can add role',8,'add_role'),(23,'Can change role',8,'change_role'),(24,'Can delete role',8,'delete_role'),(25,'Can add group',9,'add_group'),(26,'Can change group',9,'change_group'),(27,'Can delete group',9,'delete_group'),(28,'Can add channel',10,'add_channel'),(29,'Can change channel',10,'change_channel'),(30,'Can delete channel',10,'delete_channel'),(31,'Can add group channel',11,'add_groupchannel'),(32,'Can change group channel',11,'change_groupchannel'),(33,'Can delete group channel',11,'delete_groupchannel'),(34,'Can add group user',12,'add_groupuser'),(35,'Can change group user',12,'change_groupuser'),(36,'Can delete group user',12,'delete_groupuser'),(37,'Can add attachment',13,'add_attachment'),(38,'Can change attachment',13,'change_attachment'),(39,'Can delete attachment',13,'delete_attachment'),(40,'Can add passage pic',14,'add_passagepic'),(41,'Can change passage pic',14,'change_passagepic'),(42,'Can delete passage pic',14,'delete_passagepic'),(43,'Can add index pic',15,'add_indexpic'),(44,'Can change index pic',15,'change_indexpic'),(45,'Can delete index pic',15,'delete_indexpic'),(46,'Can add passage',16,'add_passage'),(47,'Can change passage',16,'change_passage'),(48,'Can delete passage',16,'delete_passage'),(49,'Can add reply',17,'add_reply'),(50,'Can change reply',17,'change_reply'),(51,'Can delete reply',17,'delete_reply'),(52,'Can add web info',18,'add_webinfo'),(53,'Can change web info',18,'change_webinfo'),(54,'Can delete web info',18,'delete_webinfo');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$15000$rRcSdpEODUvy$eFdA9xge/BSq9sKis01vHGQRn6ZLuMIt3P9AKo3drWs=','2015-04-16 14:49:33',1,'yellowcong','','','yellowcong@qq.com',1,1,'2015-04-16 14:49:33');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `base_attachment` */

DROP TABLE IF EXISTS `base_attachment`;

CREATE TABLE `base_attachment` (
  `id` int(11) NOT NULL auto_increment,
  `old_name` varchar(108) NOT NULL,
  `new_name` varchar(64) NOT NULL,
  `create_date` datetime NOT NULL,
  `type` varchar(32) NOT NULL,
  `download_times` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `passage_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `base_attachment_525c9ec5` (`passage_id`),
  CONSTRAINT `base_attachment_passage_id_57b8705_fk_base_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `base_passage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_attachment` */

insert  into `base_attachment`(`id`,`old_name`,`new_name`,`create_date`,`type`,`download_times`,`size`,`passage_id`) values (1,'Picture 72974135.jpg','cc55700f-ed52-11e4-a4cc-24fd52a4b83c.jpg','2015-04-28 03:01:00','jpg',0,7,NULL),(2,'Picture 72975255.jpg','e1c0af00-ed52-11e4-94a8-24fd52a4b83c.jpg','2015-04-28 03:01:36','jpg',0,7,NULL),(3,'Picture 72974135.jpg','1c572861-ed53-11e4-b456-24fd52a4b83c.jpg','2015-04-28 03:03:14','jpg',0,7,NULL),(4,'Picture 72974135.jpg','26fbc461-ed53-11e4-8be3-24fd52a4b83c.jpg','2015-04-28 03:03:32','jpg',0,7,NULL),(5,'Picture 72666447.jpg','edf1e900-ed53-11e4-b829-24fd52a4b83c.jpg','2015-04-28 03:09:06','jpg',0,6,NULL),(6,'Picture 72666447.jpg','2914eaf0-ed54-11e4-9f48-24fd52a4b83c.jpg','2015-04-28 03:10:45','jpg',0,6,NULL),(7,'Picture 72666839.jpg','3eb40b21-ed54-11e4-a90d-24fd52a4b83c.jpg','2015-04-28 03:11:21','jpg',0,5,NULL),(8,'Picture 72666447.jpg','52f45e9e-ed54-11e4-9f84-24fd52a4b83c.jpg','2015-04-28 03:11:55','jpg',0,6,NULL),(9,'Picture 72666839.jpg','79cf9300-ed54-11e4-953c-24fd52a4b83c.jpg','2015-04-28 03:13:01','jpg',0,5,NULL),(10,'Picture 72666447.jpg','8bb1d240-ed54-11e4-b554-24fd52a4b83c.jpg','2015-04-28 03:13:30','jpg',0,6,NULL),(11,'Picture 72666839.jpg','96d9cf0f-ed54-11e4-9443-24fd52a4b83c.jpg','2015-04-28 03:13:49','jpg',0,5,NULL),(12,'Picture 72666447.jpg','ab83281e-ed55-11e4-8a39-24fd52a4b83c.jpg','2015-04-28 03:21:33','jpg',0,6,NULL),(13,'Picture 72666447.jpg','c7b72870-ed55-11e4-a242-24fd52a4b83c.jpg','2015-04-28 03:22:21','jpg',0,6,NULL),(14,'Picture 72678287.jpg','052b4651-ed56-11e4-b746-24fd52a4b83c.jpg','2015-04-28 03:24:04','jpg',0,3,NULL),(15,'Picture 72678287.jpg','17d76540-ed56-11e4-a5e9-24fd52a4b83c.jpg','2015-04-28 03:24:35','jpg',0,3,NULL),(16,'Picture 72666839.jpg','5682f1ae-ed56-11e4-b8e0-24fd52a4b83c.jpg','2015-04-28 03:26:20','jpg',0,5,NULL),(17,'Picture 72678287.jpg','60e83ac0-ed56-11e4-922b-24fd52a4b83c.jpg','2015-04-28 03:26:38','jpg',0,3,NULL),(18,'Picture 72678511.jpg','861ac830-ed56-11e4-a512-24fd52a4b83c.jpg','2015-04-28 03:27:40','jpg',0,8,NULL),(19,'Picture 72666447.jpg','96323280-ed56-11e4-81f5-24fd52a4b83c.jpg','2015-04-28 03:28:07','jpg',0,6,NULL),(20,'Picture 72666447.jpg','b16ae2e1-ed56-11e4-a83d-24fd52a4b83c.jpg','2015-04-28 03:28:53','jpg',0,6,NULL),(21,'Picture 72666447.jpg','b76d4700-ed56-11e4-97a0-24fd52a4b83c.jpg','2015-04-28 03:29:03','jpg',0,6,NULL),(22,'Picture 72666447.jpg','c19ab730-ed56-11e4-bd6d-24fd52a4b83c.jpg','2015-04-28 03:29:20','jpg',0,6,NULL),(23,'Picture 72666839.jpg','cc89a29e-ed56-11e4-bd48-24fd52a4b83c.jpg','2015-04-28 03:29:38','jpg',0,5,NULL),(24,'Picture 72666447.jpg','dca4dd80-ed56-11e4-ab61-24fd52a4b83c.jpg','2015-04-28 03:30:05','jpg',0,6,NULL),(25,'Picture 72666447.jpg','fcf061de-ed56-11e4-8fbd-24fd52a4b83c.jpg','2015-04-28 03:30:59','jpg',0,6,NULL),(26,'Picture 72678287.jpg','2220f380-ed57-11e4-bfb2-24fd52a4b83c.jpg','2015-04-28 03:32:02','jpg',0,3,NULL),(27,'Picture 72676087.jpg','37a7d0c0-ed57-11e4-865c-24fd52a4b83c.jpg','2015-04-28 03:32:38','jpg',0,5,NULL),(28,'Picture 72676087.jpg','5f473f80-ed57-11e4-a21b-24fd52a4b83c.jpg','2015-04-28 03:33:45','jpg',0,5,NULL),(29,'Picture 72720295.jpg','eed5e38f-ed57-11e4-9664-24fd52a4b83c.jpg','2015-04-28 03:37:45','jpg',0,6,NULL),(30,'Picture 72669879.jpg','1fbafdc0-ed5c-11e4-a7e8-24fd52a4b83c.jpg','2015-04-28 04:07:46','jpg',0,6,NULL),(31,'Picture 72666839.jpg','381c7240-ed5c-11e4-a50c-24fd52a4b83c.jpg','2015-04-28 04:08:26','jpg',0,5,NULL),(32,'Picture 72669879.jpg','4e809021-ed5c-11e4-a700-24fd52a4b83c.jpg','2015-04-28 04:09:05','jpg',0,6,NULL),(33,'Picture 72666447.jpg','6f525b80-ed5c-11e4-9bba-24fd52a4b83c.jpg','2015-04-28 04:09:59','jpg',0,6,NULL),(34,'Picture 72666839.jpg','bb6b8f00-ed5c-11e4-947c-24fd52a4b83c.jpg','2015-04-28 04:12:07','jpg',0,5,NULL),(35,'Picture 72666319.jpg','e44e7a40-ed5c-11e4-b893-24fd52a4b83c.jpg','2015-04-28 04:13:15','jpg',0,2,NULL),(36,'Picture 72666447.jpg','000a3d51-ed5d-11e4-8c9b-24fd52a4b83c.jpg','2015-04-28 04:14:02','jpg',0,6,NULL),(37,'Picture 72666839.jpg','d5483c61-ed5d-11e4-a448-24fd52a4b83c.jpg','2015-04-28 04:19:59','jpg',0,5,NULL),(38,'Picture 72666839.jpg','eb9bb870-ed5d-11e4-bce2-24fd52a4b83c.jpg','2015-04-28 04:20:37','jpg',0,5,NULL),(39,'Picture 72666447.jpg','8250590f-ed5e-11e4-b36b-24fd52a4b83c.jpg','2015-04-28 04:24:50','jpg',0,6,NULL),(40,'Picture 72666319.jpg','c6faee40-ed5e-11e4-b960-24fd52a4b83c.jpg','2015-04-28 04:26:45','jpg',0,2,NULL),(41,'Picture 72678511.jpg','340e83c0-ed5f-11e4-ae06-24fd52a4b83c.jpg','2015-04-28 04:29:48','jpg',0,8,NULL),(42,'Picture 72666839.jpg','41877570-ed5f-11e4-b7f9-24fd52a4b83c.jpg','2015-04-28 04:30:11','jpg',0,5,NULL),(43,'Picture 72678287.jpg','6be763c0-ed5f-11e4-a5bd-24fd52a4b83c.jpg','2015-04-28 04:31:22','jpg',0,3,NULL),(45,'Picture 72669879.jpg','f24fec1e-ed78-11e4-9216-24fd52a4b83c.jpg','2015-04-28 07:34:05','jpg',0,6,NULL),(46,'Picture 72666839.jpg','2256b10f-ed79-11e4-af9a-24fd52a4b83c.jpg','2015-04-28 07:35:25','jpg',0,5,NULL),(47,'Picture 72666319.jpg','9870cecf-ee7d-11e4-b347-24fd52a4b83c.jpg','2015-04-29 14:39:52','jpg',0,2,5),(48,'Picture 72678511.jpg','a4601340-ee7d-11e4-b19d-24fd52a4b83c.jpg','2015-04-29 14:40:12','jpg',0,8,6),(49,'Picture 72666319.jpg','3bba152e-ef3a-11e4-b33b-24fd52a4b83c.jpg','2015-04-30 13:10:12','jpg',0,2,7),(51,'Picture 72678287.jpg','693c788f-ef8f-11e4-a83f-24fd52a4b83c.jpg','2015-04-30 23:19:55','jpg',0,3,9),(52,'Picture 72678287.jpg','1496370f-ef92-11e4-b820-24fd52a4b83c.jpg','2015-04-30 23:39:02','jpg',0,3,10);

/*Table structure for table `base_channel` */

DROP TABLE IF EXISTS `base_channel`;

CREATE TABLE `base_channel` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `base_channel_6be37982` (`parent_id`),
  CONSTRAINT `base_channel_parent_id_1f4c71af_fk_base_channel_id` FOREIGN KEY (`parent_id`) REFERENCES `base_channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_channel` */

insert  into `base_channel`(`id`,`name`,`status`,`order`,`parent_id`) values (1,'学院建设',1,1,NULL),(2,'专业建设',1,2,1),(3,'课程建设',1,3,1),(4,'班级建设',1,4,1),(5,'学院研究',1,1,1),(6,'日常工作',1,3,NULL),(7,'党委工作',0,1,6),(8,'工会工作',1,3,6),(9,'共青团工作',1,4,6),(10,'学生党建',1,2,6),(11,'就业工作',1,5,6),(17,'师资队伍',1,4,NULL),(18,'师资概括',1,1,17),(19,'教学名师',1,2,17),(20,'硕士生导师',1,3,17),(21,'青年才俊',1,4,17),(24,'新闻栏目',1,5,NULL),(27,'学院概况',1,2,NULL),(28,'学院简介',1,1,27),(29,'现任辅导',1,2,27),(30,'组织机构',0,3,27);

/*Table structure for table `base_group` */

DROP TABLE IF EXISTS `base_group`;

CREATE TABLE `base_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `description` varchar(108) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_group` */

insert  into `base_group`(`id`,`name`,`description`) values (1,'管理组','拥有最高权限'),(3,'审批组','审查文章');

/*Table structure for table `base_groupchannel` */

DROP TABLE IF EXISTS `base_groupchannel`;

CREATE TABLE `base_groupchannel` (
  `id` int(11) NOT NULL auto_increment,
  `channel_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `base_groupchannel_72eb6c85` (`channel_id`),
  KEY `base_groupchannel_0e939a4f` (`group_id`),
  CONSTRAINT `base_groupchannel_channel_id_7b70ac45_fk_base_channel_id` FOREIGN KEY (`channel_id`) REFERENCES `base_channel` (`id`),
  CONSTRAINT `base_groupchannel_group_id_58fb31f3_fk_base_group_id` FOREIGN KEY (`group_id`) REFERENCES `base_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_groupchannel` */

insert  into `base_groupchannel`(`id`,`channel_id`,`group_id`) values (52,1,1),(53,2,1),(54,3,1),(55,4,1),(56,5,1),(57,6,1),(58,7,1),(59,8,1),(60,9,1),(61,10,1),(62,11,1),(72,1,3),(73,2,3),(74,3,3),(75,4,3),(76,5,3);

/*Table structure for table `base_groupuser` */

DROP TABLE IF EXISTS `base_groupuser`;

CREATE TABLE `base_groupuser` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `base_groupuser_0e939a4f` (`group_id`),
  KEY `base_groupuser_e8701ad4` (`user_id`),
  CONSTRAINT `base_groupuser_group_id_769da4ce_fk_base_group_id` FOREIGN KEY (`group_id`) REFERENCES `base_group` (`id`),
  CONSTRAINT `base_groupuser_user_id_31e0c655_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_groupuser` */

insert  into `base_groupuser`(`id`,`group_id`,`user_id`) values (9,1,3),(10,3,3),(11,1,4),(12,3,4),(13,1,12);

/*Table structure for table `base_indexpic` */

DROP TABLE IF EXISTS `base_indexpic`;

CREATE TABLE `base_indexpic` (
  `id` int(11) NOT NULL auto_increment,
  `create_date` datetime NOT NULL,
  `link_url` varchar(108) NOT NULL,
  `new_name` varchar(64) NOT NULL,
  `statu` int(11) NOT NULL,
  `title` varchar(108) NOT NULL,
  `sub_title` varchar(108) NOT NULL,
  `url_path` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_indexpic` */

insert  into `base_indexpic`(`id`,`create_date`,`link_url`,`new_name`,`statu`,`title`,`sub_title`,`url_path`) values (2,'2015-04-25 05:15:29','yellowcong.jd-app.com','0b4ea021-eb0a-11e4-921a-24fd52a4b83c.jpg',1,'糖糖省图超','哈哈笑嘻嘻笑嘻嘻','/static/upload/index/img/0b4ea021-eb0a-11e4-921a-24fd52a4b83c.jpg'),(3,'2015-04-25 05:16:11','yellowcong.jd-app.com','21ae7840-eb0a-11e4-9ab1-24fd52a4b83c.jpg',1,'狗狗','xxx','/static/upload/index/img/21ae7840-eb0a-11e4-9ab1-24fd52a4b83c.jpg'),(4,'2015-04-25 05:17:19','yellowcong.jd-app.com','4d7c4e70-eb0a-11e4-9735-24fd52a4b83c.jpg',1,'Crazy Dad','','/static/upload/index/img/4d7c4e70-eb0a-11e4-9735-24fd52a4b83c.jpg'),(6,'2015-04-25 05:27:26','yellowcong.jd-app.com','b78ac4cf-eb0b-11e4-941e-24fd52a4b83c.jpg',1,'测试图片问题','测试图片问题','/static/upload/index/img/b78ac4cf-eb0b-11e4-941e-24fd52a4b83c.jpg'),(7,'2015-04-27 15:33:14','yellowcong.jd-app.com','a33be60f-ecf2-11e4-a950-24fd52a4b83c.jpg',1,'dsafa','fdadfda','/static/upload/index/img/a33be60f-ecf2-11e4-a950-24fd52a4b83c.jpg'),(8,'2015-04-27 15:33:59','www.yellowcong.com','cd0c8cb0-ecf2-11e4-b587-24fd52a4b83c.jpg',1,'fewaea ','fdafjalfdajl','/static/upload/index/img/cd0c8cb0-ecf2-11e4-b587-24fd52a4b83c.jpg'),(9,'2015-04-28 03:41:02','gfsfgs','359500e1-ed58-11e4-8d16-24fd52a4b83c.jpg',1,'gegs','gsdgs','/static/upload/index/img/359500e1-ed58-11e4-8d16-24fd52a4b83c.jpg');

/*Table structure for table `base_passage` */

DROP TABLE IF EXISTS `base_passage`;

CREATE TABLE `base_passage` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(64) NOT NULL,
  `sumary` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `key_word` varchar(64) default NULL,
  `is_commend` int(11) NOT NULL,
  `statu` int(11) NOT NULL,
  `see_count` int(11) NOT NULL,
  `reply_count` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `channel_id` int(11) NOT NULL,
  `passagePic_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `base_passage_72eb6c85` (`channel_id`),
  KEY `base_passage_f6b3e949` (`passagePic_id`),
  KEY `base_passage_e8701ad4` (`user_id`),
  CONSTRAINT `base_passage_passagePic_id_603e470a_fk_base_passagepic_id` FOREIGN KEY (`passagePic_id`) REFERENCES `base_passagepic` (`id`),
  CONSTRAINT `base_passage_channel_id_ffbb7ee_fk_base_channel_id` FOREIGN KEY (`channel_id`) REFERENCES `base_channel` (`id`),
  CONSTRAINT `base_passage_user_id_79a5a579_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_passage` */

insert  into `base_passage`(`id`,`title`,`sumary`,`create_date`,`key_word`,`is_commend`,`statu`,`see_count`,`reply_count`,`content`,`channel_id`,`passagePic_id`,`user_id`) values (1,'dfasfdaf','你是大SBfdafdaffdafdaf','2015-04-28 08:06:21',NULL,1,1,1,1,'<p>fdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafaf</p><p>afafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdf</p><p>dafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafa</p><p>fdfdafafafafdfdafafafafdfdafafafafdfdafafafafdfdafafafafd</p><p>fdadfjakfljoeiwjoaifa<br /></p>',2,8,NULL),(2,'dfasfdaf','<p>fdafafafafd<br /></p>','2015-04-28 08:06:58',NULL,0,1,3,0,'<p>fdafafafafd<br /></p>',2,9,NULL),(3,'dfasfdaf','<p>fdafafafafd<br /></p>','2015-04-28 08:08:57',NULL,0,1,1,0,'<p>fdafafafafd<br /></p>',2,10,NULL),(4,'dfasfdaf','<p>fdafafafafd<br /></p>','2015-04-28 08:10:41',NULL,0,1,0,0,'<p>fdafafafafd<br /></p>',2,11,NULL),(5,'dzfdarf','fdafafd','2015-04-29 14:39:56',NULL,0,1,0,0,'<p>fdadfaffdafadffdaf<br /></p>',3,13,NULL),(6,'fdafdafda','fdadfafafdafadff','2015-04-29 14:40:20',NULL,0,1,1,0,'<p>fdafafdafadfadfs<br /></p>',3,14,NULL),(7,'xxxxxxxxxxxxxx','我校帮扶哈尔滨煤矿电器厂困难职','2015-04-30 13:10:16',NULL,0,1,2,0,'<div id=\"vsb_content_2\" class=\"c44322_content\"><p>我校帮扶哈尔滨煤矿电器厂困难职工启动大会于1月16日上午在煤研所会议室召开。会议由煤研所所长彭国军主持，校党委书记申林，校党委常委、工会主席毕广民，校工会常务副主席吴云鹏，帮扶单位的工会主席，被帮扶的电器厂困难职工和煤研所中层以上干部参加会议。</p><p>会议首先由校党委常委、工会主席毕广民宣读帮扶哈尔滨煤矿电器厂困难职工与帮扶单位的对接名单，参加本轮帮扶的单位有矿业工程学���、管理学院、经济学院、建筑工程学院、人文学院、计算机学院、理学院、外国语学院和体育部。</p><p>会上，校党委书记申林做了重要讲话。他指出虽然受煤炭市场影响，电器厂出现暂时困难，从体制上改变困难局面还需要历经一定的过程，但是我们是一家人，一家人就得有难同当、有福同享；他号召广大职工相信学校，有学校党委的正确领导和帮扶单位的共同努力，我们一定能够齐心协力共度难关。申书记的讲话感动了在场的煤研所职工，并博得热烈的掌声。最后，彭国军代表煤研所全体职工对学校党委的真挚关怀和九个帮扶单位的热情帮助表达了衷心的感谢。</p><p>启动大会结束后，各帮扶单位的工会主席与困难职工进行了“一对一”的对接。</p><p style=\"text-align:center;\"><img src=\"http://www.usth.edu.cn/_mediafile/test/2015/01/16/2qdss3ko25.jpg\" width=\"480\" align=\"middle\" border=\"0\" /></p><p style=\"text-align:center;\"><img src=\"http://www.usth.edu.cn/_mediafile/test/2015/01/16/1t1hxnno2b.jpg\" width=\"480\" align=\"middle\" border=\"0\" /></p><p style=\"text-align:center;\"> </p></div>',2,15,NULL),(9,'非打发打发','凡达发发发发凡达发','2015-04-30 23:22:33',NULL,1,1,1,0,'<p>凡达发发发发凡达发凡达发发发发凡达发凡达发发发发凡达发凡达发发发发凡达发<br /></p>',24,17,NULL),(10,'凡达发','发发发凡达发','2015-04-30 23:39:11',NULL,0,1,3,0,'<p>凡达发凡达发<br /></p>',24,18,NULL),(11,'凡达发','放大放大 ','2015-04-30 23:45:30',NULL,0,1,3,0,'<p>凡达发发发呆发<br /></p>',24,NULL,NULL),(12,'公司多个省份','发发','2015-05-01 00:01:59',NULL,0,1,0,0,'<p>达到发放凡达发<br /></p>',18,NULL,NULL),(13,'到达事发凡达发','放大放大','2015-05-01 00:23:45',NULL,0,1,2,1,'<p>的发发发啊发放发达省份<br /></p>',24,NULL,NULL);

/*Table structure for table `base_passagepic` */

DROP TABLE IF EXISTS `base_passagepic`;

CREATE TABLE `base_passagepic` (
  `id` int(11) NOT NULL auto_increment,
  `old_name` varchar(108) NOT NULL,
  `new_name` varchar(64) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_passagepic` */

insert  into `base_passagepic`(`id`,`old_name`,`new_name`) values (1,'Picture 72678287.jpg','3900154f-ed79-11e4-aaed-24fd52a4b83c.jpg'),(2,'Picture 72678287.jpg','3900154f-ed79-11e4-aaed-24fd52a4b83c.jpg'),(3,'Picture 72678287.jpg','3900154f-ed79-11e4-aaed-24fd52a4b83c.jpg'),(4,'Picture 72678287.jpg','3900154f-ed79-11e4-aaed-24fd52a4b83c.jpg'),(5,'Picture 72678287.jpg','3900154f-ed79-11e4-aaed-24fd52a4b83c.jpg'),(6,'Picture 72678287.jpg','3900154f-ed79-11e4-aaed-24fd52a4b83c.jpg'),(7,'Picture 72678287.jpg','3900154f-ed79-11e4-aaed-24fd52a4b83c.jpg'),(8,'Picture 72678287.jpg','3900154f-ed79-11e4-aaed-24fd52a4b83c.jpg'),(9,'Picture 72669879.jpg','84e23670-ed7d-11e4-b5b3-24fd52a4b83c.jpg'),(10,'Picture 72669879.jpg','84e23670-ed7d-11e4-b5b3-24fd52a4b83c.jpg'),(11,'Picture 72669879.jpg','84e23670-ed7d-11e4-b5b3-24fd52a4b83c.jpg'),(12,'Picture 72669879.jpg','84e23670-ed7d-11e4-b5b3-24fd52a4b83c.jpg'),(13,'Picture 72666319.jpg','9870cecf-ee7d-11e4-b347-24fd52a4b83c.jpg'),(14,'Picture 72678511.jpg','a4601340-ee7d-11e4-b19d-24fd52a4b83c.jpg'),(15,'Picture 72666319.jpg','3bba152e-ef3a-11e4-b33b-24fd52a4b83c.jpg'),(16,'Picture 72678287.jpg','76997e70-ef3a-11e4-bc18-24fd52a4b83c.jpg'),(17,'Picture 72678287.jpg','693c788f-ef8f-11e4-a83f-24fd52a4b83c.jpg'),(18,'Picture 72678287.jpg','1496370f-ef92-11e4-b820-24fd52a4b83c.jpg');

/*Table structure for table `base_reply` */

DROP TABLE IF EXISTS `base_reply`;

CREATE TABLE `base_reply` (
  `id` int(11) NOT NULL auto_increment,
  `create_date` datetime NOT NULL,
  `content` longtext NOT NULL,
  `passage_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `base_reply_525c9ec5` (`passage_id`),
  KEY `base_reply_e8701ad4` (`user_id`),
  CONSTRAINT `base_reply_user_id_475b859d_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`),
  CONSTRAINT `base_reply_passage_id_2d986139_fk_base_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `base_passage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_reply` */

insert  into `base_reply`(`id`,`create_date`,`content`,`passage_id`,`user_id`) values (1,'2015-04-30 23:16:38','fdafafd',1,NULL),(2,'2015-04-30 23:18:57','我此奥',1,NULL),(3,'2015-05-01 00:23:00','大发放',11,NULL),(4,'2015-05-01 00:23:03','凡达发',11,NULL),(5,'2015-05-01 00:23:06','凡达发',11,NULL),(6,'2015-05-01 00:34:33','凡达发发发的',13,NULL),(7,'2015-05-01 00:35:51','凡达发',1,NULL);

/*Table structure for table `base_role` */

DROP TABLE IF EXISTS `base_role`;

CREATE TABLE `base_role` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `description` varchar(108) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_role` */

insert  into `base_role`(`id`,`name`,`description`) values (1,'管理员','有所有的权限'),(2,'老师','储存槽');

/*Table structure for table `base_user` */

DROP TABLE IF EXISTS `base_user`;

CREATE TABLE `base_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` varchar(11) default NULL,
  `email` varchar(64) default NULL,
  `create_date` datetime NOT NULL,
  `statu` int(11) NOT NULL,
  `role_id` int(11) default NULL,
  `number` varchar(10) default NULL,
  PRIMARY KEY  (`id`),
  KEY `base_user_84566833` (`role_id`),
  CONSTRAINT `base_user_role_id_63284298_fk_base_role_id` FOREIGN KEY (`role_id`) REFERENCES `base_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_user` */

insert  into `base_user`(`id`,`username`,`password`,`phone`,`email`,`create_date`,`statu`,`role_id`,`number`) values (3,'yellowcong','admin','','','2015-04-18 00:52:30',1,1,'1231313333'),(4,'admin','root','15335661939','','2015-04-18 00:54:12',1,1,'1314131432'),(5,'object','root',NULL,NULL,'2015-04-18 00:57:01',1,1,'11111'),(6,'非阿发万人纷扰','2414124141','','','2015-04-18 11:17:04',1,1,'2414124141'),(7,'1111122222','1111122222','','','2015-04-18 11:23:05',1,NULL,'1111122222'),(8,'笑嘻嘻笑嘻嘻','1234512345','','','2015-04-18 11:26:49',1,1,'1234512345'),(9,'1234512345','1234512345','','','2015-04-18 11:31:21',1,NULL,'1234512345'),(11,'1234512345','1234512345','','xxxxxx@qq.com','2015-04-18 12:13:09',1,NULL,'1234512345'),(12,'细虚线','1111113444','','','2015-04-18 12:40:46',1,2,'1111113444');

/*Table structure for table `base_webinfo` */

DROP TABLE IF EXISTS `base_webinfo`;

CREATE TABLE `base_webinfo` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `webSite` varchar(64) NOT NULL,
  `recordCode` varchar(64) default NULL,
  `address` varchar(200) default NULL,
  `zipCode` varchar(30) default NULL,
  `phone` varchar(30) default NULL,
  `email` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_webinfo` */

insert  into `base_webinfo`(`id`,`name`,`webSite`,`recordCode`,`address`,`zipCode`,`phone`,`email`) values (1,'环境与化工学院管网','www.yellowcong.com','88888888','黑龙江省哈尔滨市松浦区2468','432400','18645171561','717350389@qq.com'),(2,'','','','','','','');

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) default NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`name`,`app_label`,`model`) values (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'user','base','user'),(8,'role','base','role'),(9,'group','base','group'),(10,'channel','base','channel'),(11,'group channel','base','groupchannel'),(12,'group user','base','groupuser'),(13,'attachment','base','attachment'),(14,'passage pic','base','passagepic'),(15,'index pic','base','indexpic'),(16,'passage','base','passage'),(17,'reply','base','reply'),(18,'web info','base','webinfo');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL auto_increment,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2015-04-16 14:49:06'),(2,'auth','0001_initial','2015-04-16 14:49:09'),(3,'admin','0001_initial','2015-04-16 14:49:10'),(4,'base','0001_initial','2015-04-16 14:49:17'),(5,'base','0002_user_number','2015-04-16 14:49:17'),(6,'sessions','0001_initial','2015-04-16 14:49:17'),(7,'base','0003_auto_20150416_2250','2015-04-16 14:51:36'),(8,'base','0004_auto_20150418_0829','2015-04-18 00:30:06'),(9,'base','0005_auto_20150418_0831','2015-04-18 00:31:40'),(10,'base','0006_auto_20150418_1057','2015-04-18 02:58:20'),(11,'base','0007_auto_20150424_0605','2015-04-23 22:05:59'),(12,'base','0008_auto_20150424_0608','2015-04-23 22:08:27'),(13,'base','0009_auto_20150425_1403','2015-04-25 06:04:35'),(14,'base','0002_auto_20150428_1045','2015-04-28 02:46:53'),(15,'base','0003_auto_20150428_1553','2015-04-28 07:54:36'),(16,'base','0004_webinfo','2015-04-29 02:37:54'),(17,'base','0005_auto_20150501_0712','2015-04-30 23:13:09'),(18,'base','0006_auto_20150501_0743','2015-04-30 23:44:50');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('1mz39w8l0u1wgucvbw6zapsgk15zr5hm','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-19 00:30:01'),('1svaqd8721f1ft5own6s11261u5ui3sj','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-29 14:55:09'),('6dpuecotg2ihjwmwzh7grpy5t8av5mz4','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-22 04:03:58'),('6t7w50jzjqfj0yj7ge6idhhf4tms8cmj','ODEzMjI1MmUwMTg0ZGVkNzUzM2FhOTM1ZmU5ZWVjMTAzYzYxZTVhMTqAAn1xAVUJbG9naW5Vc2VyY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxAlUEYmFzZXEDVQRVc2VycQSGXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEGfXEHKFUIdXNlcm5hbWVxCFgVAAAA6Z2e6Zi/5Y+R5LiH5Lq657q35omwVQVzdGF0dXEJigEBVQtjcmVhdGVfZGF0ZXEKY2RhdGV0aW1lCmRhdGV0aW1lCnELVQoH3wQSCxEEAAAAY2RqYW5nby51dGlscy50aW1lem9uZQpVVEMKcQwpUnENhlJxDlUHcm9sZV9pZHEPigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-05-02 01:22:31'),('8cttac18fwq6ajd5m6eufn87gjw6a410','NjU4NTMyOWI3NzNjNzAyODkwODQ4Yzg0ZWQ3OWUzNDZmYjI5ZTZiNzqAAn1xAVUJbG9naW5Vc2VyY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxAlUEYmFzZXEDVQRVc2VycQSGXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEGfXEHKFUIdXNlcm5hbWVxCFgKAAAAeWVsbG93Y29uZ1UFc3RhdHVxCYoBAVULY3JlYXRlX2RhdGVxCmNkYXRldGltZQpkYXRldGltZQpxC1UKB98EEBcKLwAAAGNkamFuZ28udXRpbHMudGltZXpvbmUKVVRDCnEMKVJxDYZScQ5VB3JvbGVfaWRxD4oBAVUGX3N0YXRlcRBjZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUKcREpgXESfXETKFUGYWRkaW5ncRSJVQJkYnEVVQdkZWZhdWx0cRZ1YlUGbnVtYmVycRdYCgAAADExMTExMTExMTFVBWVtYWlscRhYEAAAADcxNzM1MDM4OUBxcS5jb21VBXBob25lcRlYCwAAADE4NjQ1MTcxNTYxVQhwYXNzd29yZHEaWAoAAAAxMTExMTExMTExVQJpZHEbigECdWJzLg==','2015-04-18 07:06:33'),('all29cj0ejatu9uprsx7pu8379rtqb8c','YmIzMDA3NTQxYzFjOGE5NWMwNGNjODQ2ZTE5ODQ0NjY2NzZkZTAxYzqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWAoAAAB5ZWxsb3djb25nVQVzdGF0dXEKigEBVQtjcmVhdGVfZGF0ZXELY2RhdGV0aW1lCmRhdGV0aW1lCnEMVQoH3wQQFwovAAAAY2RqYW5nby51dGlscy50aW1lem9uZQpVVEMKcQ0pUnEOhlJxD1UHcm9sZV9pZIoBAVUGX3N0YXRlcRBjZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUKcREpgXESfXETKFUGYWRkaW5ncRSJVQJkYnEVVQdkZWZhdWx0cRZ1YlUGbnVtYmVycRdYCgAAADExMTExMTExMTFVBWVtYWlscRhYEAAAADcxNzM1MDM4OUBxcS5jb21VBXBob25lcRlYCwAAADE4NjQ1MTcxNTYxVQhwYXNzd29yZHEaWAoAAAAxMTExMTExMTExVQJpZHEbigECdWJzLg==','2015-04-18 10:21:06'),('drcvuiucxp91hzeeh1t0lzvx48kf4ppr','ODEzMjI1MmUwMTg0ZGVkNzUzM2FhOTM1ZmU5ZWVjMTAzYzYxZTVhMTqAAn1xAVUJbG9naW5Vc2VyY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxAlUEYmFzZXEDVQRVc2VycQSGXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEGfXEHKFUIdXNlcm5hbWVxCFgVAAAA6Z2e6Zi/5Y+R5LiH5Lq657q35omwVQVzdGF0dXEJigEBVQtjcmVhdGVfZGF0ZXEKY2RhdGV0aW1lCmRhdGV0aW1lCnELVQoH3wQSCxEEAAAAY2RqYW5nby51dGlscy50aW1lem9uZQpVVEMKcQwpUnENhlJxDlUHcm9sZV9pZHEPigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-21 03:14:45'),('e4uq46flyogz0sxfjatpqaklvt6ykjeg','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-30 13:33:27'),('g0yu3mhpst3wdo2umy8vsgqmgk9y6usk','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-18 22:48:09'),('g870wgldeme9denrk3om5q33amtjunur','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-29 06:44:06'),('hm10ivk53pukovpt9b17ax7atatq8f2b','NjU4NTMyOWI3NzNjNzAyODkwODQ4Yzg0ZWQ3OWUzNDZmYjI5ZTZiNzqAAn1xAVUJbG9naW5Vc2VyY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxAlUEYmFzZXEDVQRVc2VycQSGXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEGfXEHKFUIdXNlcm5hbWVxCFgKAAAAeWVsbG93Y29uZ1UFc3RhdHVxCYoBAVULY3JlYXRlX2RhdGVxCmNkYXRldGltZQpkYXRldGltZQpxC1UKB98EEBcKLwAAAGNkamFuZ28udXRpbHMudGltZXpvbmUKVVRDCnEMKVJxDYZScQ5VB3JvbGVfaWRxD4oBAVUGX3N0YXRlcRBjZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUKcREpgXESfXETKFUGYWRkaW5ncRSJVQJkYnEVVQdkZWZhdWx0cRZ1YlUGbnVtYmVycRdYCgAAADExMTExMTExMTFVBWVtYWlscRhYEAAAADcxNzM1MDM4OUBxcS5jb21VBXBob25lcRlYCwAAADE4NjQ1MTcxNTYxVQhwYXNzd29yZHEaWAoAAAAxMTExMTExMTExVQJpZHEbigECdWJzLg==','2015-04-18 06:07:38'),('hzeoeq91opnspglje26phk22ytot992k','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-05-01 01:24:35'),('kslesptes2t9zw3lcn8g41aosqjcyzkz','OWI5M2M4MWExZDM5YTU0NTBjMjVlMGM5NTllNzEzODU2MTQyMjU3ZjqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkcRCKAQFVBl9zdGF0ZXERY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpNb2RlbFN0YXRlCnESKYFxE31xFChVBmFkZGluZ3EViVUCZGJxFlUHZGVmYXVsdHEXdWJVBm51bWJlcnEYWAoAAAAyNDE0MTI0MTQxVQVlbWFpbHEZWAAAAABVBXBob25lcRpYAAAAAFUIcGFzc3dvcmRxG1gKAAAAMjQxNDEyNDE0MVUCaWRxHIoBBnVicy4=','2015-04-28 09:22:03'),('q9xw52t7biy2igg0zcq2oks1v8qrdj77','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-27 15:37:50'),('qb31ipfsyejgt3jlhs7ihznqzc795eil','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-05-01 00:53:22'),('qvvxe6db9rj5ctflr4qwooifodsoblcx','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-25 03:50:53'),('swjsukjeu156ham4yppe77zv3c00u1el','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-30 23:49:15'),('ucbdbd8sl6cfos6gxffu6r692dp2zl2t','YmQ5N2YwNTliYjMzMDZjZTYwOTA0ZTFlNGFjZjZjNDg1ZGY5ZWYyZjqAAn1xAVUJbG9naW5Vc2VyY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxAlUEYmFzZXEDVQRVc2VycQSGXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEGfXEHKFUIdXNlcm5hbWVxCFgKAAAAeWVsbG93Y29uZ1UFc3RhdHVxCYoBAVULY3JlYXRlX2RhdGVxCmNkYXRldGltZQpkYXRldGltZQpxC1UKB98EEBY0JgAAAGNkamFuZ28udXRpbHMudGltZXpvbmUKVVRDCnEMKVJxDYZScQ5VB3JvbGVfaWRxD4oBAVUGX3N0YXRlcRBjZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUKcREpgXESfXETKFUGYWRkaW5ncRSJVQJkYnEVVQdkZWZhdWx0cRZ1YlUGbnVtYmVycRdYCgAAADg4ODg4ODg4ODhVBWVtYWlscRhYEAAAADcxNzM1MDM4OUBxcS5jb21VBXBob25lcRlYCwAAADE4NjQ1MTcxNTYxVQhwYXNzd29yZHEaWAoAAAA4ODg4ODg4ODg4VQJpZHEbigEBdWJzLg==','2015-04-17 23:48:05'),('wcf6p436n7brnzppbuo6q8tbw8immib1','YWFhYTlmNWNlMDM1ZmJlZGJhY2EyOWIxNGU5ODEwOGRhNzE3MWViZDqAAn1xAVUJbG9naW5Vc2VycQJjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnEDVQRiYXNlcQRVBFVzZXJxBYZdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxBodScQd9cQgoVQh1c2VybmFtZXEJWBUAAADpnZ7pmL/lj5HkuIfkurrnurfmibBVBXN0YXR1cQqKAQFVC2NyZWF0ZV9kYXRlcQtjZGF0ZXRpbWUKZGF0ZXRpbWUKcQxVCgffBBILEQQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxDSlScQ6GUnEPVQdyb2xlX2lkigEBVQZfc3RhdGVxEGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxESmBcRJ9cRMoVQZhZGRpbmdxFIlVAmRicRVVB2RlZmF1bHRxFnViVQZudW1iZXJxF1gKAAAAMjQxNDEyNDE0MVUFZW1haWxxGFgAAAAAVQVwaG9uZXEZWAAAAABVCHBhc3N3b3JkcRpYCgAAADI0MTQxMjQxNDFVAmlkcRuKAQZ1YnMu','2015-04-23 12:07:19'),('ztkoxq9huripok0j4kv3s8zjenczat56','NjU4NTMyOWI3NzNjNzAyODkwODQ4Yzg0ZWQ3OWUzNDZmYjI5ZTZiNzqAAn1xAVUJbG9naW5Vc2VyY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxAlUEYmFzZXEDVQRVc2VycQSGXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEGfXEHKFUIdXNlcm5hbWVxCFgKAAAAeWVsbG93Y29uZ1UFc3RhdHVxCYoBAVULY3JlYXRlX2RhdGVxCmNkYXRldGltZQpkYXRldGltZQpxC1UKB98EEBcKLwAAAGNkamFuZ28udXRpbHMudGltZXpvbmUKVVRDCnEMKVJxDYZScQ5VB3JvbGVfaWRxD4oBAVUGX3N0YXRlcRBjZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUKcREpgXESfXETKFUGYWRkaW5ncRSJVQJkYnEVVQdkZWZhdWx0cRZ1YlUGbnVtYmVycRdYCgAAADExMTExMTExMTFVBWVtYWlscRhYEAAAADcxNzM1MDM4OUBxcS5jb21VBXBob25lcRlYCwAAADE4NjQ1MTcxNTYxVQhwYXNzd29yZHEaWAoAAAAxMTExMTExMTExVQJpZHEbigECdWJzLg==','2015-04-18 03:56:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
