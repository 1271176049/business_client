-- MySQL dump 10.13  Distrib 5.5.45, for Win64 (x86)
--
-- Host: localhost    Database: bussness
-- ------------------------------------------------------
-- Server version	5.5.45-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_mall_act`
--

DROP TABLE IF EXISTS `t_mall_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_act` (
  `Id` int(11) NOT NULL COMMENT '编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_act`
--

LOCK TABLES `t_mall_act` WRITE;
/*!40000 ALTER TABLE `t_mall_act` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_act` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_address`
--

DROP TABLE IF EXISTS `t_mall_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_address` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `yh_dz` varchar(100) DEFAULT NULL COMMENT '用户地址',
  `dzzt` varchar(1) DEFAULT '1' COMMENT '地址状态',
  `yh_id` varchar(100) DEFAULT NULL COMMENT '用户id',
  `shjr` varchar(100) DEFAULT NULL COMMENT '收件人',
  `lxfsh` varchar(100) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_address`
--

LOCK TABLES `t_mall_address` WRITE;
/*!40000 ALTER TABLE `t_mall_address` DISABLE KEYS */;
INSERT INTO `t_mall_address` VALUES (1,'高老庄','1','1','八戒','12312312313'),(2,'流沙河','1','1','沙僧','12312312313'),(3,'东土大唐','1','1','师傅','12312312313'),(4,'sfsff','1','1','sdfsdf',NULL),(5,'花果山','1','6','猴哥','123123123123'),(6,'天竺寺','1','6','莱哥','123123123123');
/*!40000 ALTER TABLE `t_mall_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_attr`
--

DROP TABLE IF EXISTS `t_mall_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_attr` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `shxm_mch` varchar(100) DEFAULT NULL COMMENT '属性名称',
  `shfqy` varchar(1) DEFAULT '1' COMMENT '是否启用',
  `flbh2` int(11) DEFAULT NULL COMMENT '分类编号2',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='属性名表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_attr`
--

LOCK TABLES `t_mall_attr` WRITE;
/*!40000 ALTER TABLE `t_mall_attr` DISABLE KEYS */;
INSERT INTO `t_mall_attr` VALUES (13,'分辨率','1',28,'2017-04-12 08:39:25'),(14,'尺寸','1',28,'2017-04-12 08:39:25'),(15,'类型','1',28,'2017-04-12 08:39:25'),(16,'色差','1',28,'2017-04-12 08:39:25'),(17,'功耗','1',28,'2017-04-12 08:39:25'),(18,'螺旋桨','1',54,'2017-04-12 09:36:49'),(19,'发动机','1',54,'2017-04-12 09:36:49'),(20,'拍摄像素','1',54,'2017-04-12 09:36:49'),(21,'武器','1',54,'2017-04-12 09:36:49'),(22,'体积','1',54,'2017-04-12 09:36:49'),(23,'屏幕类型','1',28,'2017-04-15 01:06:35'),(24,'VR效果','1',28,'2017-06-30 07:59:36'),(25,'显宽','1',28,'2017-09-14 02:55:34'),(26,'显高','1',28,'2017-09-14 02:55:57'),(27,'显宽','1',28,'2017-09-14 02:56:56'),(28,'显宽','1',28,'2017-09-14 02:59:12'),(29,'显宽','1',28,'2017-09-14 02:59:44'),(30,'显高','1',28,'2017-09-14 02:59:44'),(31,'显宽','1',28,'2017-09-14 03:00:11'),(32,'显高','1',28,'2017-09-14 03:00:27'),(33,'内存','1',17,'2017-10-11 04:01:04'),(34,'处理器','1',17,'2017-10-11 04:01:05'),(35,'游戏本属性1','1',17,'2017-10-11 04:05:23'),(36,'游戏本属性2','1',17,'2017-10-11 04:06:01'),(37,'速度','1',29,'2017-11-01 09:06:31'),(38,'滚轮','1',29,'2017-11-01 09:07:58'),(39,'123','1',15,'2017-11-22 12:02:06'),(40,'123','1',15,'2017-11-22 12:02:06'),(41,'123123','1',15,'2017-11-22 12:05:40'),(42,'123','1',15,'2017-11-22 12:05:40'),(43,'身高','1',55,'2017-11-25 08:35:44'),(44,'体重','1',55,'2017-11-25 08:35:44'),(45,'特别属性1','1',28,'2017-11-28 00:52:04'),(46,'特别属性2','1',28,'2017-11-28 00:52:04'),(47,'三位','1',55,'2017-11-28 00:58:02'),(48,'颜值','1',55,'2017-11-28 00:58:03'),(49,NULL,'1',12,'2017-11-29 03:53:29'),(50,NULL,'1',12,'2017-11-29 03:53:29'),(51,'处理器a','1',17,'2017-12-16 02:26:44'),(52,'显卡a','1',17,'2017-12-16 02:27:37'),(58,'高级属性','1',11,'2017-12-16 09:47:57'),(59,'散热性','1',11,'2017-12-16 09:47:57'),(60,'','1',12,'2017-12-16 09:50:20'),(61,'','1',12,'2017-12-16 09:50:20'),(62,'23','1',12,'2017-12-16 09:50:29'),(63,'234','1',12,'2017-12-16 09:50:29'),(64,'高级属性','1',28,'2017-12-16 13:19:21'),(65,'散热性','1',28,'2017-12-16 13:19:22'),(66,'高级属性','1',28,'2017-12-19 05:55:18'),(67,'散热性','1',28,'2017-12-19 05:55:18'),(68,'萌属性','1',28,'2017-12-19 06:21:23'),(69,'硬度','1',28,'2017-12-19 06:21:23'),(70,'高','1',28,'2017-12-19 06:25:08'),(71,'散','1',28,'2017-12-19 06:25:08');
/*!40000 ALTER TABLE `t_mall_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_ck_info`
--

DROP TABLE IF EXISTS `t_mall_ck_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_ck_info` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `ck_mch` varchar(100) DEFAULT NULL COMMENT '仓库名称',
  `ck_dz` varchar(100) DEFAULT NULL COMMENT '仓库地址',
  `ck_lx` varchar(1) DEFAULT NULL COMMENT '仓库类型',
  `ck_mj` double DEFAULT NULL COMMENT '占地面积',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_ck_info`
--

LOCK TABLES `t_mall_ck_info` WRITE;
/*!40000 ALTER TABLE `t_mall_ck_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_ck_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_class_1`
--

DROP TABLE IF EXISTS `t_mall_class_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_class_1` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flmch1` varchar(11) DEFAULT NULL COMMENT '分类名称1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='分类1表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_class_1`
--

LOCK TABLES `t_mall_class_1` WRITE;
/*!40000 ALTER TABLE `t_mall_class_1` DISABLE KEYS */;
INSERT INTO `t_mall_class_1` VALUES (6,'服装鞋帽'),(7,'家用电器'),(8,'电脑办公'),(9,'清洁用品'),(10,'母婴玩具'),(11,'手机数码'),(12,'图书音像'),(13,'鞋靴箱包'),(14,'户外钟表'),(15,'食品烟酒');
/*!40000 ALTER TABLE `t_mall_class_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_class_2`
--

DROP TABLE IF EXISTS `t_mall_class_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_class_2` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flmch2` varchar(4000) DEFAULT NULL COMMENT '分类名称2',
  `flbh1` int(11) DEFAULT NULL COMMENT '分类编号1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='分类2表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_class_2`
--

LOCK TABLES `t_mall_class_2` WRITE;
/*!40000 ALTER TABLE `t_mall_class_2` DISABLE KEYS */;
INSERT INTO `t_mall_class_2` VALUES (11,'男装',6),(12,'女装',6),(13,'童装',6),(14,'冰箱',7),(15,'洗衣机',7),(16,'笔记本',8),(17,'游戏本',8),(18,'洗发',9),(19,'护肤',9),(20,'牙膏牙刷',9),(21,'内衣',6),(22,'配饰',6),(23,'电视',7),(24,'空调',7),(25,'手机',11),(26,'数码相机',11),(27,'耳机',11),(28,'显示器',8),(29,'鼠标',8),(30,'键盘',8),(31,'路由器',8),(32,'平板电脑',8),(33,'时尚女鞋',13),(34,'流行男鞋',13),(35,'箱包',13),(36,'音箱',12),(37,'教材',12),(38,'杂志',12),(39,'电子书',12),(40,'科学纪录片',12),(41,'游戏机',11),(42,'奶粉',10),(43,'玩具',10),(44,'婴儿车',10),(45,'乐器',10),(46,'跑步机',14),(47,'钟表',14),(48,'球类',14),(49,'乐器',14),(50,'钓鱼用品',14),(51,'水果',15),(52,'中外名酒',15),(53,'茶类',15),(54,'飞机',7),(55,'其他',7);
/*!40000 ALTER TABLE `t_mall_class_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_class_test`
--

DROP TABLE IF EXISTS `t_mall_class_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_class_test` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT '编号',
  `flmch1` varchar(11) DEFAULT NULL COMMENT '分类名称1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_class_test`
--

LOCK TABLES `t_mall_class_test` WRITE;
/*!40000 ALTER TABLE `t_mall_class_test` DISABLE KEYS */;
INSERT INTO `t_mall_class_test` VALUES (6,'服装鞋帽'),(7,'家用电器'),(8,'电脑办公'),(9,'清洁用品'),(10,'母婴玩具'),(11,'手机数码'),(12,'图书音像'),(13,'鞋靴箱包'),(14,'户外钟表'),(15,'食品烟酒'),(6,'服装鞋帽'),(7,'家用电器'),(8,'电脑办公'),(9,'清洁用品'),(10,'母婴玩具'),(11,'手机数码'),(12,'图书音像'),(13,'鞋靴箱包'),(14,'户外钟表'),(15,'食品烟酒');
/*!40000 ALTER TABLE `t_mall_class_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_comment_image`
--

DROP TABLE IF EXISTS `t_mall_comment_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_comment_image` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `pl_id` int(11) DEFAULT NULL COMMENT '评论id',
  `url` varchar(100) DEFAULT NULL COMMENT '图片地址',
  `chjshj` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_comment_image`
--

LOCK TABLES `t_mall_comment_image` WRITE;
/*!40000 ALTER TABLE `t_mall_comment_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_comment_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_flow`
--

DROP TABLE IF EXISTS `t_mall_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_flow` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `psfsh` varchar(100) DEFAULT '硅谷快递' COMMENT '配送方式',
  `psshj` datetime DEFAULT NULL COMMENT '配送时间',
  `psmsh` varchar(100) DEFAULT NULL COMMENT '配送描述',
  `yh_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dd_id` int(11) DEFAULT NULL COMMENT '订单id',
  `mqdd` varchar(100) DEFAULT '尚未出库' COMMENT '目前地点',
  `mdd` varchar(100) DEFAULT NULL COMMENT '目的地',
  `ywy` varchar(100) DEFAULT NULL COMMENT '业务员',
  `lxfsh` varchar(100) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='物流表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_flow`
--

LOCK TABLES `t_mall_flow` WRITE;
/*!40000 ALTER TABLE `t_mall_flow` DISABLE KEYS */;
INSERT INTO `t_mall_flow` VALUES (20,'尚快递',NULL,NULL,6,'2017-12-12 03:51:30',17,'商品未出库',NULL,NULL,NULL),(21,'尚快递',NULL,NULL,6,'2017-12-12 03:52:18',17,'商品未出库',NULL,NULL,NULL),(22,'尚快递',NULL,NULL,6,'2017-12-12 03:52:18',17,'商品未出库',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_mall_flow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_flow_info`
--

DROP TABLE IF EXISTS `t_mall_flow_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_flow_info` (
  `Id` int(11) NOT NULL COMMENT '编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物流信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_flow_info`
--

LOCK TABLES `t_mall_flow_info` WRITE;
/*!40000 ALTER TABLE `t_mall_flow_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_flow_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_minicar`
--

DROP TABLE IF EXISTS `t_mall_minicar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_minicar` (
  `Id` int(11) NOT NULL COMMENT '编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='迷你购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_minicar`
--

LOCK TABLES `t_mall_minicar` WRITE;
/*!40000 ALTER TABLE `t_mall_minicar` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_minicar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_order`
--

DROP TABLE IF EXISTS `t_mall_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `shhr` varchar(100) DEFAULT NULL COMMENT '收货人',
  `zje` decimal(10,0) DEFAULT NULL COMMENT '总金额',
  `jdh` int(11) DEFAULT '1' COMMENT '进度号',
  `yh_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yjsdshj` datetime DEFAULT NULL COMMENT '预计送达时间',
  `dzh_id` int(11) DEFAULT NULL COMMENT '地址id',
  `dzh_mch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='订单表 订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_order`
--

LOCK TABLES `t_mall_order` WRITE;
/*!40000 ALTER TABLE `t_mall_order` DISABLE KEYS */;
INSERT INTO `t_mall_order` VALUES (17,'猴哥',21123,0,6,'2017-12-12 03:50:46',NULL,5,'花果山');
/*!40000 ALTER TABLE `t_mall_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_order_info`
--

DROP TABLE IF EXISTS `t_mall_order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dd_id` int(11) DEFAULT NULL,
  `sku_id` int(11) DEFAULT NULL,
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sku_mch` varchar(255) DEFAULT NULL,
  `shp_tp` varchar(255) DEFAULT NULL,
  `sku_jg` decimal(10,0) DEFAULT NULL,
  `sku_shl` int(11) DEFAULT NULL,
  `sku_kcdz` varchar(255) DEFAULT NULL,
  `flow_id` int(11) DEFAULT NULL COMMENT '物流id',
  `gwch_id` int(11) DEFAULT NULL COMMENT '购物车id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_order_info`
--

LOCK TABLES `t_mall_order_info` WRITE;
/*!40000 ALTER TABLE `t_mall_order_info` DISABLE KEYS */;
INSERT INTO `t_mall_order_info` VALUES (24,NULL,18,'2017-12-12 03:52:01','外星人iso屏幕显示器','1492090350000u=1238273040,2060575675&fm=23&gp=0.jpg',1000,1,'昌平区北七家上硅谷',20,10),(25,NULL,16,'2017-12-12 03:52:18','外星人非曲面高端45寸显示器','1492090350000u=1238273040,2060575675&fm=23&gp=0.jpg',20000,1,'昌平区北七家大仓库',21,11),(26,NULL,41,'2017-12-12 03:52:18','测试商品2','1491986072915u=3073007440,1268514512&fm=23&gp=0.jpg',123,1,'北七家大仓库',22,12);
/*!40000 ALTER TABLE `t_mall_order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_order_phase`
--

DROP TABLE IF EXISTS `t_mall_order_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_order_phase` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `jdh` int(11) DEFAULT NULL COMMENT '进度号',
  `jdmsh` varchar(100) DEFAULT NULL COMMENT '进度描述',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='订单进度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_order_phase`
--

LOCK TABLES `t_mall_order_phase` WRITE;
/*!40000 ALTER TABLE `t_mall_order_phase` DISABLE KEYS */;
INSERT INTO `t_mall_order_phase` VALUES (1,1,'订单已提交'),(2,2,'订单已支付'),(3,3,'运输途中'),(4,4,'订单签收'),(5,5,'完成');
/*!40000 ALTER TABLE `t_mall_order_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_pay_flow_info_log`
--

DROP TABLE IF EXISTS `t_mall_pay_flow_info_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_pay_flow_info_log` (
  `Id` int(11) NOT NULL COMMENT '编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易流水日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_pay_flow_info_log`
--

LOCK TABLES `t_mall_pay_flow_info_log` WRITE;
/*!40000 ALTER TABLE `t_mall_pay_flow_info_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_pay_flow_info_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_product`
--

DROP TABLE IF EXISTS `t_mall_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `shp_mch` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `shp_tp` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `flbh1` int(11) DEFAULT NULL COMMENT '分类编号1',
  `flbh2` int(11) DEFAULT NULL COMMENT '分类编号2',
  `pp_id` int(11) DEFAULT NULL COMMENT '品牌id',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `shp_msh` varchar(1000) DEFAULT NULL COMMENT '商品描述',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_product`
--

LOCK TABLES `t_mall_product` WRITE;
/*!40000 ALTER TABLE `t_mall_product` DISABLE KEYS */;
INSERT INTO `t_mall_product` VALUES (6,'联想高端系列显示器','1491985960210u=1986847822,526015344&fm=23&gp=0.jpg',8,28,2,'2017-04-12 08:32:40','高配置，土豪的定制，联想高端系列显示器'),(7,'联想中低端系列显示器','1491986072915u=3073007440,1268514512&fm=23&gp=0.jpg',8,28,2,'2017-04-12 08:34:32','高性价比，高配置，老百姓的首选'),(8,'联想低端系列显示器','1491986138116u=2528461445,241269007&fm=23&gp=0.jpg',8,28,2,'2017-04-12 08:35:38','低价格，很贴心，有品质'),(9,'华为I系列纯平显示器','1492090141522u=3279637596,1383743164&fm=23&gp=0.jpg',8,28,18,'2017-04-13 13:29:01','华为品牌，中国品质'),(10,'华为III系列纯平显示器','1492090185160u=1986847822,526015344&fm=23&gp=0.jpg',8,28,18,'2017-04-13 13:29:45','华为品牌，中国品质,III系列'),(11,'华为II系列纯平显示器','1492090266105u=4230786066,21615376&fm=23&gp=0.jpg',8,16,18,'2017-04-13 13:31:06','华为品牌，中国品质'),(12,'外星人高端配置显示器','1492090350000u=1238273040,2060575675&fm=23&gp=0.jpg',8,28,20,'2017-04-13 13:32:30','外星人，高配置高价格'),(13,'小米II系列无人机','1492090457217u=2462024849,196539317&fm=23&gp=0.jpg',7,54,8,'2017-04-13 13:34:17','小米无人机，最黑黑科技'),(14,'美的Midea无人机','1492090512844u=536484099,1677243497&fm=23&gp=0.jpg',7,54,22,'2017-04-13 13:35:12','美的Midea无人机,除了空调还有无人机'),(15,'联想测试冰箱','1505276771919c.jpg',7,15,2,'2017-09-13 04:26:21','sadfsafdsfdsfasf'),(16,'联想测试冰箱','1505276863185c.jpg',7,15,2,'2017-09-13 04:27:43','sadfsafdsfdsfasf'),(17,'联想测试冰箱','1505277080085index.jpg',7,15,2,'2017-09-13 04:31:20','asdasd'),(18,'联想测试冰箱','1505277460886c.jpg',7,15,2,'2017-09-13 04:37:41','sdfsdfsd'),(19,'联想测试冰箱','1505277578740index.jpg',7,15,2,'2017-09-13 04:39:39','sdfsadf'),(20,'联想测试冰箱','1505277749019c.jpg',7,15,2,'2017-09-13 04:42:29','sadfsfasdf'),(21,'测试spu名称','',7,15,2,'2017-10-27 04:54:02','啊啊地方都是f'),(22,'测试spu名称','',7,15,2,'2017-10-27 04:56:20','啊啊地方都是f'),(23,'测试联想游戏本1','',8,17,2,'2017-10-28 15:00:01','测试联想游戏本1'),(24,'测试联想游戏本1','',8,17,2,'2017-10-28 15:10:23','撒旦发射点发'),(25,'联想测试i游戏本','1509440516200bbb.jpg',8,17,2,'2017-10-31 09:02:27','联想测试i游戏本'),(26,'阿斯顿','1509442392047bbb.jpg',6,13,4,'2017-10-31 09:33:12','胜多负少'),(27,'阿斯顿','1509442434888ccc.jpg',9,20,10,'2017-10-31 09:33:55','sarf '),(28,'阿斯顿','1509442646830bbb.jpg',7,23,2,'2017-10-31 09:37:27','fasdf '),(29,'联想测试游戏本1','1509531163118bbb.jpg',8,17,2,'2017-11-01 10:12:43','联想测试游戏本1'),(30,'联想测试游戏本2','1509531186541ddd.jpg',8,17,2,'2017-11-01 10:13:06','联想测试游戏本2'),(31,'随便一个商品','1509704778747a.gif',7,23,2,'2017-11-03 10:26:18','随便一个商品'),(32,'随便一个商品','1509704833747a.gif',7,24,18,'2017-11-03 10:27:14','啊大苏打'),(33,'华为abc游戏本','1509778451705ccc.jpg',8,17,18,'2017-11-04 06:54:11','华为abc游戏本'),(34,'测试商品信息1','1510540319864a.gif',7,15,2,'2017-11-13 02:32:47','测试商品信息1'),(35,'123123','1511351811863a.gif',8,28,18,'2017-11-22 11:56:52','1231313'),(36,'华为测试1','1511519573196a.gif',8,17,18,'2017-11-24 10:32:53','华为测试1'),(37,'美的女友','1511598809073u=690264292,3421773180&fm=23&gp=0.jpg',7,55,22,'2017-11-25 08:33:29','美的女友，各种款式可选'),(38,'华为人工智能女友','1511830842318u=2476027798,3173816752&fm=23&gp=0.jpg',7,55,18,'2017-11-28 01:00:42','华为人工智能女友，好啊'),(39,'测试名称1','1511843095682a.gif',7,23,2,'2017-11-28 04:25:15','手动阀手动阀'),(40,'测试商品5','1512349685158a.gif',7,55,22,'2017-12-04 01:08:05','测试商品5'),(41,'测试商品5','1512351028465a.gif',7,15,2,'2017-12-04 01:30:28','werwer'),(42,'联想XXXX系列笔记本电脑','1513306047782index.jpg',8,16,2,'2017-12-15 02:49:48','12313123'),(43,'123',NULL,6,6,3,'2017-12-16 06:46:06','124'),(44,'asdf',NULL,8,8,19,'2017-12-18 09:34:01','asd'),(45,'asd',NULL,6,6,3,'2017-12-18 09:50:39','sadf'),(46,'213',NULL,7,7,22,'2017-12-18 09:55:14','123'),(47,'-099',NULL,6,6,3,'2017-12-18 09:58:17','jj'),(48,'asd',NULL,8,8,1,'2017-12-18 10:00:15','asd'),(49,'ads',NULL,8,8,18,'2017-12-18 10:00:55','asd'),(50,'0',NULL,7,7,8,'2017-12-18 10:03:23','sfd'),(51,'qw',NULL,7,7,8,'2017-12-18 10:04:14','213'),(52,'sx',NULL,6,6,3,'2017-12-18 10:06:23','asd'),(53,'0',NULL,7,7,2,'2017-12-18 10:07:05','123'),(54,'9i',NULL,6,6,3,'2017-12-18 10:08:58','rt'),(55,'ad',NULL,6,6,3,'2017-12-18 10:11:06','ads');
/*!40000 ALTER TABLE `t_mall_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_product_color`
--

DROP TABLE IF EXISTS `t_mall_product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_product_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shp_id` int(11) DEFAULT NULL,
  `shp_ys` varchar(100) DEFAULT NULL COMMENT '商品颜色',
  `shfqy` int(11) DEFAULT NULL COMMENT '是否启用',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_product_color`
--

LOCK TABLES `t_mall_product_color` WRITE;
/*!40000 ALTER TABLE `t_mall_product_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_product_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_product_comment`
--

DROP TABLE IF EXISTS `t_mall_product_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_product_comment` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `yh_id` int(11) DEFAULT NULL COMMENT '用户id',
  `plnr` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `plshj` datetime DEFAULT NULL COMMENT '平路时间',
  `hpjb` int(11) DEFAULT NULL COMMENT '好评级别',
  `sku_id` int(11) DEFAULT NULL COMMENT 'skuid',
  `sku_mch` varchar(100) DEFAULT NULL COMMENT 'sku名称',
  `shp_id` int(11) DEFAULT NULL COMMENT '商品id',
  `shp_mch` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `dd_id` int(11) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_product_comment`
--

LOCK TABLES `t_mall_product_comment` WRITE;
/*!40000 ALTER TABLE `t_mall_product_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_product_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_product_image`
--

DROP TABLE IF EXISTS `t_mall_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_product_image` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `zy` varchar(100) DEFAULT '1' COMMENT '作用：1头图2列表图3广告图片',
  `shp_id` int(11) DEFAULT NULL COMMENT '商品id',
  `url` varchar(100) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='商品图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_product_image`
--

LOCK TABLES `t_mall_product_image` WRITE;
/*!40000 ALTER TABLE `t_mall_product_image` DISABLE KEYS */;
INSERT INTO `t_mall_product_image` VALUES (22,'',6,'1491985960210u=1986847822,526015344&fm=23&gp=0.jpg'),(23,'',6,'1491985960212u=910918644,3968938767&fm=21&gp=0.jpg'),(24,'',6,'1491985960215u=697005892,2279856665&fm=23&gp=0.jpg'),(25,'',6,'1491985960217u=1829419258,1281228148&fm=23&gp=0.jpg'),(26,'',6,'1491985960219u=1986847822,526015344&fm=23&gp=0.jpg'),(27,'',7,'14919599201082w1231.jpg'),(28,'',7,'1491986072918u=1567465564,365038548&fm=21&gp=0.jpg'),(29,'',7,'1491986072920u=1158284051,2123775206&fm=23&gp=0.jpg'),(30,'',7,'1491986072923u=2093778323,4064375747&fm=23&gp=0.jpg'),(31,'',7,'1491986072926u=768317699,2912985599&fm=23&gp=0.jpg'),(32,'',8,'149195992011212 (2).jpg'),(33,'',8,'1491986138118u=910918644,3968938767&fm=21&gp=0.jpg'),(34,'',8,'1491986138120u=2093778323,4064375747&fm=23&gp=0.jpg'),(35,'',8,'1491986138123u=697005892,2279856665&fm=23&gp=0.jpg'),(36,'',8,'1491986138125u=1567465564,365038548&fm=21&gp=0.jpg'),(37,'',9,'1492090141522u=3279637596,1383743164&fm=23&gp=0.jpg'),(38,'',9,'1492090141524u=768317699,2912985599&fm=23&gp=0.jpg'),(39,'',9,'1492090141526u=910918644,3968938767&fm=21&gp=0.jpg'),(40,'',9,'1492090141529u=4230786066,21615376&fm=23&gp=0.jpg'),(41,'',9,'1491986072915u=3073007440,1268514512&fm=23&gp=0.jpg'),(42,'',10,'1492090185160u=1986847822,526015344&fm=23&gp=0.jpg'),(43,'',10,'1492090185163u=612772251,2395823516&fm=23&gp=0.jpg'),(44,'',10,'1492090185168u=326539897,4239692692&fm=21&gp=0.jpg'),(45,'',10,'1492090185170u=768317699,2912985599&fm=23&gp=0.jpg'),(46,'',10,'1492090185173u=768317699,2912985599&fm=23&gp=0.jpg'),(47,'',11,'1492090266105u=4230786066,21615376&fm=23&gp=0.jpg'),(48,'',11,'1492090266110u=697005892,2279856665&fm=23&gp=0.jpg'),(49,'',11,'1492090266114u=326539897,4239692692&fm=21&gp=0.jpg'),(50,'',11,'1492090266117u=768317699,2912985599&fm=23&gp=0.jpg'),(51,'',11,'14919599201082w1231.jpg'),(52,'',12,'1492090350000u=1238273040,2060575675&fm=23&gp=0.jpg'),(53,'',12,'1492090350003u=612772251,2395823516&fm=23&gp=0.jpg'),(54,'',12,'1492090350006u=768317699,2912985599&fm=23&gp=0.jpg'),(55,'',12,'1492090350009u=326539897,4239692692&fm=21&gp=0.jpg'),(56,'',12,'1492090350011u=252043130,4006861356&fm=21&gp=0.jpg'),(57,'',13,'1492090457217u=2462024849,196539317&fm=23&gp=0.jpg'),(58,'',13,'1492090457219u=128286021,1308925669&fm=23&gp=0.jpg'),(59,'',13,'1492090457221u=536484099,1677243497&fm=23&gp=0.jpg'),(60,'',13,'1492090457223u=866145389,1046219503&fm=72.jpg'),(61,'',13,'1492090457225u=209986129,198077049&fm=23&gp=0.jpg'),(62,'',14,'1492090512844u=536484099,1677243497&fm=23&gp=0.jpg'),(63,'',14,'1492090512847u=128286021,1308925669&fm=23&gp=0.jpg'),(64,'',14,'1492090512849u=866145389,1046219503&fm=72.jpg'),(65,'',14,'1492090512852u=536484099,1677243497&fm=23&gp=0.jpg'),(66,'',14,'1492090512854'),(67,'1',15,'1505276771919c.jpg'),(68,'1',15,'1505276771921u=1897777990,21039689&fm=21&gp=0.jpg'),(69,'1',15,'1505276771946index.jpg'),(70,'1',16,'1505276863185c.jpg'),(71,'1',16,'1505276863186u=1897777990,21039689&fm=21&gp=0.jpg'),(72,'1',16,'1505276863187index.jpg'),(73,'1',17,'1505277080085index.jpg'),(74,'1',17,'1505277080086u=867133057,170455639&fm=21&gp=0.jpg'),(75,'1',17,'1505277080087'),(76,'1',18,'1505277460886c.jpg'),(77,'1',19,'1505277578740index.jpg'),(78,'1',19,'1505277578742u=1897777990,21039689&fm=21&gp=0.jpg'),(79,'1',20,'1505277749019c.jpg'),(80,'1',20,'1505277749022index.jpg'),(81,'1',21,'1507609265475a.gif'),(82,'1',21,'1507609265479a.gif'),(83,'1',21,'1507609265481a.gif'),(84,'1',22,'1507609379643a.gif'),(85,'1',22,'1507609379654a.gif'),(86,'1',22,'1507609379658a.gif'),(87,'1',23,'1507870193544'),(88,'1',24,'1507870322161'),(89,'1',25,'1509440516200bbb.jpg'),(90,'1',25,'1509440516201ddd.jpg'),(91,'1',25,'1509440516202indexss.jpg'),(92,'1',26,'1509442392047bbb.jpg'),(93,'1',26,'1509442392048index.jpg'),(94,'1',26,'1509442392050ddd.jpg'),(95,'1',27,'1509442434888ccc.jpg'),(96,'1',28,'1509442646830bbb.jpg'),(97,'1',29,'1509531163118bbb.jpg'),(98,'1',29,'1509531163120ddd.jpg'),(99,'1',29,'1509531163122indexss.jpg'),(100,'1',29,'1509531163124u=2004120076,3055615118&fm=21&gp=0.jpg'),(101,'1',29,'1509531163125ccc.jpg'),(102,'1',30,'1509531186541ddd.jpg'),(103,'1',30,'1509531186542u=2788266912,1008059520&fm=21&gp=0.jpg'),(104,'1',30,'1509531186542index2.jpg'),(105,'1',30,'1509531186543u=680655970,999056049&fm=21&gp=0.jpg'),(106,'1',30,'1509531186544ccc.jpg'),(107,'1',31,'1509704778747a.gif'),(108,'1',31,'1509704778748a.gif'),(109,'1',31,'1509704778749a.gif'),(110,'1',31,'1509704778750a.gif'),(111,'1',32,'1509704833747a.gif'),(112,'1',32,'1509704833749a.gif'),(113,'1',33,'1509778451705ccc.jpg'),(114,'1',33,'1509778451707indexss.jpg'),(115,'1',33,'1509778451708u=2004120076,3055615118&fm=21&gp=0.jpg'),(116,'1',33,'1509778451709aaa.jpg'),(117,'1',34,'1510540319864a.gif'),(118,'1',34,'1510540319866a.gif'),(119,'1',34,'1510540319867a.gif'),(120,'1',35,'1511351811863a.gif'),(121,'1',36,'1511519573196a.gif'),(122,'1',36,'1511519573198a.gif'),(123,'1',36,'1511519573199a.gif'),(124,'1',36,'1511519573200a.gif'),(125,'1',37,'1511598809073u=690264292,3421773180&fm=23&gp=0.jpg'),(126,'1',37,'1511598809132u=700768882,1204720653&fm=23&gp=0.jpg'),(127,'1',37,'1511598809133u=3160163537,1290226115&fm=23&gp=0.jpg'),(128,'1',37,'1511598809135u=3001215687,2293636599&fm=23&gp=0.jpg'),(129,'1',37,'1511598809137u=4116505385,2387833853&fm=23&gp=0.jpg'),(130,'1',38,'1511830842318u=2476027798,3173816752&fm=23&gp=0.jpg'),(131,'1',38,'1511830842321u=3056370441,346208743&fm=23&gp=0.jpg'),(132,'1',38,'1511830842322u=1918711925,4053975140&fm=23&gp=0.jpg'),(133,'1',38,'1511830842323u=3243114574,1688598941&fm=23&gp=0.jpg'),(134,'1',39,'1511843095682a.gif'),(135,'1',39,'1511843095695a.gif'),(136,'1',39,'1511843095697a.gif'),(137,'1',40,'1512349685158a.gif'),(138,'1',40,'1512349685162a.gif'),(139,'1',41,'1512351028465a.gif'),(140,'1',42,'1513306047771ccc.jpg'),(141,'1',42,'1513306047777eee.jpg'),(142,'1',42,'1513306047782index.jpg'),(143,'1',43,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513406766453atguigu.ico'),(144,'1',43,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513406766455jd.png'),(145,'1',44,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513589641100jd.png'),(146,'1',45,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513590639725logo.jpg'),(147,'1',46,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513590915054jd.png'),(148,'1',47,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591098003logo.gif'),(149,'1',48,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591215890jd.png'),(150,'1',49,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591255118atguigu.ico'),(151,'1',50,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591403698jd.png'),(152,'1',51,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591454824jd.png'),(153,'1',52,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591583598jd.png'),(154,'1',53,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591625336jd.png'),(155,'1',54,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591738162jd.png'),(156,'1',55,'E:/STS_workspace/manager/src/main/webapp/upload/images/1513591866195logo.gif');
/*!40000 ALTER TABLE `t_mall_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_product_sku_info`
--

DROP TABLE IF EXISTS `t_mall_product_sku_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_product_sku_info` (
  `sku_id` int(11) NOT NULL,
  `shp_msh` varchar(4000) DEFAULT '暂无描述' COMMENT '商品描述',
  `shp_lb` varchar(100) DEFAULT NULL COMMENT '商品类别',
  `pp_id` int(100) DEFAULT NULL COMMENT '商品品牌',
  `shpz_zhl` double(11,0) DEFAULT '0' COMMENT '商品重量',
  `shp_chc` double DEFAULT NULL COMMENT '商品尺寸',
  `shp_ys` int(100) NOT NULL DEFAULT '0',
  `shp_bb` int(100) NOT NULL DEFAULT '0',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`shp_ys`,`shp_bb`),
  UNIQUE KEY `sku_id_unique` (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_product_sku_info`
--

LOCK TABLES `t_mall_product_sku_info` WRITE;
/*!40000 ALTER TABLE `t_mall_product_sku_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_product_sku_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_product_version`
--

DROP TABLE IF EXISTS `t_mall_product_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_product_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shp_id` int(11) DEFAULT NULL,
  `shp_bb` varchar(100) DEFAULT NULL COMMENT '商品版本',
  `shfqy` int(11) DEFAULT NULL COMMENT '是否启用',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_product_version`
--

LOCK TABLES `t_mall_product_version` WRITE;
/*!40000 ALTER TABLE `t_mall_product_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_product_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_redis_log`
--

DROP TABLE IF EXISTS `t_mall_redis_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_redis_log` (
  `Id` int(11) NOT NULL COMMENT '编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='缓存日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_redis_log`
--

LOCK TABLES `t_mall_redis_log` WRITE;
/*!40000 ALTER TABLE `t_mall_redis_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_redis_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_search_info_log`
--

DROP TABLE IF EXISTS `t_mall_search_info_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_search_info_log` (
  `Id` int(11) NOT NULL COMMENT '编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品检索日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_search_info_log`
--

LOCK TABLES `t_mall_search_info_log` WRITE;
/*!40000 ALTER TABLE `t_mall_search_info_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_search_info_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_shoppingcar`
--

DROP TABLE IF EXISTS `t_mall_shoppingcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_shoppingcar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sku_mch` varchar(100) DEFAULT NULL COMMENT 'sku名称',
  `sku_jg` decimal(10,0) DEFAULT NULL COMMENT 'sku价格',
  `tjshl` int(11) DEFAULT NULL COMMENT '添加数量',
  `hj` decimal(10,0) DEFAULT NULL COMMENT '合计',
  `yh_id` int(11) DEFAULT NULL COMMENT '用户id',
  `shp_id` int(11) DEFAULT NULL COMMENT '商品id',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sku_id` int(11) DEFAULT NULL COMMENT 'skuid',
  `shp_tp` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `shfxz` varchar(1) DEFAULT '1' COMMENT '是否选中',
  `kcdz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_shoppingcar`
--

LOCK TABLES `t_mall_shoppingcar` WRITE;
/*!40000 ALTER TABLE `t_mall_shoppingcar` DISABLE KEYS */;
INSERT INTO `t_mall_shoppingcar` VALUES (7,'小明联想中端系列显示器200瓦15寸',43330,2,86660,6,7,'2017-12-08 01:18:10',2,'1491986072915u=3073007440,1268514512&fm=23&gp=0.jpg','0','昌平区北七家大仓库'),(8,'联想高端系列显示器500瓦45寸',8880,1,8880,6,6,'2017-12-08 01:21:25',3,'1491985960210u=1986847822,526015344&fm=23&gp=0.jpg','0','北京天意小商品批发市场'),(9,'联想高端系列显示器24寸曲面',8877,1,8877,6,6,'2017-12-08 04:38:30',4,'1491985960210u=1986847822,526015344&fm=23&gp=0.jpg','0','昌平区北七家大仓库'),(13,'华为I系列24寸非曲面显示器',4555,2,4555,1,9,'2017-12-22 13:23:16',7,'1492090141522u=3279637596,1383743164&fm=23&gp=0.jpg','1','北京天意小商品批发市场'),(14,'外星人高分辨率曲面显示器',10000,1,10000,1,12,'2017-12-22 13:23:45',10,'1492090350000u=1238273040,2060575675&fm=23&gp=0.jpg','1','昌平区北七家大仓库');
/*!40000 ALTER TABLE `t_mall_shoppingcar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_shoppingcar_info`
--

DROP TABLE IF EXISTS `t_mall_shoppingcar_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_shoppingcar_info` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `sku_mch` varchar(4000) DEFAULT NULL COMMENT '名称',
  `sku_jg` int(11) DEFAULT NULL COMMENT 'sku价格',
  `yh_xm` varchar(100) DEFAULT NULL COMMENT '用户姓名',
  `yh_nch` varchar(4000) DEFAULT NULL COMMENT '用户昵称',
  `yh_dz` varchar(100) DEFAULT NULL COMMENT '用户地址',
  `shp_mch` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `shp_tp` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `sku_kc` int(11) DEFAULT NULL COMMENT 'sku库存',
  `sku_shx` varchar(100) DEFAULT NULL COMMENT 'sku属性',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_shoppingcar_info`
--

LOCK TABLES `t_mall_shoppingcar_info` WRITE;
/*!40000 ALTER TABLE `t_mall_shoppingcar_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_shoppingcar_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_sku`
--

DROP TABLE IF EXISTS `t_mall_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_sku` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `shp_id` int(11) DEFAULT NULL COMMENT '名称',
  `kc` int(11) DEFAULT NULL COMMENT '库存',
  `jg` double DEFAULT NULL COMMENT '价格',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sku_mch` varchar(100) DEFAULT NULL COMMENT 'sku名称',
  `sku_xl` int(11) DEFAULT NULL COMMENT 'sku销量',
  `kcdz` varchar(500) DEFAULT '昌平区北七家大仓库' COMMENT '库存地址',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='sku库存表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_sku`
--

LOCK TABLES `t_mall_sku` WRITE;
/*!40000 ALTER TABLE `t_mall_sku` DISABLE KEYS */;
INSERT INTO `t_mall_sku` VALUES (1,8,1,9996,'2017-04-13 13:36:20','小明联想低端配置系列显示器14寸100瓦功率',24,'昌平区北七家大仓库'),(2,7,0,43330,'2017-04-13 13:44:56','小明联想中端系列显示器200瓦15寸',7,'昌平区北七家大仓库'),(3,6,1,8880,'2017-04-13 13:46:19','联想高端系列显示器500瓦45寸',7,'北京天意小商品批发市场'),(4,6,98,8877,'2017-04-13 13:50:29','联想高端系列显示器24寸曲面',101,'昌平区北七家大仓库'),(5,7,99,3555,'2017-04-13 13:57:12','联想中端系列24寸非曲面显示器',33,'昌平区北七家大仓库'),(6,9,100,3333,'2017-04-13 14:00:59','华为I系列24寸曲面显示器',4,'北京天意小商品批发市场'),(7,9,100,4555,'2017-04-13 14:01:36','华为I系列24寸非曲面显示器',5,'北京天意小商品批发市场'),(8,10,100,1555,'2017-04-13 14:02:26','华为II系列15寸屏幕显示器',6,'北京天意小商品批发市场'),(9,12,100,9999,'2017-04-13 14:03:07','外星人高分辨率非曲面显示器',90,'昌平区北七家大仓库'),(10,12,100,10000,'2017-04-13 14:03:59','外星人高分辨率曲面显示器',23,'昌平区北七家大仓库'),(11,9,99,1555,'2017-04-13 14:05:13','华为I系列15寸非曲面显示器',901,'北京天意小商品批发市场'),(12,8,0,3555,'2017-04-13 14:05:56','联想低端配置系列显示器24寸200瓦功率',146,'昌平区北七家大仓库'),(13,13,100,20000,'2017-04-13 14:07:03','小米4驱动II系列无人机',50,'北京天意小商品批发市场'),(14,14,100,3555,'2017-04-13 14:07:39','美的四轮无人机',2,'北京天意小商品批发市场'),(15,13,100,10000,'2017-04-13 14:08:15','小米8驱动无人机',6,'昌平区北七家大仓库'),(16,12,98,20000,'2017-04-14 06:15:51','外星人非曲面高端45寸显示器',2,'昌平区北七家大仓库'),(17,7,100,3555,'2017-04-15 01:13:32','联想中低端系列LCD显示屏显示屏',0,'昌平区北七家大仓库'),(18,12,89,1000,'2017-05-06 06:39:45','外星人iso屏幕显示器',1,'昌平区北七家上硅谷'),(19,7,11,2222,'2017-05-28 02:52:48','联想一级系列显示器省钱王',0,'北京天意小商品批发市场'),(20,8,11,2222,'2017-05-28 02:55:35','联想一级系列显示器省钱王2',0,'北京天意小商品批发市场'),(21,12,11,2222,'2017-05-28 03:02:33','外星人一级系列显示器省钱王',0,'北京天意小商品批发市场'),(22,10,11,123123,'2017-05-28 03:08:29','华为一级系列显示器省钱王',0,'北京天意小商品批发市场'),(23,12,11,123123,'2017-05-28 03:13:45','外星人一级系列显示器省钱王2',0,'北京天意小商品批发市场'),(24,12,9,10001,'2017-06-30 08:00:42','外星人全景vr高端显示器',0,'北京天意小商品批发市场'),(25,10,1,6000,'2017-09-16 00:47:22','华为III系列高配置分辨率显示屏',0,'北京天意小商品批发市场'),(26,7,123,3333,'2017-09-16 04:03:38','联想III系列高配置分辨率显示屏',NULL,'天意小商品批发市场'),(27,10,1,6000,'2017-09-16 04:15:58','华为III系列高配置分辨率显示屏',NULL,'天意小商品批发市场'),(28,10,1,6000,'2017-09-16 04:17:05','华为III系列高配置分辨率显示屏',NULL,'天意小商品批发市场'),(29,6,1,6000,'2017-09-16 04:18:23','联想III系列高配置分辨率显示屏',NULL,'天意小商品批发市场'),(30,7,123,300,'2017-10-13 01:36:03','联想测试显示器1',NULL,'天意小商品批发市场'),(31,21,123,9000,'2017-10-29 02:13:18','测试库存名称',NULL,'测试库存地址名称'),(32,10,123,123,'2017-11-22 11:28:14','123',NULL,'123'),(33,9,123,123,'2017-11-22 12:20:54','123',NULL,'123'),(34,8,123,2,'2017-11-24 08:08:15','测试产品1',NULL,'天意小商品批发市场'),(35,37,1,10000,'2017-11-25 08:37:04','张小虎',NULL,'北七家洪福科技园'),(36,10,1,9999,'2017-11-28 00:55:23','华为测试三系列特殊属性显示器',NULL,'北京昌平区仓库'),(37,38,1,9999,'2017-11-28 01:02:13','华为人工智能1',NULL,'北京昌平区仓库'),(38,8,122,123,'2017-12-01 01:16:00','测试商品2',NULL,'北七家大仓库'),(39,8,122,123,'2017-12-01 01:19:14','测试商品2',NULL,'北七家大仓库'),(40,7,122,123,'2017-12-01 01:19:59','测试商品2',NULL,'北七家大仓库'),(41,7,122,123,'2017-12-01 01:21:18','测试商品2',NULL,'北七家大仓库'),(42,7,122,123,'2017-12-01 01:21:56','测试商品3',NULL,'北七家大仓库'),(43,30,43432,123,'2017-12-16 03:56:16','联想测试系列006',NULL,'昌平区仓库'),(44,30,43432,123,'2017-12-16 03:57:26','联想测试系列006',NULL,'昌平区仓库'),(45,10,12,NULL,'2017-12-18 06:40:08','qwe',0,'sdf'),(46,7,12,NULL,'2017-12-18 06:43:40','asd',0,'asd'),(47,6,12,NULL,'2017-12-18 06:45:51','qwe',0,'asd'),(48,10,123,NULL,'2017-12-18 06:56:03','嘀哩嘀哩',0,'天字号'),(49,7,3,NULL,'2017-12-18 06:57:50','qq',0,'qq'),(50,7,334,NULL,'2017-12-18 06:59:21','ww',0,'ww');
/*!40000 ALTER TABLE `t_mall_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_sku_attr_value`
--

DROP TABLE IF EXISTS `t_mall_sku_attr_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_sku_attr_value` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `shxm_id` int(11) DEFAULT NULL COMMENT '属性名id',
  `shxzh_id` int(11) DEFAULT NULL COMMENT '属性值id',
  `shp_id` int(11) DEFAULT NULL COMMENT '商品id',
  `is_sku` varchar(1) DEFAULT '1' COMMENT '是否sku',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sku_id` int(11) DEFAULT NULL COMMENT 'skuid',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COMMENT='sku属性和属性值关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_sku_attr_value`
--

LOCK TABLES `t_mall_sku_attr_value` WRITE;
/*!40000 ALTER TABLE `t_mall_sku_attr_value` DISABLE KEYS */;
INSERT INTO `t_mall_sku_attr_value` VALUES (1,13,30,8,'1','2017-04-13 13:36:25',1),(2,14,33,8,'1','2017-04-13 13:36:25',1),(3,15,38,8,'1','2017-04-13 13:36:25',1),(4,16,40,8,'1','2017-04-13 13:36:25',1),(5,17,44,8,'1','2017-04-13 13:36:25',1),(6,13,31,7,'1','2017-04-13 13:44:56',2),(7,14,34,7,'1','2017-04-13 13:44:56',2),(8,15,39,7,'1','2017-04-13 13:44:56',2),(9,16,41,7,'1','2017-04-13 13:44:56',2),(10,17,45,7,'1','2017-04-13 13:44:56',2),(11,13,32,6,'1','2017-04-13 13:46:19',3),(12,14,37,6,'1','2017-04-13 13:46:19',3),(13,15,39,6,'1','2017-04-13 13:46:19',3),(14,16,43,6,'1','2017-04-13 13:46:19',3),(15,17,47,6,'1','2017-04-13 13:46:19',3),(16,13,31,6,'1','2017-04-13 13:50:29',4),(17,14,35,6,'1','2017-04-13 13:50:29',4),(18,15,38,6,'1','2017-04-13 13:50:29',4),(19,16,42,6,'1','2017-04-13 13:50:29',4),(20,17,46,6,'1','2017-04-13 13:50:29',4),(21,13,31,7,'1','2017-04-13 13:57:12',5),(22,14,35,7,'1','2017-04-13 13:57:12',5),(23,15,39,7,'1','2017-04-13 13:57:12',5),(24,16,41,7,'1','2017-04-13 13:57:12',5),(25,17,45,7,'1','2017-04-13 13:57:12',5),(26,13,32,9,'1','2017-04-13 14:00:59',6),(27,14,35,9,'1','2017-04-13 14:00:59',6),(28,15,38,9,'1','2017-04-13 14:00:59',6),(29,16,40,9,'1','2017-04-13 14:00:59',6),(30,17,45,9,'1','2017-04-13 14:00:59',6),(31,13,30,9,'1','2017-04-13 14:01:36',7),(32,14,34,9,'1','2017-04-13 14:01:36',7),(33,15,39,9,'1','2017-04-13 14:01:36',7),(34,16,41,9,'1','2017-04-13 14:01:36',7),(35,17,44,9,'1','2017-04-13 14:01:36',7),(36,13,31,10,'1','2017-04-13 14:02:26',8),(37,14,34,10,'1','2017-04-13 14:02:26',8),(38,15,39,10,'1','2017-04-13 14:02:26',8),(39,16,43,10,'1','2017-04-13 14:02:26',8),(40,17,44,10,'1','2017-04-13 14:02:26',8),(41,13,32,12,'1','2017-04-13 14:03:07',9),(42,14,37,12,'1','2017-04-13 14:03:07',9),(43,15,39,12,'1','2017-04-13 14:03:07',9),(44,16,43,12,'1','2017-04-13 14:03:07',9),(45,17,46,12,'1','2017-04-13 14:03:07',9),(46,13,31,12,'1','2017-04-13 14:03:59',10),(47,14,34,12,'1','2017-04-13 14:03:59',10),(48,15,38,12,'1','2017-04-13 14:03:59',10),(49,16,41,12,'1','2017-04-13 14:03:59',10),(50,17,45,12,'1','2017-04-13 14:03:59',10),(51,13,30,9,'1','2017-04-13 14:05:13',11),(52,14,34,9,'1','2017-04-13 14:05:13',11),(53,15,39,9,'1','2017-04-13 14:05:13',11),(54,16,43,9,'1','2017-04-13 14:05:13',11),(55,17,46,9,'1','2017-04-13 14:05:13',11),(56,13,31,8,'1','2017-04-13 14:05:57',12),(57,14,35,8,'1','2017-04-13 14:05:57',12),(58,15,38,8,'1','2017-04-13 14:05:57',12),(59,16,40,8,'1','2017-04-13 14:05:57',12),(60,17,45,8,'1','2017-04-13 14:05:57',12),(61,18,48,13,'1','2017-04-13 14:07:03',13),(62,19,51,13,'1','2017-04-13 14:07:03',13),(63,20,53,13,'1','2017-04-13 14:07:03',13),(64,21,56,13,'1','2017-04-13 14:07:03',13),(65,18,49,14,'1','2017-04-13 14:07:39',14),(66,19,51,14,'1','2017-04-13 14:07:39',14),(67,20,53,14,'1','2017-04-13 14:07:39',14),(68,21,57,14,'1','2017-04-13 14:07:39',14),(69,22,59,14,'1','2017-04-13 14:07:39',14),(70,18,48,13,'1','2017-04-13 14:08:15',15),(71,19,52,13,'1','2017-04-13 14:08:15',15),(72,20,53,13,'1','2017-04-13 14:08:15',15),(73,21,56,13,'1','2017-04-13 14:08:15',15),(74,22,59,13,'1','2017-04-13 14:08:15',15),(75,13,32,12,'1','2017-04-14 06:15:51',16),(76,14,37,12,'1','2017-04-14 06:15:51',16),(77,15,39,12,'1','2017-04-14 06:15:51',16),(78,16,43,12,'1','2017-04-14 06:15:51',16),(79,13,30,7,'1','2017-04-15 01:13:32',17),(80,14,34,7,'1','2017-04-15 01:13:32',17),(81,15,39,7,'1','2017-04-15 01:13:32',17),(82,16,42,7,'1','2017-04-15 01:13:32',17),(83,17,45,7,'1','2017-04-15 01:13:32',17),(84,23,62,7,'1','2017-04-15 01:13:32',17),(85,13,30,12,'1','2017-05-06 06:39:45',18),(86,14,33,12,'1','2017-05-06 06:39:45',18),(87,15,38,12,'1','2017-05-06 06:39:45',18),(88,16,40,12,'1','2017-05-06 06:39:45',18),(89,17,44,12,'1','2017-05-06 06:39:45',18),(90,23,63,12,'1','2017-05-06 06:39:45',18),(91,13,30,0,'1','2017-05-28 02:52:48',19),(92,14,33,0,'1','2017-05-28 02:52:48',19),(93,15,38,0,'1','2017-05-28 02:52:48',19),(94,16,40,0,'1','2017-05-28 02:52:48',19),(95,17,44,0,'1','2017-05-28 02:52:48',19),(96,23,61,0,'1','2017-05-28 02:52:48',19),(97,13,30,0,'1','2017-05-28 02:55:35',20),(98,14,33,0,'1','2017-05-28 02:55:35',20),(99,15,38,0,'1','2017-05-28 02:55:35',20),(100,16,40,0,'1','2017-05-28 02:55:35',20),(101,17,44,0,'1','2017-05-28 02:55:35',20),(102,23,61,0,'1','2017-05-28 02:55:35',20),(103,13,31,0,'1','2017-05-28 03:02:33',21),(104,14,35,0,'1','2017-05-28 03:02:33',21),(105,15,39,0,'1','2017-05-28 03:02:33',21),(106,16,42,0,'1','2017-05-28 03:02:33',21),(107,17,46,0,'1','2017-05-28 03:02:33',21),(108,23,62,0,'1','2017-05-28 03:02:33',21),(109,13,31,0,'1','2017-05-28 03:08:29',22),(110,14,34,0,'1','2017-05-28 03:08:29',22),(111,15,39,0,'1','2017-05-28 03:08:29',22),(112,16,43,0,'1','2017-05-28 03:08:29',22),(113,17,47,0,'1','2017-05-28 03:08:29',22),(114,23,63,0,'1','2017-05-28 03:08:29',22),(115,13,30,0,'1','2017-05-28 03:13:46',23),(116,14,33,0,'1','2017-05-28 03:13:46',23),(117,15,38,0,'1','2017-05-28 03:13:46',23),(118,16,40,0,'1','2017-05-28 03:13:46',23),(119,13,31,12,'1','2017-06-30 08:00:42',24),(120,14,34,12,'1','2017-06-30 08:00:42',24),(121,15,38,12,'1','2017-06-30 08:00:42',24),(122,16,0,12,'1','2017-06-30 08:00:42',24),(123,17,45,12,'1','2017-06-30 08:00:42',24),(124,23,62,12,'1','2017-06-30 08:00:42',24),(125,24,64,12,'1','2017-06-30 08:00:42',24),(126,13,32,10,'1','2017-09-16 00:47:53',25),(127,14,37,10,'1','2017-09-16 00:47:53',25),(128,15,39,10,'1','2017-09-16 00:47:53',25),(129,16,42,10,'1','2017-09-16 00:47:53',25),(130,17,46,10,'1','2017-09-16 00:47:53',25),(131,23,62,10,'1','2017-09-16 00:47:53',25),(132,24,65,10,'1','2017-09-16 00:47:53',25),(133,13,30,7,'1','2017-09-16 04:03:38',26),(134,14,33,7,'1','2017-09-16 04:03:38',26),(135,15,38,7,'1','2017-09-16 04:03:38',26),(136,16,40,7,'1','2017-09-16 04:03:38',26),(137,13,30,10,'1','2017-09-16 04:15:58',27),(138,14,33,10,'1','2017-09-16 04:15:58',27),(139,13,30,10,'1','2017-09-16 04:17:05',28),(140,14,34,10,'1','2017-09-16 04:17:05',28),(141,0,0,6,'1','2017-09-16 04:18:23',29),(142,14,33,6,'1','2017-09-16 04:18:23',29),(143,15,38,6,'1','2017-09-16 04:18:23',29),(144,16,40,6,'1','2017-09-16 04:18:23',29),(145,13,30,7,'1','2017-10-13 01:36:25',30),(146,14,33,7,'1','2017-10-13 01:36:25',30),(147,15,38,7,'1','2017-10-13 01:36:25',30),(148,33,78,21,'1','2017-10-29 02:13:18',31),(149,34,80,21,'1','2017-10-29 02:13:18',31),(150,35,82,21,'1','2017-10-29 02:13:18',31),(151,36,84,21,'1','2017-10-29 02:13:18',31),(188,13,31,7,'1','2017-12-01 01:21:18',41),(189,14,35,7,'1','2017-12-01 01:21:18',41),(190,15,39,7,'1','2017-12-01 01:21:18',41),(191,13,31,7,'1','2017-12-01 01:21:57',42),(192,14,35,7,'1','2017-12-01 01:21:57',42),(193,15,39,7,'1','2017-12-01 01:21:57',42),(200,33,78,30,'1','2017-12-16 03:57:26',44),(201,34,81,30,'1','2017-12-16 03:57:26',44),(202,35,83,30,'1','2017-12-16 03:57:26',44),(203,36,84,30,'1','2017-12-16 03:57:26',44),(204,51,115,30,'1','2017-12-16 03:57:26',44),(205,52,116,30,'1','2017-12-16 03:57:26',44),(206,13,30,0,'1','2017-12-18 06:45:51',0),(207,14,34,0,'1','2017-12-18 06:45:51',0),(208,15,38,0,'1','2017-12-18 06:45:51',0),(209,13,30,0,'1','2017-12-18 06:59:21',50),(210,14,33,0,'1','2017-12-18 06:59:21',50);
/*!40000 ALTER TABLE `t_mall_sku_attr_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_sku_image`
--

DROP TABLE IF EXISTS `t_mall_sku_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_sku_image` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `url` varchar(4000) DEFAULT NULL COMMENT '图片',
  `zy` varchar(1) DEFAULT NULL COMMENT '作用',
  `sku_id` int(11) DEFAULT NULL COMMENT 'skuid',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sku图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_sku_image`
--

LOCK TABLES `t_mall_sku_image` WRITE;
/*!40000 ALTER TABLE `t_mall_sku_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_sku_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_tm_class`
--

DROP TABLE IF EXISTS `t_mall_tm_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_tm_class` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pp_id` int(11) DEFAULT NULL COMMENT '品牌id',
  `flbh1` int(11) DEFAULT NULL COMMENT '分类编号1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='商标分类对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_tm_class`
--

LOCK TABLES `t_mall_tm_class` WRITE;
/*!40000 ALTER TABLE `t_mall_tm_class` DISABLE KEYS */;
INSERT INTO `t_mall_tm_class` VALUES (1,8,7),(2,1,8),(3,9,9),(4,3,6),(5,2,7),(6,2,8),(7,10,9),(8,4,6),(9,13,6),(10,14,6),(11,13,13),(12,13,14),(13,14,13),(14,14,14),(15,18,7),(16,18,8),(17,18,11),(18,19,8),(19,19,11),(20,20,8),(21,21,9),(22,22,7),(23,23,14),(24,24,14),(25,25,14),(26,26,14),(27,27,13),(28,28,13),(29,29,11),(30,30,10),(31,30,15),(32,31,10),(33,31,15),(34,32,10),(35,32,15);
/*!40000 ALTER TABLE `t_mall_tm_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_trade_mark`
--

DROP TABLE IF EXISTS `t_mall_trade_mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_trade_mark` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ppmch` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `url` varchar(100) DEFAULT NULL COMMENT '品牌图片',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='商标表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_trade_mark`
--

LOCK TABLES `t_mall_trade_mark` WRITE;
/*!40000 ALTER TABLE `t_mall_trade_mark` DISABLE KEYS */;
INSERT INTO `t_mall_trade_mark` VALUES (1,'apple',NULL),(2,'lenovo',NULL),(3,'骆驼',NULL),(4,'波司登',NULL),(8,'华为',NULL),(9,'欧莱雅',NULL),(10,'沙宣',NULL),(13,'阿迪达斯',NULL),(14,'耐克',NULL),(18,'华为',NULL),(19,'宏基',NULL),(20,'外星人',NULL),(21,'欧莱雅',NULL),(22,'美的Midea',NULL),(23,'劳力士',NULL),(24,'天梭',NULL),(25,'卡地亚Carter',NULL),(26,'江诗丹顿',NULL),(27,'瑞士军刀',NULL),(28,'LV',NULL),(29,'诺基亚',NULL),(30,'三鹿',NULL),(31,'蒙牛',NULL),(32,'伊利',NULL);
/*!40000 ALTER TABLE `t_mall_trade_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_user_account`
--

DROP TABLE IF EXISTS `t_mall_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_user_account` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `yh_mch` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `yh_nch` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `yh_mm` varchar(100) DEFAULT NULL COMMENT '用户密码',
  `yh_xm` varchar(100) DEFAULT NULL COMMENT '用户姓名',
  `yh_shjh` varchar(100) DEFAULT NULL COMMENT '手机号',
  `yh_yx` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `yh_tx` varchar(100) DEFAULT NULL COMMENT '头像',
  `yh_jb` int(100) DEFAULT NULL COMMENT '用户级别',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_user_account`
--

LOCK TABLES `t_mall_user_account` WRITE;
/*!40000 ALTER TABLE `t_mall_user_account` DISABLE KEYS */;
INSERT INTO `t_mall_user_account` VALUES (1,'lilei','tom','123','测试b2c','123123123123','123@11.com','1',1),(7,'sdfs1','sdfsdf','123','123','123123','1231','123',12223);
/*!40000 ALTER TABLE `t_mall_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_user_do_log`
--

DROP TABLE IF EXISTS `t_mall_user_do_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_user_do_log` (
  `Id` int(11) NOT NULL COMMENT '编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_user_do_log`
--

LOCK TABLES `t_mall_user_do_log` WRITE;
/*!40000 ALTER TABLE `t_mall_user_do_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_user_do_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_user_info`
--

DROP TABLE IF EXISTS `t_mall_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_user_info` (
  `id_card` int(11) NOT NULL COMMENT '身份证编号',
  `yh_id` int(11) DEFAULT NULL COMMENT '用户id',
  `yh_shjh` varchar(100) DEFAULT NULL COMMENT '用户手机号',
  `yh_jg` varchar(100) DEFAULT NULL COMMENT '用户籍贯',
  `yh_zhzh` varchar(100) DEFAULT NULL COMMENT '用户住址',
  `yh_xb` int(11) DEFAULT NULL COMMENT '性别 0女1男',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id_card`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_user_info`
--

LOCK TABLES `t_mall_user_info` WRITE;
/*!40000 ALTER TABLE `t_mall_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_user_login_log`
--

DROP TABLE IF EXISTS `t_mall_user_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_user_login_log` (
  `Id` int(11) NOT NULL COMMENT '编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户访问日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_user_login_log`
--

LOCK TABLES `t_mall_user_login_log` WRITE;
/*!40000 ALTER TABLE `t_mall_user_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_user_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_user_pay`
--

DROP TABLE IF EXISTS `t_mall_user_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_user_pay` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `yh_id` int(11) DEFAULT NULL COMMENT '用户id',
  `dd_id` int(11) DEFAULT NULL COMMENT '订单id',
  `fkshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '付款时间',
  `dd_je` float DEFAULT NULL COMMENT '订单金额',
  `zhf_fsh` varchar(100) DEFAULT NULL COMMENT '支付方式',
  `yh` varchar(100) DEFAULT NULL COMMENT '支付银行',
  `yh_lsh` varchar(100) DEFAULT NULL COMMENT '银行流水',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户支付信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_user_pay`
--

LOCK TABLES `t_mall_user_pay` WRITE;
/*!40000 ALTER TABLE `t_mall_user_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_user_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_value`
--

DROP TABLE IF EXISTS `t_mall_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_value` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `shxzh` varchar(100) DEFAULT NULL COMMENT '属性值',
  `shfqy` varchar(1) DEFAULT '1' COMMENT '是否启用',
  `shxm_id` int(11) DEFAULT NULL COMMENT '属性id',
  `shxzh_mch` varchar(100) DEFAULT NULL COMMENT '属性值名',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COMMENT='属性值表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_value`
--

LOCK TABLES `t_mall_value` WRITE;
/*!40000 ALTER TABLE `t_mall_value` DISABLE KEYS */;
INSERT INTO `t_mall_value` VALUES (30,'1024×768','1',13,'像素','2017-04-12 08:39:25'),(31,'1600×900','1',13,'像素','2017-04-12 08:39:25'),(32,'1399×1024','1',13,'像素','2017-04-12 08:39:25'),(33,'14.5','1',14,'寸','2017-04-12 08:39:25'),(34,'15.5','1',14,'寸','2017-04-12 08:39:25'),(35,'24','1',14,'寸','2017-04-12 08:39:25'),(36,'29','1',14,'寸','2017-04-12 08:39:25'),(37,'45','1',14,'寸','2017-04-12 08:39:25'),(38,'曲面','1',15,'形','2017-04-12 08:39:25'),(39,'非曲面','1',15,'形','2017-04-12 08:39:25'),(40,'12','1',16,'色','2017-04-12 08:39:25'),(41,'24','1',16,'色','2017-04-12 08:39:25'),(42,'48','1',16,'色','2017-04-12 08:39:25'),(43,'86','1',16,'色','2017-04-12 08:39:25'),(44,'100','1',17,'瓦','2017-04-12 08:39:25'),(45,'200','1',17,'瓦','2017-04-12 08:39:25'),(46,'300','1',17,'瓦','2017-04-12 08:39:25'),(47,'500','1',17,'毫安','2017-04-12 08:39:25'),(48,'三','1',18,'翼','2017-04-12 09:36:49'),(49,'四','1',18,'翼','2017-04-12 09:36:49'),(50,'五','1',18,'翼','2017-04-12 09:36:49'),(51,'四','1',19,'驱动','2017-04-12 09:36:49'),(52,'八','1',19,'驱动','2017-04-12 09:36:49'),(53,'1024','1',20,'像素','2017-04-12 09:36:49'),(54,'2048','1',20,'像素','2017-04-12 09:36:49'),(55,'4096','1',20,'像素','2017-04-12 09:36:49'),(56,'轻','1',21,'炮','2017-04-12 09:36:49'),(57,'中','1',21,'炮','2017-04-12 09:36:49'),(58,'100','1',22,'立方','2017-04-12 09:36:49'),(59,'200','1',22,'立方','2017-04-12 09:36:49'),(60,'300','1',22,'立方','2017-04-12 09:36:49'),(61,'LED','1',23,'显示屏','2017-04-15 01:06:35'),(62,'LCD','1',23,'显示屏','2017-04-15 01:06:35'),(63,'IOS','1',23,'显示屏','2017-04-15 01:06:35'),(64,'全景','1',24,'VR','2017-06-30 07:59:37'),(65,'影院','1',24,'VR','2017-06-30 07:59:37'),(66,'1','1',25,'厘米','2017-09-14 02:55:55'),(67,'2','1',25,'厘米','2017-09-14 02:55:55'),(68,'3','1',26,'米','2017-09-14 02:55:57'),(69,'4','1',26,'米','2017-09-14 02:55:57'),(70,'1','1',29,'厘米','2017-09-14 02:59:44'),(71,'2','1',29,'厘米','2017-09-14 02:59:44'),(72,'3','1',30,'米','2017-09-14 02:59:44'),(73,'4','1',30,'米','2017-09-14 02:59:44'),(74,'1','1',31,'厘米','2017-09-14 03:00:24'),(75,'2','1',31,'厘米','2017-09-14 03:00:24'),(76,'3','1',32,'米','2017-09-14 03:00:27'),(77,'4','1',32,'米','2017-09-14 03:00:27'),(78,'1','1',33,'MB','2017-10-11 04:01:04'),(79,'2','1',33,'MB','2017-10-11 04:01:04'),(80,'单','1',34,'核心','2017-10-11 04:01:05'),(81,'双','1',34,'核心','2017-10-11 04:01:05'),(82,'12','1',35,'MB','2017-10-11 04:05:44'),(83,'213','1',35,'MB','2017-10-11 04:05:44'),(84,'123','1',36,'核心','2017-10-11 04:06:01'),(85,'123','1',36,'核心','2017-10-11 04:06:01'),(86,'1000','1',37,'dpi','2017-11-01 09:07:51'),(87,'2000','1',37,'dpi','2017-11-01 09:07:51'),(88,'单','1',38,'轮','2017-11-01 09:07:58'),(89,'双','1',38,'轮','2017-11-01 09:07:58'),(90,'123','1',39,'123','2017-11-22 12:02:06'),(91,'123','1',39,'123','2017-11-22 12:02:06'),(92,'12','1',40,'123','2017-11-22 12:02:06'),(93,'123','1',40,'123','2017-11-22 12:02:06'),(94,'123','1',41,'123','2017-11-22 12:05:40'),(95,'123','1',41,'123','2017-11-22 12:05:40'),(96,'12','1',42,'123','2017-11-22 12:05:40'),(97,'123','1',42,'123','2017-11-22 12:05:40'),(98,'1','1',43,'米','2017-11-25 08:35:44'),(99,'2','1',43,'米','2017-11-25 08:35:44'),(100,'100','1',44,'斤','2017-11-25 08:35:44'),(101,'200','1',44,'斤','2017-11-25 08:35:44'),(102,'1000','1',45,'转','2017-11-28 00:52:04'),(103,'2000','1',45,'转','2017-11-28 00:52:04'),(104,'3000','1',46,'转','2017-11-28 00:52:04'),(105,'4000','1',46,'转','2017-11-28 00:52:04'),(106,'1000','1',47,'转','2017-11-28 00:58:02'),(107,'2000','1',47,'转','2017-11-28 00:58:02'),(108,'3000','1',48,'转','2017-11-28 00:58:03'),(109,'4000','1',48,'转','2017-11-28 00:58:03'),(110,NULL,'1',49,'2','2017-11-29 03:53:29'),(111,NULL,'1',49,'2','2017-11-29 03:53:29'),(112,NULL,'1',50,'4','2017-11-29 03:53:29'),(113,NULL,'1',50,'5','2017-11-29 03:53:29'),(114,'1','1',51,'核心','2017-12-16 02:27:21'),(115,'2','1',51,'核心','2017-12-16 02:27:21'),(116,'3','1',52,'核心','2017-12-16 02:27:46'),(117,'4','1',52,'核心','2017-12-16 02:27:46'),(126,'A','1',58,'等','2017-12-16 09:47:57'),(127,'B','1',58,'等','2017-12-16 09:47:57'),(128,'A','1',59,'级','2017-12-16 09:47:58'),(129,'B','1',59,'级','2017-12-16 09:47:58'),(130,'','1',60,'','2017-12-16 09:50:20'),(131,'','1',60,'','2017-12-16 09:50:20'),(132,'','1',61,'','2017-12-16 09:50:20'),(133,'','1',61,'','2017-12-16 09:50:20'),(134,'234','1',62,'234','2017-12-16 09:50:29'),(135,'234','1',62,'234','2017-12-16 09:50:29'),(136,'243','1',63,'234','2017-12-16 09:50:29'),(137,'243','1',63,'243','2017-12-16 09:50:29'),(138,'A','1',64,'等','2017-12-16 13:19:21'),(139,'B','1',64,'等','2017-12-16 13:19:21'),(140,'A','1',65,'级','2017-12-16 13:19:22'),(141,'B','1',65,'级','2017-12-16 13:19:22'),(142,'!!!','1',66,'等','2017-12-19 05:55:18'),(143,'￥￥￥','1',66,'等','2017-12-19 05:55:18'),(144,'！！！###','1',67,'级','2017-12-19 05:55:18'),(145,'%%%','1',67,'级','2017-12-19 05:55:18'),(146,'A','1',68,'等','2017-12-19 06:21:23'),(147,'B','1',68,'等','2017-12-19 06:21:23'),(148,'A','1',69,'级','2017-12-19 06:21:23'),(149,'B','1',69,'级','2017-12-19 06:21:23'),(150,'A','1',70,'等','2017-12-19 06:25:08'),(151,'B','1',70,'等','2017-12-19 06:25:08'),(152,'A','1',71,'级','2017-12-19 06:25:08'),(153,'B','1',71,'级','2017-12-19 06:25:08');
/*!40000 ALTER TABLE `t_mall_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table1` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `Pid` int(11) DEFAULT NULL COMMENT '父编号',
  `Rid` int(11) DEFAULT NULL COMMENT '关联编号',
  `Name` varchar(1000) DEFAULT NULL COMMENT '名称',
  `Memo` varchar(100) DEFAULT NULL COMMENT '注释',
  `TypeName` varchar(100) DEFAULT NULL COMMENT '类名',
  `CreatorId` int(11) DEFAULT NULL COMMENT '创建人编号',
  `CreatorName` varchar(4000) DEFAULT NULL COMMENT '创建人姓名',
  `CreateDate` datetime DEFAULT NULL COMMENT '创建日期',
  `DataLevel` tinyint(4) DEFAULT NULL COMMENT '数据级别 0正常 1审核中 2被否决 -1已删除 -2草稿',
  `OrderNo` double DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据表1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1`
--

LOCK TABLES `table1` WRITE;
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_time`
--

DROP TABLE IF EXISTS `test_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_time` (
  `shj` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_time`
--

LOCK TABLES `test_time` WRITE;
/*!40000 ALTER TABLE `test_time` DISABLE KEYS */;
INSERT INTO `test_time` VALUES ('2017-10-10 04:15:18',1),('2017-10-10 04:15:27',2);
/*!40000 ALTER TABLE `test_time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-22 21:29:45
