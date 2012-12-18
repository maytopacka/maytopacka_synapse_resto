-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.15


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db_pos_restaurant
--

CREATE DATABASE IF NOT EXISTS db_pos_restaurant;
USE db_pos_restaurant;

--
-- Definition of table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `exp_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;


--
-- Definition of table `assembly`
--

DROP TABLE IF EXISTS `assembly`;
CREATE TABLE `assembly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_num` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_qty` double DEFAULT NULL,
  `ref_num` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assembly`
--

/*!40000 ALTER TABLE `assembly` DISABLE KEYS */;
INSERT INTO `assembly` (`id`,`prod_num`,`description`,`price`,`product_qty`,`ref_num`,`status`) VALUES 
 (19,1,'diving-Dauin Coast',150,2,'263',0),
 (20,3,'diving-Siquijor',150,5,'263',0),
 (21,9,'snorkeling-Sumilon',200,5,'263',0),
 (22,2,'diving-Apo Island',300,2,'265',0),
 (23,6,'snorkeling-Dauin Coast',50,3,'265',0),
 (24,-1,'apo1',100,1,'24',0),
 (25,-1,'apo2',105,1,'24',0),
 (26,-1,'apo3',2,1,'24',0),
 (27,-1,'list1',20,1,'43',0),
 (30,1,'diving-Dauin Coast',150,1,'25',0),
 (31,2,'diving-Apo Island',300,1,'25',0),
 (32,3,'diving-Siquijor',150,1,'25',0);
/*!40000 ALTER TABLE `assembly` ENABLE KEYS */;


--
-- Definition of table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` (`id`,`bank_name`) VALUES 
 (1,'Bank of the Philippine Islands');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;


--
-- Definition of table `bank_card_type`
--

DROP TABLE IF EXISTS `bank_card_type`;
CREATE TABLE `bank_card_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_card_type`
--

/*!40000 ALTER TABLE `bank_card_type` DISABLE KEYS */;
INSERT INTO `bank_card_type` (`id`,`bank_id`,`name`) VALUES 
 (1,1,'Premium'),
 (2,1,'Gold');
/*!40000 ALTER TABLE `bank_card_type` ENABLE KEYS */;


--
-- Definition of table `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(100) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` (`id`,`branch_name`,`manager`,`ip_address`) VALUES 
 (1,'Dumaguete','',''),
 (2,'Valencia','','');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;


--
-- Definition of table `cancelled_endorsements`
--

DROP TABLE IF EXISTS `cancelled_endorsements`;
CREATE TABLE `cancelled_endorsements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `prev_endorsed` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `cashier_id` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancelled_endorsements`
--

/*!40000 ALTER TABLE `cancelled_endorsements` DISABLE KEYS */;
INSERT INTO `cancelled_endorsements` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (5,'115','LIPTON LEMON 450ML',24,24,'2012-08-06 12:09:40',9,NULL),
 (6,'115','LIPTON LEMON 450ML',68,68,'2012-08-06 12:09:55',13,NULL),
 (7,'115','LIPTON LEMON 450ML',24,24,'2012-08-06 12:10:19',14,NULL),
 (8,'117','LIPTON RED TEA 450ML',24,24,'2012-08-06 12:10:30',14,NULL),
 (9,'359','SNOW BEAR',260,40,'2012-08-06 03:08:35',16,NULL);
/*!40000 ALTER TABLE `cancelled_endorsements` ENABLE KEYS */;


--
-- Definition of table `cancelled_or`
--

DROP TABLE IF EXISTS `cancelled_or`;
CREATE TABLE `cancelled_or` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancelled_or`
--

/*!40000 ALTER TABLE `cancelled_or` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelled_or` ENABLE KEYS */;


--
-- Definition of table `cancelled_order`
--

DROP TABLE IF EXISTS `cancelled_order`;
CREATE TABLE `cancelled_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `or_num` int(11) DEFAULT NULL,
  `or_date` datetime DEFAULT NULL,
  `prod_name` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancelled_order`
--

/*!40000 ALTER TABLE `cancelled_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelled_order` ENABLE KEYS */;


--
-- Definition of table `cancelled_sales`
--

DROP TABLE IF EXISTS `cancelled_sales`;
CREATE TABLE `cancelled_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancelled_sales`
--

/*!40000 ALTER TABLE `cancelled_sales` DISABLE KEYS */;
INSERT INTO `cancelled_sales` (`id`,`product_id`,`product_name`,`price`,`qty`,`date_added`) VALUES 
 (10,'455','PATIS SACHET',2,1,'2012-08-06 03:56:58'),
 (11,'455','PATIS SACHET',2,89,'2012-08-06 03:57:12'),
 (12,'370','NESTLE CUPS',22,105,'2012-08-06 03:59:32'),
 (13,'212','KOPIKO W/O HOT WATER',8,2,'2012-08-06 04:34:23');
/*!40000 ALTER TABLE `cancelled_sales` ENABLE KEYS */;


--
-- Definition of table `cash_drawer`
--

DROP TABLE IF EXISTS `cash_drawer`;
CREATE TABLE `cash_drawer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashier_session_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `cash_in` double DEFAULT NULL,
  `cash_out` double DEFAULT NULL,
  `addtl_cash` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_drawer`
--

/*!40000 ALTER TABLE `cash_drawer` DISABLE KEYS */;
INSERT INTO `cash_drawer` (`id`,`cashier_session_id`,`user_name`,`date_added`,`cash_in`,`cash_out`,`addtl_cash`) VALUES 
 (1,1,'top','2012-12-15 00:00:00',100,NULL,NULL),
 (2,2,'front','2012-12-15 00:00:00',200,NULL,NULL),
 (3,3,'top','2012-12-17 05:09:25',200,1000,0),
 (4,4,'front','2012-12-17 00:00:00',200,NULL,NULL),
 (5,5,'top','2012-12-17 06:21:57',200,1000,0),
 (6,6,'top','2012-12-17 06:28:44',100,2000,0),
 (7,7,'top','2012-12-17 00:00:00',100,NULL,NULL),
 (8,8,'cashier','2012-12-17 00:00:00',200,NULL,NULL);
/*!40000 ALTER TABLE `cash_drawer` ENABLE KEYS */;


--
-- Definition of table `cash_in`
--

DROP TABLE IF EXISTS `cash_in`;
CREATE TABLE `cash_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashier_name` varchar(100) DEFAULT NULL,
  `cashier_session_id` int(11) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_in`
--

/*!40000 ALTER TABLE `cash_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_in` ENABLE KEYS */;


--
-- Definition of table `cashier_sessions`
--

DROP TABLE IF EXISTS `cashier_sessions`;
CREATE TABLE `cashier_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashier_name` varchar(100) DEFAULT NULL,
  `login_status` int(11) DEFAULT NULL,
  `cash_count` double DEFAULT '0',
  `additional_cash` double DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier_sessions`
--

/*!40000 ALTER TABLE `cashier_sessions` DISABLE KEYS */;
INSERT INTO `cashier_sessions` (`id`,`cashier_name`,`login_status`,`cash_count`,`additional_cash`,`created`,`modified`,`login_time`,`logout_time`,`user_level`) VALUES 
 (1,'top',1,0,0,'2012-12-15 00:00:00','2012-12-15 00:00:00','2012-12-15 09:21:20',NULL,6),
 (2,'front',1,0,0,'2012-12-15 00:00:00','2012-12-15 00:00:00','2012-12-15 09:21:33',NULL,5),
 (3,'top',0,0,0,'2012-12-17 00:00:00','2012-12-17 00:00:00','2012-12-17 10:38:32','2012-12-17 06:28:44',6),
 (4,'front',1,0,0,'2012-12-17 00:00:00','2012-12-17 00:00:00','2012-12-17 11:17:08',NULL,5),
 (5,'top',0,0,0,'2012-12-17 00:00:00','2012-12-17 00:00:00','2012-12-17 05:10:35','2012-12-17 06:28:44',6),
 (6,'top',0,0,0,'2012-12-17 00:00:00','2012-12-17 00:00:00','2012-12-17 06:27:52','2012-12-17 06:28:44',6),
 (7,'top',1,0,0,'2012-12-17 00:00:00','2012-12-17 00:00:00','2012-12-17 06:39:53',NULL,6),
 (8,'cashier',1,0,0,'2012-12-17 00:00:00','2012-12-17 00:00:00','2012-12-17 07:17:55',NULL,0);
/*!40000 ALTER TABLE `cashier_sessions` ENABLE KEYS */;


--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_num` int(11) DEFAULT NULL,
  `cat_name` varchar(200) DEFAULT NULL,
  `img_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`,`cat_num`,`cat_name`,`img_path`) VALUES 
 (1,1,'sanctuary','sanctuary.jpg'),
 (2,2,'snorkel day trip','snorkel.jpg'),
 (3,3,'Dive packages','dive package.jpg'),
 (4,4,'Diving day trip','diving day.jpg'),
 (5,5,'Equipment rental','equipment.jpg'),
 (6,6,'diving courses','packages2.jpg'),
 (7,7,'transportation','transportation.jpg'),
 (8,8,'equipment for sale','equipment3.jpg'),
 (9,9,'items for sale','items2.jpg'),
 (10,10,'bar and restaurant','bar.jpg'),
 (11,11,'accommodation','accom3.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `category_type`
--

DROP TABLE IF EXISTS `category_type`;
CREATE TABLE `category_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_num` int(11) DEFAULT NULL,
  `type_name` varchar(200) DEFAULT NULL,
  `cat_num` varchar(100) DEFAULT NULL,
  `cat_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_type`
--

/*!40000 ALTER TABLE `category_type` DISABLE KEYS */;
INSERT INTO `category_type` (`id`,`type_num`,`type_name`,`cat_num`,`cat_name`) VALUES 
 (1,1,'FLOOR WAX','1','sanctuary'),
 (3,3,'REG. SAFEGUARD','1','sanctuary'),
 (4,4,'SANITARY NAPKINS','1','sanctuary'),
 (5,5,'TOILET PAPER','1','sanctuary'),
 (6,6,'BALLPEN','2','snorkel day trip'),
 (7,7,'CARTOLINA','2','snorkel day trip'),
 (8,8,'CRAYON','2','snorkel day trip'),
 (9,9,'DRAWING BOOK','2','snorkel day trip'),
 (10,10,'ENVELOPE','2','snorkel day trip'),
 (11,11,'FOLDER','2','snorkel day trip'),
 (12,12,'GLUE','2','snorkel day trip'),
 (13,13,'ILLUSTRATION BOARD','2','snorkel day trip'),
 (14,14,'NOTEBOOK','2','snorkel day trip'),
 (15,15,'PAPER','2','snorkel day trip'),
 (16,16,'PASTE','2','snorkel day trip'),
 (17,17,'PENCIL','2','snorkel day trip'),
 (18,18,'PENTEL PEN ','2','snorkel day trip'),
 (19,19,'PLASTIC COVER','2','snorkel day trip'),
 (20,20,'PLASTIC FASTENER','2','snorkel day trip'),
 (21,21,'PROTRACTOR','2','snorkel day trip'),
 (23,23,'RE TOUCH','2','snorkel day trip'),
 (24,24,'RULER','2','snorkel day trip');
INSERT INTO `category_type` (`id`,`type_num`,`type_name`,`cat_num`,`cat_name`) VALUES 
 (25,25,'SCISSORS','2','snorkel day trip'),
 (26,26,'SHARPENER','2','snorkel day trip'),
 (27,27,'LUCKY ME','3','Dive packages'),
 (28,28,'COFFEE','3','Dive packages'),
 (29,29,'CANDY','4','Diving day trip'),
 (30,30,'CHOCO SNACKS','4','Diving day trip'),
 (31,31,'COOKIES','4','Diving day trip'),
 (32,32,'PEANUTS','4','Diving day trip'),
 (33,33,'HALO-HALO','5','Equipment rental'),
 (34,34,'SHAKE','5','Equipment rental'),
 (35,35,'FRUIT MIX','5','Equipment rental'),
 (36,36,'SNOW CREAM','5','Equipment rental'),
 (37,37,'BANANA SPLIT','5','Equipment rental'),
 (38,38,'TEMPURA','5','Equipment rental'),
 (39,39,'FRENCH FRIES','5','Equipment rental'),
 (40,40,'CHOCOLATE DRINKS','6','diving courses'),
 (41,41,'JUICE','6','diving courses'),
 (42,42,'MILK DRINKS','6','diving courses'),
 (43,43,'WATER','6','diving courses'),
 (44,44,'7-UP','6','diving courses'),
 (45,45,'MIRINDA','6','diving courses'),
 (46,46,'MOUNTAIN DEW','6','diving courses'),
 (47,47,'PEPSI','6','diving courses');
INSERT INTO `category_type` (`id`,`type_num`,`type_name`,`cat_num`,`cat_name`) VALUES 
 (48,48,'BEEF','7','transportation'),
 (49,49,'BREAKFAST MEALS','7','transportation'),
 (50,50,'CHICKEN','7','transportation'),
 (51,51,'FISH','7','transportation'),
 (52,52,'NOODLES/PASTA','7','transportation'),
 (53,53,'PORK','7','transportation'),
 (54,54,'VEGETABLES','7','transportation'),
 (55,55,'SORBETES','8','equipment for sale'),
 (56,56,'UBE CUPS','8','equipment for sale'),
 (57,57,'VANILLA LOADED','8','equipment for sale'),
 (58,58,'REG ICE CREAM','9','items for sale'),
 (59,59,'Band aid','1','sanctuary'),
 (60,60,'safety pin','1','sanctuary'),
 (61,61,'johnson ','1','sanctuary'),
 (62,62,'close up','1','sanctuary'),
 (63,63,'colgate','1','sanctuary');
/*!40000 ALTER TABLE `category_type` ENABLE KEYS */;


--
-- Definition of table `ci_no`
--

DROP TABLE IF EXISTS `ci_no`;
CREATE TABLE `ci_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ci_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_no`
--

/*!40000 ALTER TABLE `ci_no` DISABLE KEYS */;
INSERT INTO `ci_no` (`id`,`ci_num`) VALUES 
 (1,1000),
 (2,14),
 (3,14),
 (4,1001),
 (5,1002),
 (6,1003),
 (7,1004),
 (8,1005),
 (9,1006),
 (10,1007),
 (11,1008),
 (12,1009),
 (13,1010),
 (14,1011),
 (15,1011),
 (16,1012),
 (17,1012),
 (18,1013),
 (19,1014),
 (20,1015),
 (21,1016),
 (22,1017),
 (23,1018),
 (24,1019),
 (25,1020),
 (26,1021),
 (27,1021),
 (28,1021),
 (29,1021),
 (30,1021);
/*!40000 ALTER TABLE `ci_no` ENABLE KEYS */;


--
-- Definition of table `commission`
--

DROP TABLE IF EXISTS `commission`;
CREATE TABLE `commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `total_sales` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission`
--

/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
/*!40000 ALTER TABLE `commission` ENABLE KEYS */;


--
-- Definition of table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(200) DEFAULT NULL,
  `capital` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (1,'Afghanistan','Kabul'),
 (2,'Albania','Tirana'),
 (3,'Algeria','Algiers'),
 (4,'Andorra','Andorra la Vella'),
 (5,'Angola','Luanda'),
 (6,'Antigua and Barbuda','Saint Johns'),
 (7,'Argentina','Buenos Aires'),
 (8,'Armenia','Yerevan'),
 (9,'Australia','Canberra'),
 (10,'Austria','Vienna'),
 (11,'Azerbaijan ','Baku'),
 (12,'The Bahamas','Nassau'),
 (13,'Bahrain','Manama'),
 (14,'Bangladesh ','Dhaka'),
 (15,'Barbados','Bridgetown'),
 (16,'Belarus','Minsk'),
 (17,'Belgium','Brussels'),
 (18,'Belize','Belmopan'),
 (19,'Benin - Port','ovo'),
 (20,'Bhutan','Thimphu'),
 (21,'Bolivia','La Paz (administrative), Sucre (judicial)'),
 (22,'Bosnia and Herzegovina','Sarajevo'),
 (23,'Botswana','Gaborone'),
 (24,'Brazil','Brasilia'),
 (25,'Brunei','Bandar Seri Begawan'),
 (26,'Bulgaria','Sofia'),
 (27,'Burkina Faso','Ouagadougou'),
 (28,'Burundi','Bujumbura'),
 (29,'Cambodia','Phnom Penh'),
 (30,'Cameroon','Yaounde'),
 (31,'Canada','Ottawa'),
 (32,'Cape Verde','Praia');
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (33,'Central African Republic','Bangui'),
 (34,'Chad','NDjamena'),
 (35,'Chile','Santiago'),
 (36,'China','Beijing'),
 (37,'Colombia','Bogota'),
 (38,'Comoros','Moroni'),
 (39,'Congo, Republic of the','Brazzaville'),
 (40,'Congo, Democratic Republic of the','Kinshasa'),
 (41,'Costa Rica ','San Jose'),
 (42,'Cote dIvoire','Yamoussoukro (official), Abidjan (de facto)'),
 (43,'Croatia','Zagreb'),
 (44,'Cuba','Havana'),
 (45,'Cyprus','Nicosia'),
 (46,'Czech Republic','Prague'),
 (47,'Denmark','Copenhagen'),
 (48,'Djibouti','Djibouti'),
 (49,'Dominica','Roseau'),
 (50,'Dominican Republic','Santo Domingo'),
 (51,'East Timor (Timor-Leste)','Dili'),
 (52,'Ecuador','Quito'),
 (53,'Egypt','Cairo'),
 (54,'El Salvador','San Salvador'),
 (55,'Equatorial Guinea','Malabo'),
 (56,'Eritrea','Asmara'),
 (57,'Estonia','Tallinn'),
 (58,'Ethiopia','Addis Ababa'),
 (59,'Fiji','Suva'),
 (60,'Finland','Helsinki'),
 (61,'France','Paris'),
 (62,'Gabon','Libreville'),
 (63,'The Gambia','Banjul');
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (64,'Georgia','Tbilisi'),
 (65,'Germany','Berlin'),
 (66,'Ghana','Accra'),
 (67,'Greece','Athens'),
 (68,'Grenada','Saint Georges'),
 (69,'Guatemala','Guatemala City'),
 (70,'Guinea','Conakry'),
 (71,'Guinea-Bissau','Bissau'),
 (72,'Guyana','Georgetown'),
 (73,'Haiti - Port-a','rince'),
 (74,'Honduras','Tegucigalpa'),
 (75,'Hungary','Budapest'),
 (76,'Iceland','Reykjavik'),
 (77,'India','New Delhi'),
 (78,'Indonesia','Jakarta'),
 (79,'Iran','Tehran'),
 (80,'Iraq','Baghdad'),
 (81,'Ireland','Dublin'),
 (82,'Israel','Jerusalem*'),
 (83,'Italy','Rome'),
 (84,'Jamaica','Kingston'),
 (85,'Japan','Tokyo'),
 (86,'Jordan','Amman'),
 (87,'Kazakhstan ','Astana'),
 (88,'Kenya','Nairobi'),
 (89,'Kiribati','Tarawa Atoll'),
 (90,'Korea, North','Pyongyang'),
 (91,'Korea, South','Seoul'),
 (92,'Kosovo','Pristina'),
 (93,'Kuwait','Kuwait City'),
 (94,'Kyrgyzstan ','Bishkek'),
 (95,'Laos','Vientiane'),
 (96,'Latvia','Riga'),
 (97,'Lebanon','Beirut'),
 (98,'Lesotho','Maseru');
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (99,'Liberia','Monrovia'),
 (100,'Libya','Tripoli'),
 (101,'Liechtenstein','Vaduz'),
 (102,'Lithuania','Vilnius'),
 (103,'Luxembourg ','Luxembourg'),
 (104,'Macedonia','Skopje'),
 (105,'Madagascar ','Antananarivo'),
 (106,'Malawi','Lilongwe'),
 (107,'Malaysia','Kuala Lumpur'),
 (108,'Maldives','Male'),
 (109,'Mali','Bamako'),
 (110,'Malta','Valletta'),
 (111,'Marshall Islands','Majuro'),
 (112,'Mauritania ','Nouakchott'),
 (113,'Mauritius','Port Louis'),
 (114,'Mexico','Mexico City'),
 (115,'Micronesia, Federated States of','Palikir'),
 (116,'Moldova','Chisinau'),
 (117,'Monaco','Monaco'),
 (118,'Mongolia','Ulaanbaatar'),
 (119,'Montenegro ','Podgorica'),
 (120,'Morocco','Rabat'),
 (121,'Mozambique ','Maputo'),
 (122,'Myanmar (Burma)','Rangoon (Yangon), Naypyidaw or Nay Pyi Taw (administrative)'),
 (123,'Namibia ','Windhoek'),
 (124,'Nauru','no official capital, government offices in Yaren District'),
 (125,'Nepal','Kathmandu'),
 (126,'Netherlands ','Amsterdam, The Hague (seat of government)');
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (127,'New Zealand','Wellington'),
 (128,'Nicaragua','Managua'),
 (129,'Niger','Niamey'),
 (130,'Nigeria','Abuja'),
 (131,'Norway','Oslo'),
 (132,'Oman','Muscat'),
 (133,'Pakistan','Islamabad'),
 (134,'Palau','Melekeok'),
 (135,'Panama','Panama City'),
 (136,'Papua New Guinea','Port Moresby'),
 (137,'Paraguay','Asuncion'),
 (138,'Peru','Lima'),
 (139,'Philippines ','Manila'),
 (140,'Poland','Warsaw'),
 (141,'Portugal','Lisbon'),
 (142,'Qatar','Doha'),
 (143,'Romania','Bucharest'),
 (144,'Russia','Moscow'),
 (145,'Rwanda','Kigali'),
 (146,'Saint Kitts and Nevis','Basseterre'),
 (147,'Saint Lucia','Castries'),
 (148,'Saint Vincent and the Grenadines','Kingstown'),
 (149,'Samoa','Apia'),
 (150,'San Marino','San Marino'),
 (151,'Sao Tome and Principe','Sao Tome'),
 (152,'Saudi Arabia','Riyadh'),
 (153,'Senegal','Dakar'),
 (154,'Serbia','Belgrade'),
 (155,'Seychelles ','Victoria'),
 (156,'Sierra Leone','Freetown'),
 (157,'Singapore','Singapore'),
 (158,'Slovakia','Bratislava');
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (159,'Slovenia','Ljubljana'),
 (160,'Solomon Islands','Honiara'),
 (161,'Somalia','Mogadishu'),
 (162,'South Africa','Pretoria (administrative), Cape Town (legislative), Bloemfontein (judiciary)'),
 (163,'South Sudan','Juba (Relocating to Ramciel)'),
 (164,'Spain','Madrid'),
 (165,'Sri Lanka','Colombo, Sri Jayewardenepura Kotte (legislative)'),
 (166,'Sudan','Khartoum'),
 (167,'Suriname','Paramaribo'),
 (168,'Swaziland','Mbabane'),
 (169,'Sweden','Stockholm'),
 (170,'Switzerland ','Bern'),
 (171,'Syria','Damascus'),
 (172,'Taiwan','Taipei'),
 (173,'Tajikistan ','Dushanbe'),
 (174,'Tanzania','Dar es Salaam, Dodoma (legislative)'),
 (175,'Thailand','Bangkok'),
 (176,'Togo','Lome'),
 (177,'Tonga','Nukualofa'),
 (178,'Trinidad and Tobago - Port-o','pain'),
 (179,'Tunisia','Tunis'),
 (180,'Turkey','Ankara'),
 (181,'Turkmenistan','Ashgabat'),
 (182,'Tuvalu','Vaiaku village, Funafuti province'),
 (183,'Uganda','Kampala'),
 (184,'Ukraine','Kyiv'),
 (185,'United Arab Emirates','Abu Dhabi');
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (186,'United Kingdom','London'),
 (187,'United States of America','Washington D.C.'),
 (188,'Uruguay','Montevideo'),
 (189,'Uzbekistan','Tashkent'),
 (190,'Vanuatu - Por','ila'),
 (191,'Vatican City (Holy See)','Vatican City'),
 (192,'Venezuela','Caracas'),
 (193,'Vietnam','Hanoi'),
 (194,'Yemen','Sanaa'),
 (195,'Zambia','Lusaka'),
 (196,'Zimbabwe','Harare '),
 (197,'Malaysia',''),
 (198,'Qatar',''),
 (199,'Iceland',''),
 (200,'Finland',''),
 (201,'Malta',''),
 (202,'Switzerland',''),
 (203,'Belgium',''),
 (204,'Saudi Arabia',''),
 (205,'Iraq',''),
 (206,'Puerto Rico',''),
 (207,'Chile',''),
 (208,'Austria',''),
 (209,'United Kingdom',''),
 (210,'Panama',''),
 (211,'Yemen',''),
 (212,'Macedonia',''),
 (213,'Canada',''),
 (214,'Vietnam',''),
 (215,'Netherlands',''),
 (216,'United States',''),
 (217,'China',''),
 (218,'Honduras',''),
 (219,'United States',''),
 (220,'Morocco',''),
 (221,'Indonesia',''),
 (222,'South Africa',''),
 (223,'South Korea','');
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (224,'Tunisia',''),
 (225,'Serbia',''),
 (226,'Belarus',''),
 (227,'Taiwan',''),
 (228,'Sudan',''),
 (229,'Japan',''),
 (230,'Bolivia',''),
 (231,'Algeria',''),
 (232,'Argentina',''),
 (233,'United Arab Emirates',''),
 (234,'Canada',''),
 (235,'Lithuania',''),
 (236,'Montenegro',''),
 (237,'Syria',''),
 (238,'Russia',''),
 (239,'Belgium',''),
 (240,'Spain',''),
 (241,'Israel',''),
 (242,'Denmark',''),
 (243,'Costa Rica',''),
 (244,'Hong Kong',''),
 (245,'Spain',''),
 (246,'Thailand',''),
 (247,'Ukraine',''),
 (248,'Dominican Republic',''),
 (249,'Venezuela',''),
 (250,'Poland',''),
 (251,'Libya',''),
 (252,'Jordan',''),
 (253,'Hungary',''),
 (254,'Guatemala',''),
 (255,'Paraguay',''),
 (256,'Bulgaria',''),
 (257,'Croatia',''),
 (258,'Bosnia and Herzegovina',''),
 (259,'Romania',''),
 (260,'Luxembourg',''),
 (261,'Singapore',''),
 (262,'Ecuador',''),
 (263,'Bosnia and Herzegovina',''),
 (264,'Nicaragua',''),
 (265,'El Salvador',''),
 (266,'India','');
INSERT INTO `countries` (`id`,`country`,`capital`) VALUES 
 (267,'Greece',''),
 (268,'Slovenia',''),
 (269,'Italy',''),
 (270,'Japan',''),
 (271,'Luxembourg',''),
 (272,'Switzerland',''),
 (273,'Malta',''),
 (274,'Bahrain',''),
 (275,'Montenegro',''),
 (276,'Brazil',''),
 (277,'Norway',''),
 (278,'Switzerland',''),
 (279,'Singapore',''),
 (280,'Kuwait',''),
 (281,'Egypt',''),
 (282,'Ireland',''),
 (283,'Peru',''),
 (284,'Czech Republic',''),
 (285,'Turkey',''),
 (286,'Uruguay',''),
 (287,'Ireland',''),
 (288,'India',''),
 (289,'Oman',''),
 (290,'Serbia and Montenegro',''),
 (291,'Albania',''),
 (292,'Portugal',''),
 (293,'Latvia',''),
 (294,'Serbia',''),
 (295,'Slovakia',''),
 (296,'Mexico',''),
 (297,'Australia',''),
 (298,'Norway',''),
 (299,'New Zealand',''),
 (300,'Sweden',''),
 (301,'Lebanon',''),
 (302,'Germany',''),
 (303,'Thailand',''),
 (304,'Colombia',''),
 (305,'Philippines',''),
 (306,'Estonia',''),
 (307,'Cyprus',''),
 (308,'France','');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;


--
-- Definition of table `credits`
--

DROP TABLE IF EXISTS `credits`;
CREATE TABLE `credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `or_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `card_type` varchar(100) DEFAULT NULL,
  `card_holder` varchar(200) DEFAULT NULL,
  `card_no` varchar(200) DEFAULT NULL,
  `approval_code` varchar(200) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credits`
--

/*!40000 ALTER TABLE `credits` DISABLE KEYS */;
/*!40000 ALTER TABLE `credits` ENABLE KEYS */;


--
-- Definition of table `customer_charges`
--

DROP TABLE IF EXISTS `customer_charges`;
CREATE TABLE `customer_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_num` varchar(100) DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `or_num` varchar(100) DEFAULT NULL,
  `ci_num` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `is_payed` varchar(100) DEFAULT NULL,
  `date_payed` datetime DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_charges`
--

/*!40000 ALTER TABLE `customer_charges` DISABLE KEYS */;
INSERT INTO `customer_charges` (`id`,`cust_num`,`cust_name`,`or_num`,`ci_num`,`amount`,`date_added`,`is_payed`,`date_payed`,`user_name`,`user_id`) VALUES 
 (6,'2012000164','CADAPAN, Reymil','0','1000',27,'2012-06-03 05:17:57','yes','2012-06-16 00:00:00','cashier','1'),
 (7,'2012000164','CADAPAN, Reymil','0','1001',27,'2012-06-03 05:18:52','yes','2012-06-16 00:00:00','cashier','1'),
 (8,'2012000163','CADALIN, Joveniano','0','1002',13.5,'2012-06-03 05:19:22','yes','2012-06-18 00:00:00','cashier','1'),
 (9,'2012000164','CADAPAN, Reymil','0','1001',13.5,'2012-06-04 02:35:02','yes','2012-06-16 00:00:00','cashier','1'),
 (10,'2012000164','CADAPAN, Reymil','0','1002',27,'2012-06-04 02:36:02','yes','2012-06-18 00:00:00','cashier','1'),
 (11,'2012000164','CADAPAN, Reymil','0','1003',46,'2012-06-04 05:47:16','yes','2012-06-18 00:00:00','cashier','1'),
 (12,'2012000164','CADAPAN, Reymil','0','1004',46,'2012-06-04 05:49:33','yes','2012-06-18 00:00:00','cashier','1'),
 (13,'2012000164','CADAPAN, Reymil','0','1005',46,'2012-06-04 06:05:05','yes','2012-06-18 00:00:00','cashier','1'),
 (14,'2012000164','CADAPAN, Reymil','0','1006',46,'2012-06-04 06:21:55','no',NULL,'cashier','1');
INSERT INTO `customer_charges` (`id`,`cust_num`,`cust_name`,`or_num`,`ci_num`,`amount`,`date_added`,`is_payed`,`date_payed`,`user_name`,`user_id`) VALUES 
 (15,'2012000164','CADAPAN, Reymil','0','1007',46,'2012-06-04 06:23:46','no',NULL,'cashier','1'),
 (16,'2012000164','CADAPAN, Reymil','0','1008',46,'2012-06-04 06:26:16','no',NULL,'cashier','1'),
 (17,'2012000164','CADAPAN, Reymil','0','1009',71,'2012-06-05 10:27:46','no',NULL,'cashier','1'),
 (18,'2012000164','CADAPAN, Reymil','0','1010',13.5,'2012-06-05 05:21:25','no',NULL,'cashier','1'),
 (19,'2012000164','CADAPAN, Reymil','0','1011',13.5,'2012-06-05 05:29:01','no',NULL,'cashier','1'),
 (20,'2012000164','CADAPAN, Reymil','0','1011',13.5,'2012-06-05 05:29:26','no',NULL,'cashier','1'),
 (21,'2012000164','CADAPAN, Reymil','0','1012',113.5,'2012-06-05 05:36:05','no',NULL,'cashier','1'),
 (22,'2012000164','CADAPAN, Reymil','0','1012',113.5,'2012-06-05 05:36:20','no',NULL,'cashier','1'),
 (23,'2012000164','CADAPAN, Reymil','0','1013',113.5,'2012-06-05 05:39:22','no',NULL,'cashier','1'),
 (24,'2012000164','CADAPAN, Reymil','0','1014',100,'2012-06-05 05:39:50','no',NULL,'cashier','1');
INSERT INTO `customer_charges` (`id`,`cust_num`,`cust_name`,`or_num`,`ci_num`,`amount`,`date_added`,`is_payed`,`date_payed`,`user_name`,`user_id`) VALUES 
 (25,'2012000164','CADAPAN, Reymil','0','1015',1000,'2012-06-06 03:03:09','no',NULL,'0','1'),
 (26,'2012000164','CADAPAN, Reymil','0','1016',1500,'2012-06-06 03:04:06','no',NULL,'0','1'),
 (27,'2012000164','CADAPAN, Reymil','29','1017',270,'2012-06-15 11:45:01','no',NULL,'cashier','1'),
 (28,'2012000903','Ronald Pascua','34','1018',145,'2012-06-16 02:33:25','no',NULL,'cashier','1'),
 (29,'2012000903','Ronald Pascua','36','1019',100,'2012-06-16 02:34:25','no',NULL,'cashier','1'),
 (30,'','Ronald c Pascua','4','1020',3650,'2012-12-17 05:53:58','no','2012-12-17 05:53:58','front','1'),
 (31,'20120001','Abello Raymund','10','1021',2029350,'2012-12-17 09:43:12','no','2012-12-17 09:43:12','cashier','1'),
 (32,'20120001','Abello Raymund','10','1021',2029350,'2012-12-17 09:56:04','no','2012-12-17 09:56:04','top','1'),
 (33,'20120001','Abello Raymund','10','1021',2029350,'2012-12-17 10:09:16','no','2012-12-17 10:09:16','top','1'),
 (34,'20120001','Abello Raymund','10','1021',2029350,'2012-12-17 10:09:34','no','2012-12-17 10:09:34','top','1');
INSERT INTO `customer_charges` (`id`,`cust_num`,`cust_name`,`or_num`,`ci_num`,`amount`,`date_added`,`is_payed`,`date_payed`,`user_name`,`user_id`) VALUES 
 (35,'20120001','Abello Raymund','10','1021',2029350,'2012-12-17 10:10:01','no','2012-12-17 10:10:01','top','1');
/*!40000 ALTER TABLE `customer_charges` ENABLE KEYS */;


--
-- Definition of table `customer_table_details_assembly`
--

DROP TABLE IF EXISTS `customer_table_details_assembly`;
CREATE TABLE `customer_table_details_assembly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ctd_id` int(11) DEFAULT NULL,
  `prod_num` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_qty` double DEFAULT NULL,
  `ref_num` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `table_no` varchar(100) DEFAULT NULL,
  `is_selected` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table_details_assembly`
--

/*!40000 ALTER TABLE `customer_table_details_assembly` DISABLE KEYS */;
INSERT INTO `customer_table_details_assembly` (`id`,`ctd_id`,`prod_num`,`description`,`price`,`product_qty`,`ref_num`,`status`,`table_no`,`is_selected`) VALUES 
 (1,12,'1','diving-Dauin Coast',150,1,'25',0,'35',1),
 (2,12,'2','diving-Apo Island',300,1,'25',0,'35',0),
 (3,12,'3','diving-Siquijor',150,1,'25',0,'35',0),
 (4,3,'1','diving-Dauin Coast',150,1,'25',0,'5',1),
 (5,3,'2','diving-Apo Island',300,1,'25',0,'5',0),
 (6,3,'3','diving-Siquijor',150,1,'25',0,'5',0);
/*!40000 ALTER TABLE `customer_table_details_assembly` ENABLE KEYS */;


--
-- Definition of table `customer_tables`
--

DROP TABLE IF EXISTS `customer_tables`;
CREATE TABLE `customer_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_no` varchar(100) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `or_no` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `guest_id` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mi` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_tables`
--

/*!40000 ALTER TABLE `customer_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_tables` ENABLE KEYS */;


--
-- Definition of table `customer_tables_details`
--

DROP TABLE IF EXISTS `customer_tables_details`;
CREATE TABLE `customer_tables_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_no_id` varchar(100) DEFAULT NULL,
  `or_no` varchar(100) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img_path` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `guest_id` varchar(100) DEFAULT NULL,
  `guest_name` varchar(100) DEFAULT NULL,
  `cat_id` varchar(100) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_tables_details`
--

/*!40000 ALTER TABLE `customer_tables_details` DISABLE KEYS */;
INSERT INTO `customer_tables_details` (`id`,`table_no_id`,`or_no`,`qty`,`product_name`,`description`,`price`,`img_path`,`status`,`guest_id`,`guest_name`,`cat_id`,`date_added`) VALUES 
 (1,'7',NULL,1,'1','diving-Dauin Coast',150,'siopao.jpeg',0,'00000001','Ronald c Pascua','1','2012-12-17 06:49:46'),
 (2,'7',NULL,2,'2','diving-Apo Island',600,'siopao.jpeg',0,'00000001','Ronald c Pascua','1','2012-12-17 06:49:46'),
 (3,'5',NULL,1,'25','Siquijor',150,'siopao.jpeg',1,'00000001','Ronald c Pascua','2','2012-12-17 06:55:44'),
 (4,'7',NULL,1,'8','snorkeling-Siquijor',50,'siopao.jpeg',0,'00000001','Ronald c Pascua','1','2012-12-17 06:57:24'),
 (5,'7',NULL,1,'1','diving-Dauin Coast',150,'siopao.jpeg',1,'00000002','Juan dela Cruz','1','2012-12-17 06:57:33'),
 (6,'1',NULL,1,'29','Single Person-1 dive w/o EANX',1300,'siopao.jpeg',1,'-1','Walk-In  ','3','2012-12-17 07:44:47'),
 (7,'1',NULL,2,'36','Single Person-2 dive w/ EANX',6200,'siopao.jpeg',1,'-1','Walk-In  ','3','2012-12-17 07:44:47'),
 (8,'2',NULL,3,'1','diving-Dauin Coast',150,'siopao.jpeg',1,'-1','Walk-In  ','1','2012-12-17 09:37:35'),
 (9,'2',NULL,82,'2','diving-Apo Island',24600,'siopao.jpeg',1,'-1','Walk-In  ','1','2012-12-17 09:37:35');
INSERT INTO `customer_tables_details` (`id`,`table_no_id`,`or_no`,`qty`,`product_name`,`description`,`price`,`img_path`,`status`,`guest_id`,`guest_name`,`cat_id`,`date_added`) VALUES 
 (10,'2',NULL,1,'33','Single Person-5 dive w/o EANX',5500,'siopao.jpeg',1,'-1','Walk-In  ','3','2012-12-17 09:39:26'),
 (11,'2',NULL,2,'35','Single Person-1 dive w/ EANX',3100,'siopao.jpeg',1,'-1','Walk-In  ','3','2012-12-17 09:39:26'),
 (12,'1',NULL,1,'199','SMB',40,'siopao.jpeg',1,'-1','Walk-In  ','10','2012-12-17 10:00:55');
/*!40000 ALTER TABLE `customer_tables_details` ENABLE KEYS */;


--
-- Definition of table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `occupation` varchar(200) DEFAULT NULL,
  `income` varchar(200) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  `civil_status` varchar(200) DEFAULT NULL,
  `is_male` tinyint(4) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `credit_limit` double DEFAULT NULL,
  `groups` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20120095 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`,`member_name`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`balance`,`credit_limit`,`groups`) VALUES 
 (20120001,'Abello Raymund','','','','','1990-01-01','',0,0,1000,0),
 (20120002,'Alcoran Elsie','','','','','1990-01-01','',0,0,1000,0),
 (20120003,'Aranas Lealee','','','','','1990-01-01','',0,0,1000,0),
 (20120004,'Asignar Stanley','','','','','1990-01-01','',0,0,1000,0),
 (20120005,'Banagua Artemio','','','','','1990-01-01','',0,0,1000,0),
 (20120006,'Banua  Isabel','','','','','1990-01-01','',0,0,1000,0),
 (20120007,'Barrera Judalyn','','','','','1990-01-01','',0,0,1000,0),
 (20120008,'Batiancila Nidrea Kizza','','','','','1990-01-01','',0,0,1000,0),
 (20120009,'Bato Ellen','','','','','1990-01-01','',0,0,1000,0),
 (20120010,'Boladola Absalon','','','','','1990-01-01','',0,0,1000,0),
 (20120011,'Budiongan Mirasol','','','','','1990-01-01','',0,0,1000,0),
 (20120012,'Cabrera Elna Janiel','','','','','1990-01-01','',0,0,1000,0),
 (20120013,'Cadavez Anna Marie','','','','','1990-01-01','',0,0,1000,0);
INSERT INTO `customers` (`id`,`member_name`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`balance`,`credit_limit`,`groups`) VALUES 
 (20120014,'Cadavez Evangeline','','','','','1990-01-01','',0,0,1000,0),
 (20120015,'Callora Alona','','','','','1990-01-01','',0,0,1000,0),
 (20120016,'Calunod Reylan','','','','','1990-01-01','',0,0,1000,0),
 (20120017,'Cavales Catherine','','','','','1990-01-01','',0,0,1000,0),
 (20120018,'Chiu Francis Vincent','','','','','1990-01-01','',0,0,1000,0),
 (20120019,'Cornelia Arlene','','','','','1990-01-01','',0,0,1000,0),
 (20120020,'Deciar Jaydawn','','','','','1990-01-01','',0,0,1000,0),
 (20120021,'Dequito Amethyst Edda','','','','','1990-01-01','',0,0,1000,0),
 (20120022,'Divino Fritz','','','','','1990-01-01','',0,0,1000,0),
 (20120023,'Duhaylungsod Lil','','','','','1990-01-01','',0,0,1000,0),
 (20120024,'Duran Estelita','','','','','1990-01-01','',0,0,1000,0),
 (20120025,'Felisco Carol','','','','','1990-01-01','',0,0,1000,0),
 (20120026,'Fernandez Percie Joy','','','','','1990-01-01','',0,0,1000,0);
INSERT INTO `customers` (`id`,`member_name`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`balance`,`credit_limit`,`groups`) VALUES 
 (20120027,'Flores Edgardo','','','','','1990-01-01','',0,0,1000,0),
 (20120028,'Gabutero Liznil','','','','','1990-01-01','',0,0,1000,0),
 (20120029,'Galsing Lexiebeth','','','','','1990-01-01','',0,0,1000,0),
 (20120030,'Garibay Leizel','','','','','1990-01-01','',0,0,1000,0),
 (20120031,'Hurtado Jeanette','','','','','1990-01-01','',0,0,1000,0),
 (20120032,'Hurtado Sandy','','','','','1990-01-01','',0,0,1000,0),
 (20120033,'Katada Corazon','','','','','1990-01-01','',0,0,1000,0),
 (20120034,'Ladura Riza','','','','','1990-01-01','',0,0,1000,0),
 (20120035,'Lareña Roxanne','','','','','1990-01-01','',0,0,1000,0),
 (20120036,'Lasola Wilmer','','','','','1990-01-01','',0,0,1000,0),
 (20120037,'Manzano Noreen','','','','','1990-01-01','',0,0,1000,0),
 (20120038,'Maquiling Beatriz','','','','','1990-01-01','',0,0,1000,0),
 (20120039,'Marimat Alpha Omega','','','','','1990-01-01','',0,0,1000,0),
 (20120040,'Mongcopa Chona','','','','','1990-01-01','',0,0,1000,0);
INSERT INTO `customers` (`id`,`member_name`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`balance`,`credit_limit`,`groups`) VALUES 
 (20120041,'Navera Elvira','','','','','1990-01-01','',0,0,1000,0),
 (20120042,'Nocete Zillah','','','','','1990-01-01','',0,0,1000,0),
 (20120043,'Nuique Jose Roel','','','','','1990-01-01','',0,0,1000,0),
 (20120044,'Opsima  Lourdes','','','','','1990-01-01','',0,0,1000,0),
 (20120045,'Orellana Mary Lou','','','','','1990-01-01','',0,0,1000,0),
 (20120046,'Ortega Rona','','','','','1990-01-01','',0,0,1000,0),
 (20120047,'Pabatang Anthnolette','','','','','1990-01-01','',0,0,1000,0),
 (20120048,'Panday Janisa','','','','','1990-01-01','',0,0,1000,0),
 (20120049,'Piñero Vanessa ','','','','','1990-01-01','',0,0,1000,0),
 (20120050,'Puspus Jocelyn','','','','','1990-01-01','',0,0,1000,0),
 (20120051,'Quinamot Rene','','','','','1990-01-01','',0,0,1000,0),
 (20120052,'Rangaig Mona Lisa','','','','','1990-01-01','',0,0,1000,0),
 (20120053,'Saluria Raymart Anthony','','','','','1990-01-01','',0,0,1000,0);
INSERT INTO `customers` (`id`,`member_name`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`balance`,`credit_limit`,`groups`) VALUES 
 (20120054,'Santillan Miraluna','','','','','1990-01-01','',0,0,1000,0),
 (20120055,'Silva Ma.Theresa','','','','','1990-01-01','',0,0,1000,0),
 (20120056,'Tan Joan Ann','','','','','1990-01-01','',0,0,1000,0),
 (20120057,'Tenorio Mae','','','','','1990-01-01','',0,0,1000,0),
 (20120058,'Valencia Lizbeth','','','','','1990-01-01','',0,0,1000,0),
 (20120059,'Velez Cherry Ann','','','','','1990-01-01','',0,0,1000,0),
 (20120060,'Villordon Jeanette','','','','','1990-01-01','',0,0,1000,0),
 (20120061,'Vintola Ma.Irmina','','','','','1990-01-01','',0,0,1000,0),
 (20120062,'Waleson Bart','','','','','1990-01-01','',0,0,1000,0),
 (20120063,'Waleson Butch','','','','','1990-01-01','',0,0,1000,0),
 (20120064,'Yusi Catherine','','','','','1990-01-01','',0,0,1000,0),
 (20120065,'Cabrera Bayani','','','','','1990-01-01','',0,0,1000,0),
 (20120066,'Cabrera Elna Janiel','','','','','1990-01-01','',0,0,1000,0);
INSERT INTO `customers` (`id`,`member_name`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`balance`,`credit_limit`,`groups`) VALUES 
 (20120067,'Cadimas Stephen','','','','','1990-01-01','',0,0,1000,0),
 (20120068,'Casipong Jemar','','','','','1990-01-01','',0,0,1000,0),
 (20120069,'Diputado Ginara','','','','','1990-01-01','',0,0,1000,0),
 (20120070,'Rufiño Elpidio Jr.','','','','','1990-01-01','',0,0,1000,0),
 (20120071,'Vendiola Ma.Victoria','','','','','1990-01-01','',0,0,1000,0),
 (20120072,'Ada Claro','','','','','1990-01-01','',0,0,1000,0),
 (20120073,'Amil Gerardo Sr.','','','','','1990-01-01','',0,0,1000,0),
 (20120074,'Amorganda Reggie','','','','','1990-01-01','',0,0,1000,0),
 (20120075,'Batigulao Jose','','','','','1990-01-01','',0,0,1000,0),
 (20120076,'Catamora Jimboy','','','','','1990-01-01','',0,0,1000,0),
 (20120077,'Catamora Reynaldo','','','','','1990-01-01','',0,0,1000,0),
 (20120078,'Estoconing Dennis','','','','','1990-01-01','',0,0,1000,0),
 (20120079,'Geromo Valentino','','','','','1990-01-01','',0,0,1000,0);
INSERT INTO `customers` (`id`,`member_name`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`balance`,`credit_limit`,`groups`) VALUES 
 (20120080,'Infante Angelito','','','','','1990-01-01','',0,0,1000,0),
 (20120081,'Infante Gualberto','','','','','1990-01-01','',0,0,1000,0),
 (20120082,'Samson Orlando','','','','','1990-01-01','',0,0,1000,0),
 (20120083,'Sombrio Rolando','','','','','1990-01-01','',0,0,1000,0),
 (20120084,'Amil Marilyn','','','','','1990-01-01','',0,0,1000,0),
 (20120085,'Angot Anecita','','','','','1990-01-01','',0,0,1000,0),
 (20120086,'Banquerigo Elma','','','','','1990-01-01','',0,0,1000,0),
 (20120087,'Doño Eufemio','','','','','1990-01-01','',0,0,1000,0),
 (20120088,'Duran Florence','','','','','1990-01-01','',0,0,1000,0),
 (20120089,'Labayen Josephine','','','','','1990-01-01','',0,0,1000,0),
 (20120090,'Saraña Leonila','','','','','1990-01-01','',0,0,1000,0),
 (20120091,'Saraña Mario','','','','','1990-01-01','',0,0,1000,0),
 (20120092,'Soledad Lida','','','','','1990-01-01','',0,0,1000,0),
 (20120093,'Uy Mila','','','','','1990-01-01','',0,0,1000,0);
INSERT INTO `customers` (`id`,`member_name`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`balance`,`credit_limit`,`groups`) VALUES 
 (20120094,'Carcusia Oscar','','','','','1990-01-01','',0,0,1000,0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


--
-- Definition of table `dates`
--

DROP TABLE IF EXISTS `dates`;
CREATE TABLE `dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dates`
--

/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;


--
-- Definition of table `direct_credit`
--

DROP TABLE IF EXISTS `direct_credit`;
CREATE TABLE `direct_credit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashier_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `direct_credit`
--

/*!40000 ALTER TABLE `direct_credit` DISABLE KEYS */;
INSERT INTO `direct_credit` (`id`,`cashier_id`,`date_added`,`amount`) VALUES 
 (1,9,'2012-07-24',150),
 (2,9,'2021-07-24',140),
 (3,9,'2012-07-25',450),
 (4,13,'2012-07-25',234),
 (5,14,'2012-07-25',294),
 (6,15,'2012-07-25',99),
 (7,16,'2012-07-25',296),
 (8,1000,'2012-08-06',755);
/*!40000 ALTER TABLE `direct_credit` ENABLE KEYS */;


--
-- Definition of table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discounts`
--

/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` (`id`,`name`,`rate`) VALUES 
 (1,'Senior Citizen',6),
 (2,'Programmer',10),
 (3,'adada',1),
 (4,'adad',1);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;


--
-- Definition of table `endorsement_histories`
--

DROP TABLE IF EXISTS `endorsement_histories`;
CREATE TABLE `endorsement_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `prev_endorsed` double DEFAULT NULL,
  `qty_endorsed` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `cashier_id` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=611 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endorsement_histories`
--

/*!40000 ALTER TABLE `endorsement_histories` DISABLE KEYS */;
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 10:55:16',17,NULL),
 (2,'19','SHORT BROWN ENVELOPE',1,0,'2012-07-19 10:56:24',17,NULL),
 (3,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:04:29',17,NULL),
 (4,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:06:52',17,NULL),
 (5,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:08:00',17,NULL),
 (6,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:35:35',17,NULL),
 (7,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:42:08',17,NULL),
 (8,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:44:24',17,NULL),
 (9,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:44:51',17,NULL),
 (10,'19','SHORT BROWN ENVELOPE',2,0,'2012-07-19 11:49:24',17,NULL),
 (11,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:50:20',17,NULL),
 (12,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:56:17',17,NULL),
 (13,'19','SHORT BROWN ENVELOPE',0,0,'2012-07-19 11:56:49',17,NULL),
 (14,'3','SAFEGUARD REG.',0,0,'2012-07-19 01:02:34',17,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (15,'3','SAFEGUARD REG.',0,0,'2012-07-19 01:03:53',17,NULL),
 (16,'3','SAFEGUARD REG.',0,0,'2012-07-19 01:12:46',17,NULL),
 (17,'3','SAFEGUARD REG.',5,0,'2012-07-19 01:24:38',17,NULL),
 (18,'3','SAFEGUARD REG.',10,0,'2012-07-19 01:31:44',17,NULL),
 (19,'3','SAFEGUARD REG.',15,0,'2012-07-19 02:33:16',17,NULL),
 (20,'366','a',0,0,'2012-07-19 03:15:13',17,NULL),
 (21,'7','ACE TOILET PAPER',0,0,'2012-07-24 10:50:15',17,NULL),
 (22,'300','BURGER',0,0,'2012-07-24 11:07:36',9,NULL),
 (23,'309','HAM AND EGG',0,0,'2012-07-24 11:07:36',9,NULL),
 (24,'307','SANDWICH',0,0,'2012-07-24 11:07:36',9,NULL),
 (25,'308','CHEESEBURGER',0,0,'2012-07-24 11:07:36',9,NULL),
 (26,'54','BIG BANG',0,0,'2012-07-24 11:18:39',9,NULL),
 (27,'359','snow bear',0,0,'2012-07-24 11:18:39',9,NULL),
 (28,'78','CLOUD 9',0,0,'2012-07-24 11:18:39',9,NULL),
 (29,'67','SOFT CANDY ORANGE',0,0,'2012-07-24 11:18:39',9,NULL),
 (30,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-07-24 02:55:53',16,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (31,'100','PRESTO CREAM',0,0,'2012-07-24 02:55:53',16,NULL),
 (32,'98','HIRO',0,0,'2012-07-24 02:55:53',16,NULL),
 (33,'103','VOICE CHOCOLATE',0,0,'2012-07-24 02:55:53',16,NULL),
 (34,'357','nissin stick',0,0,'2012-07-24 02:55:53',16,NULL),
 (35,'96','GRAHAM',0,0,'2012-07-24 02:55:53',16,NULL),
 (36,'90','CREAM O bis.',0,0,'2012-07-24 02:55:53',16,NULL),
 (37,'78','CLOUD 9',0,0,'2012-07-24 02:55:53',16,NULL),
 (38,'54','BIG BANG',0,0,'2012-07-24 02:55:53',16,NULL),
 (39,'57','JELLY ACE',0,0,'2012-07-24 02:55:53',16,NULL),
 (40,'93','DYNAMIC CHOCO',0,0,'2012-07-24 02:55:53',16,NULL),
 (41,'101','SKY FLAKES',0,0,'2012-07-24 02:55:53',16,NULL),
 (42,'85','CHOCO CRUNCHES',0,0,'2012-07-24 02:55:53',16,NULL),
 (43,'94','EXTREME REBISCO',0,0,'2012-07-24 02:55:53',16,NULL),
 (44,'95','Fast BREak',0,0,'2012-07-24 02:55:53',16,NULL),
 (45,'104','WAFER TIMES',0,0,'2012-07-24 02:55:53',16,NULL),
 (46,'97','HANSEL CHOCOLATE',0,0,'2012-07-24 02:55:53',16,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (47,'76','CHUBBY CHOCO CHOEY',0,0,'2012-07-24 02:55:53',16,NULL),
 (48,'87','CHUnkie COOKIES',0,0,'2012-07-24 02:55:53',16,NULL),
 (49,'71','WHY NUTS MILK',0,0,'2012-07-24 02:55:53',16,NULL),
 (50,'126','T-FRUIT BURST 355ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (51,'120','L-Z ST. LEMON 500ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (52,'129','Premier  WATER500 ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (53,'130','Premier water 350 ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (54,'354','softdrinks in cups',0,0,'2012-07-24 02:55:53',16,NULL),
 (55,'220','chocolate milk 250ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (56,'140','PEPSI 8oz',0,0,'2012-07-24 02:55:53',16,NULL),
 (57,'135','MIRINDA 8oz',0,0,'2012-07-24 02:55:53',16,NULL),
 (58,'133','7-UP 8oz',0,0,'2012-07-24 02:55:53',16,NULL),
 (59,'138','MOUNTAIN DEW 12oz',0,0,'2012-07-24 02:55:53',16,NULL),
 (60,'67','SOFT CANDY ORANGE',0,0,'2012-07-24 02:55:53',16,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (61,'134','7-UP 500ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (62,'353','gatorade',0,0,'2012-07-24 02:55:53',16,NULL),
 (63,'139','MOUNTAIN DEW 500ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (64,'136','MIRINDA 500ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (65,'119','L-SEY APPLE 500ml',0,0,'2012-07-24 02:55:53',16,NULL),
 (66,'360','BUKO JUICE',0,0,'2012-07-24 02:55:53',16,NULL),
 (67,'215','yemas',0,0,'2012-07-24 02:55:53',16,NULL),
 (68,'336','PEANUTS',0,0,'2012-07-24 02:55:53',16,NULL),
 (69,'305','MEATBREAD',0,0,'2012-07-24 02:55:53',16,NULL),
 (70,'299','SIOPAO',0,0,'2012-07-24 02:55:53',16,NULL),
 (71,'295','MAMMOON',0,0,'2012-07-24 02:55:53',16,NULL),
 (72,'298','CHOCO MOIST SLICE',0,0,'2012-07-24 02:55:53',16,NULL),
 (73,'311','PUDDING',0,0,'2012-07-24 02:55:53',16,NULL),
 (74,'312','PIZZA BREAD',0,0,'2012-07-24 02:55:53',16,NULL),
 (75,'300','BURGER',0,0,'2012-07-24 02:55:53',16,NULL),
 (76,'301','SPAGHETTI',0,0,'2012-07-24 02:55:53',16,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (77,'302','SPAGHETTI W/BREAD',0,0,'2012-07-24 02:55:53',16,NULL),
 (78,'306','TOCINO',0,0,'2012-07-24 02:55:53',16,NULL),
 (79,'307','SANDWICH',0,0,'2012-07-24 02:55:53',16,NULL),
 (80,'308','CHEESEBURGER',0,0,'2012-07-24 02:55:53',16,NULL),
 (81,'309','HAM AND EGG',0,0,'2012-07-24 02:55:53',16,NULL),
 (82,'328','ENSAIMONGO',0,0,'2012-07-24 02:55:53',16,NULL),
 (83,'327','BAYE- BAYE',0,0,'2012-07-24 02:55:53',16,NULL),
 (84,'310','CHAMPORADO',0,0,'2012-07-24 02:55:53',16,NULL),
 (85,'303','BICO',0,0,'2012-07-24 02:55:53',16,NULL),
 (86,'307','SANDWICH',0,0,'2012-07-24 03:34:24',9,NULL),
 (87,'300','BURGER',0,0,'2012-07-24 03:34:24',9,NULL),
 (88,'299','SIOPAO',0,0,'2012-07-24 03:34:24',9,NULL),
 (89,'301','SPAGHETTI',0,0,'2012-07-24 03:34:24',9,NULL),
 (90,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-07-24 03:34:24',9,NULL),
 (91,'100','PRESTO CREAM',0,0,'2012-07-24 03:34:24',9,NULL),
 (92,'103','VOICE CHOCOLATE',0,0,'2012-07-24 03:34:24',9,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (93,'96','GRAHAM',0,0,'2012-07-24 03:34:24',9,NULL),
 (94,'97','HANSEL CHOCOLATE',0,0,'2012-07-24 03:34:24',9,NULL),
 (95,'98','HIRO',0,0,'2012-07-24 03:34:24',9,NULL),
 (96,'357','nissin stick',0,0,'2012-07-24 03:34:24',9,NULL),
 (97,'101','SKY FLAKES',0,0,'2012-07-24 03:34:24',9,NULL),
 (98,'90','CREAM O bis.',0,0,'2012-07-24 03:34:24',9,NULL),
 (99,'54','BIG BANG',0,0,'2012-07-24 03:34:24',9,NULL),
 (100,'94','EXTREME REBISCO',0,0,'2012-07-24 03:34:24',9,NULL),
 (101,'95','Fast BREak',0,0,'2012-07-24 03:34:24',9,NULL),
 (102,'105','HAPPY PEANUTS',0,0,'2012-07-24 03:34:24',9,NULL),
 (103,'337','POLVORON',0,0,'2012-07-24 03:34:24',9,NULL),
 (104,'85','CHOCO CRUNCHES',0,0,'2012-07-24 03:34:24',9,NULL),
 (105,'62','MAXX CANDY',0,0,'2012-07-24 03:34:24',9,NULL),
 (106,'359','snow bear',0,0,'2012-07-24 03:34:24',9,NULL),
 (107,'58','KENDIMENT',0,0,'2012-07-24 03:34:24',9,NULL),
 (108,'72','XO CANDY',0,0,'2012-07-24 03:34:24',9,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (109,'67','SOFT CANDY ORANGE',0,0,'2012-07-24 03:34:24',9,NULL),
 (110,'57','JELLY ACE',0,0,'2012-07-24 03:34:24',9,NULL),
 (111,'51','LUCKY ME SMALL',0,0,'2012-07-24 03:34:24',9,NULL),
 (112,'49','LUCKY ME BIG',0,0,'2012-07-24 03:34:24',9,NULL),
 (113,'210','nescafe 3n1 W/HOT WATER',0,0,'2012-07-24 03:34:24',9,NULL),
 (114,'24','kopiko W/HOT WATER',0,0,'2012-07-24 03:34:24',9,NULL),
 (115,'358','choco mucho',0,0,'2012-07-24 03:34:24',9,NULL),
 (116,'360','BUKO JUICE',0,0,'2012-07-24 03:34:24',9,NULL),
 (117,'140','PEPSI 8oz',0,0,'2012-07-24 03:34:24',9,NULL),
 (118,'135','MIRINDA 8oz',0,0,'2012-07-24 03:34:24',9,NULL),
 (119,'133','7-UP 8oz',0,0,'2012-07-24 03:34:24',9,NULL),
 (120,'138','MOUNTAIN DEW 12oz',0,0,'2012-07-24 03:34:24',9,NULL),
 (121,'75','CHOEY TAFEE',0,0,'2012-07-24 03:34:24',9,NULL),
 (122,'76','CHUBBY CHOCO CHOEY',0,0,'2012-07-24 03:34:24',9,NULL),
 (123,'71','WHY NUTS MILK',0,0,'2012-07-24 03:34:24',9,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (124,'84','COOKIE CRUNCH',0,0,'2012-07-24 03:34:24',9,NULL),
 (125,'220','chocolate milk 250ml',0,0,'2012-07-24 03:34:24',9,NULL),
 (126,'352','goody gulp',0,0,'2012-07-24 03:34:24',9,NULL),
 (127,'65','MILKITA LOLLIPOP',0,0,'2012-07-24 03:34:24',9,NULL),
 (128,'93','DYNAMIC CHOCO',0,0,'2012-07-24 03:34:24',9,NULL),
 (129,'215','yemas',0,0,'2012-07-24 03:34:24',9,NULL),
 (130,'336','PEANUTS',0,0,'2012-07-24 03:34:24',9,NULL),
 (131,'354','softdrinks in cups',0,0,'2012-07-24 03:34:24',9,NULL),
 (132,'222','pepsi 500ml',0,0,'2012-07-24 03:34:24',9,NULL),
 (133,'134','7-UP 500ml',0,0,'2012-07-24 03:34:24',9,NULL),
 (134,'120','L-Z ST. LEMON 500ml',0,0,'2012-07-24 03:34:24',9,NULL),
 (135,'126','T-FRUIT BURST 355ml',0,0,'2012-07-24 03:34:24',9,NULL),
 (136,'130','Premier water 350 ml',0,0,'2012-07-24 03:34:24',9,NULL),
 (137,'129','Premier  WATER500 ml',0,0,'2012-07-24 03:34:24',9,NULL),
 (138,'353','gatorade',0,0,'2012-07-24 03:34:24',9,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (139,'136','MIRINDA 500ml',0,0,'2012-07-24 03:34:24',9,NULL),
 (140,'350','safari',0,0,'2012-07-24 03:34:24',9,NULL),
 (141,'305','MEATBREAD',0,0,'2012-07-24 03:34:24',9,NULL),
 (142,'309','HAM AND EGG',0,0,'2012-07-24 03:34:24',9,NULL),
 (143,'308','CHEESEBURGER',0,0,'2012-07-24 03:34:24',9,NULL),
 (144,'302','SPAGHETTI W/BREAD',0,0,'2012-07-24 03:34:24',9,NULL),
 (145,'295','MAMMOON',0,0,'2012-07-24 03:34:24',9,NULL),
 (146,'303','BICO',0,0,'2012-07-24 03:34:24',9,NULL),
 (147,'311','PUDDING',0,0,'2012-07-24 03:34:24',9,NULL),
 (148,'312','PIZZA BREAD',0,0,'2012-07-24 03:34:24',9,NULL),
 (149,'306','TOCINO',0,0,'2012-07-24 03:34:24',9,NULL),
 (150,'310','CHAMPORADO',0,0,'2012-07-24 03:34:24',9,NULL),
 (151,'338','BANANA CUE',0,0,'2012-07-24 03:34:24',9,NULL),
 (152,'307','SANDWICH',0,0,'2012-07-25 09:36:24',13,NULL),
 (153,'300','BURGER',0,0,'2012-07-25 09:36:24',13,NULL),
 (154,'299','SIOPAO',0,0,'2012-07-25 09:36:24',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (155,'301','SPAGHETTI',0,0,'2012-07-25 09:36:24',13,NULL),
 (156,'62','MAXX CANDY',0,0,'2012-07-25 09:36:24',13,NULL),
 (157,'58','KENDIMENT',0,0,'2012-07-25 09:36:24',13,NULL),
 (158,'70','WHITE RABBIT',0,0,'2012-07-25 09:36:24',13,NULL),
 (159,'72','XO CANDY',0,0,'2012-07-25 09:36:24',13,NULL),
 (160,'67','SOFT CANDY ORANGE',0,0,'2012-07-25 09:36:24',13,NULL),
 (161,'105','HAPPY PEANUTS',0,0,'2012-07-25 09:36:24',13,NULL),
 (162,'61','KRIMSTICK REFILL',0,0,'2012-07-25 09:36:24',13,NULL),
 (163,'74','CHOEY CHOCO',0,0,'2012-07-25 09:36:24',13,NULL),
 (164,'76','CHUBBY CHOCO CHOEY',0,0,'2012-07-25 09:36:24',13,NULL),
 (165,'71','WHY NUTS MILK',0,0,'2012-07-25 09:36:24',13,NULL),
 (166,'93','DYNAMIC CHOCO',0,0,'2012-07-25 09:36:24',13,NULL),
 (167,'57','JELLY ACE',0,0,'2012-07-25 09:36:24',13,NULL),
 (168,'101','SKY FLAKES',0,0,'2012-07-25 09:36:24',13,NULL),
 (169,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-07-25 09:36:24',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (170,'100','PRESTO CREAM',0,0,'2012-07-25 09:36:24',13,NULL),
 (171,'98','HIRO',0,0,'2012-07-25 09:36:24',13,NULL),
 (172,'103','VOICE CHOCOLATE',0,0,'2012-07-25 09:36:24',13,NULL),
 (173,'357','nissin stick',0,0,'2012-07-25 09:36:24',13,NULL),
 (174,'96','GRAHAM',0,0,'2012-07-25 09:36:24',13,NULL),
 (175,'97','HANSEL CHOCOLATE',0,0,'2012-07-25 09:36:24',13,NULL),
 (176,'65','MILKITA LOLLIPOP',0,0,'2012-07-25 09:36:24',13,NULL),
 (177,'210','nescafe 3n1 W/HOT WATER',0,0,'2012-07-25 09:36:24',13,NULL),
 (178,'24','kopiko W/HOT WATER',0,0,'2012-07-25 09:36:24',13,NULL),
 (179,'363','PRETZELS',0,0,'2012-07-25 09:36:24',13,NULL),
 (180,'94','EXTREME REBISCO',0,0,'2012-07-25 09:36:24',13,NULL),
 (181,'84','COOKIE CRUNCH',0,0,'2012-07-25 09:36:24',13,NULL),
 (182,'350','safari',0,0,'2012-07-25 09:36:24',13,NULL),
 (183,'104','WAFER TIMES',0,0,'2012-07-25 09:36:24',13,NULL),
 (184,'140','PEPSI 8oz',0,0,'2012-07-25 09:36:24',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (185,'135','MIRINDA 8oz',0,0,'2012-07-25 09:36:24',13,NULL),
 (186,'133','7-UP 8oz',0,0,'2012-07-25 09:36:24',13,NULL),
 (187,'138','MOUNTAIN DEW 12oz',0,0,'2012-07-25 09:36:24',13,NULL),
 (188,'354','softdrinks in cups',0,0,'2012-07-25 09:36:24',13,NULL),
 (189,'130','Premier water 350 ml',0,0,'2012-07-25 09:36:24',13,NULL),
 (190,'129','Premier  WATER500 ml',0,0,'2012-07-25 09:36:24',13,NULL),
 (191,'352','goody gulp',0,0,'2012-07-25 09:36:24',13,NULL),
 (192,'51','LUCKY ME SMALL',0,0,'2012-07-25 09:36:24',13,NULL),
 (193,'54','BIG BANG',0,0,'2012-07-25 09:36:24',13,NULL),
 (194,'336','PEANUTS',0,0,'2012-07-25 09:36:24',13,NULL),
 (195,'220','chocolate milk 250ml',0,0,'2012-07-25 09:36:24',13,NULL),
 (196,'120','L-Z ST. LEMON 500ml',0,0,'2012-07-25 09:36:24',13,NULL),
 (197,'126','T-FRUIT BURST 355ml',0,0,'2012-07-25 09:36:24',13,NULL),
 (198,'134','7-UP 500ml',0,0,'2012-07-25 09:36:24',13,NULL),
 (199,'136','MIRINDA 500ml',0,0,'2012-07-25 09:36:24',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (200,'119','L-SEY APPLE 500ml',0,0,'2012-07-25 09:36:24',13,NULL),
 (201,'353','gatorade',0,0,'2012-07-25 09:36:24',13,NULL),
 (202,'359','snow bear',0,0,'2012-07-25 09:36:24',13,NULL),
 (203,'358','choco mucho',0,0,'2012-07-25 09:36:24',13,NULL),
 (204,'346','UPSIDE DOWN CAKE SLICE',0,0,'2012-07-25 09:36:24',13,NULL),
 (205,'339','PANDESAL SMALL',0,0,'2012-07-25 09:36:24',13,NULL),
 (206,'309','HAM AND EGG',0,0,'2012-07-25 09:36:24',13,NULL),
 (207,'308','CHEESEBURGER',0,0,'2012-07-25 09:36:24',13,NULL),
 (208,'302','SPAGHETTI W/BREAD',0,0,'2012-07-25 09:36:24',13,NULL),
 (209,'298','CHOCO MOIST SLICE',0,0,'2012-07-25 09:36:24',13,NULL),
 (210,'295','MAMMOON',0,0,'2012-07-25 09:36:24',13,NULL),
 (211,'311','PUDDING',0,0,'2012-07-25 09:36:24',13,NULL),
 (212,'305','MEATBREAD',0,0,'2012-07-25 09:36:24',13,NULL),
 (213,'312','PIZZA BREAD',0,0,'2012-07-25 09:36:24',13,NULL),
 (214,'306','TOCINO',0,0,'2012-07-25 09:36:24',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (215,'360','BUKO JUICE',0,0,'2012-07-25 09:36:24',13,NULL),
 (216,'327','BAYE- BAYE',0,0,'2012-07-25 09:36:24',13,NULL),
 (217,'307','SANDWICH',0,0,'2012-07-25 09:59:53',14,NULL),
 (218,'300','BURGER',0,0,'2012-07-25 09:59:53',14,NULL),
 (219,'299','SIOPAO',0,0,'2012-07-25 09:59:53',14,NULL),
 (220,'301','SPAGHETTI',0,0,'2012-07-25 09:59:53',14,NULL),
 (221,'62','MAXX CANDY',0,0,'2012-07-25 09:59:53',14,NULL),
 (222,'58','KENDIMENT',0,0,'2012-07-25 09:59:53',14,NULL),
 (223,'70','WHITE RABBIT',0,0,'2012-07-25 09:59:53',14,NULL),
 (224,'72','XO CANDY',0,0,'2012-07-25 09:59:53',14,NULL),
 (225,'105','HAPPY PEANUTS',0,0,'2012-07-25 09:59:53',14,NULL),
 (226,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-07-25 09:59:53',14,NULL),
 (227,'98','HIRO',0,0,'2012-07-25 09:59:53',14,NULL),
 (228,'103','VOICE CHOCOLATE',0,0,'2012-07-25 09:59:53',14,NULL),
 (229,'101','SKY FLAKES',0,0,'2012-07-25 09:59:53',14,NULL),
 (230,'96','GRAHAM',0,0,'2012-07-25 09:59:53',14,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (231,'100','PRESTO CREAM',0,0,'2012-07-25 09:59:53',14,NULL),
 (232,'90','CREAM O bis.',0,0,'2012-07-25 09:59:53',14,NULL),
 (233,'78','CLOUD 9',0,0,'2012-07-25 09:59:53',14,NULL),
 (234,'54','BIG BANG',0,0,'2012-07-25 09:59:53',14,NULL),
 (235,'57','JELLY ACE',0,0,'2012-07-25 09:59:53',14,NULL),
 (236,'94','EXTREME REBISCO',0,0,'2012-07-25 09:59:53',14,NULL),
 (237,'95','Fast BREak',0,0,'2012-07-25 09:59:53',14,NULL),
 (238,'104','WAFER TIMES',0,0,'2012-07-25 09:59:53',14,NULL),
 (239,'97','HANSEL CHOCOLATE',0,0,'2012-07-25 09:59:53',14,NULL),
 (240,'358','choco mucho',0,0,'2012-07-25 09:59:53',14,NULL),
 (241,'71','WHY NUTS MILK',0,0,'2012-07-25 09:59:53',14,NULL),
 (242,'337','POLVORON',0,0,'2012-07-25 09:59:53',14,NULL),
 (243,'93','DYNAMIC CHOCO',0,0,'2012-07-25 09:59:53',14,NULL),
 (244,'65','MILKITA LOLLIPOP',0,0,'2012-07-25 09:59:53',14,NULL),
 (245,'75','CHOEY TAFEE',0,0,'2012-07-25 09:59:53',14,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (246,'76','CHUBBY CHOCO CHOEY',0,0,'2012-07-25 09:59:53',14,NULL),
 (247,'67','SOFT CANDY ORANGE',0,0,'2012-07-25 09:59:53',14,NULL),
 (248,'359','snow bear',0,0,'2012-07-25 09:59:53',14,NULL),
 (249,'357','nissin stick',0,0,'2012-07-25 09:59:53',14,NULL),
 (250,'140','PEPSI 8oz',0,0,'2012-07-25 09:59:53',14,NULL),
 (251,'336','PEANUTS',0,0,'2012-07-25 09:59:53',14,NULL),
 (252,'138','MOUNTAIN DEW 12oz',0,0,'2012-07-25 09:59:53',14,NULL),
 (253,'24','kopiko W/HOT WATER',0,0,'2012-07-25 09:59:53',14,NULL),
 (254,'350','safari',0,0,'2012-07-25 09:59:53',14,NULL),
 (255,'351','demolino',0,0,'2012-07-25 09:59:53',14,NULL),
 (256,'352','goody gulp',0,0,'2012-07-25 09:59:53',14,NULL),
 (257,'220','chocolate milk 250ml',0,0,'2012-07-25 09:59:53',14,NULL),
 (258,'129','Premier  WATER500 ml',0,0,'2012-07-25 09:59:53',14,NULL),
 (259,'130','Premier water 350 ml',0,0,'2012-07-25 09:59:53',14,NULL),
 (260,'120','L-Z ST. LEMON 500ml',0,0,'2012-07-25 09:59:53',14,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (261,'134','7-UP 500ml',0,0,'2012-07-25 09:59:53',14,NULL),
 (262,'222','pepsi 500ml',0,0,'2012-07-25 09:59:53',14,NULL),
 (263,'136','MIRINDA 500ml',0,0,'2012-07-25 09:59:53',14,NULL),
 (264,'126','T-FRUIT BURST 355ml',0,0,'2012-07-25 09:59:53',14,NULL),
 (265,'119','L-SEY APPLE 500ml',0,0,'2012-07-25 09:59:53',14,NULL),
 (266,'353','gatorade',0,0,'2012-07-25 09:59:53',14,NULL),
 (267,'354','softdrinks in cups',0,0,'2012-07-25 09:59:53',14,NULL),
 (268,'64','MILKITA CANDY',0,0,'2012-07-25 09:59:53',14,NULL),
 (269,'339','PANDESAL SMALL',0,0,'2012-07-25 09:59:53',14,NULL),
 (270,'320','LECHE FLAN',0,0,'2012-07-25 09:59:53',14,NULL),
 (271,'302','SPAGHETTI W/BREAD',0,0,'2012-07-25 09:59:53',14,NULL),
 (272,'309','HAM AND EGG',0,0,'2012-07-25 09:59:53',14,NULL),
 (273,'308','CHEESEBURGER',0,0,'2012-07-25 09:59:53',14,NULL),
 (274,'295','MAMMOON',0,0,'2012-07-25 09:59:53',14,NULL),
 (275,'311','PUDDING',0,0,'2012-07-25 09:59:53',14,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (276,'305','MEATBREAD',0,0,'2012-07-25 09:59:53',14,NULL),
 (277,'312','PIZZA BREAD',0,0,'2012-07-25 09:59:53',14,NULL),
 (278,'328','ENSAIMONGO',0,0,'2012-07-25 09:59:53',14,NULL),
 (279,'338','BANANA CUE',0,0,'2012-07-25 09:59:53',14,NULL),
 (280,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-07-25 11:28:39',15,NULL),
 (281,'103','VOICE CHOCOLATE',0,0,'2012-07-25 11:28:39',15,NULL),
 (282,'357','nissin stick',0,0,'2012-07-25 11:28:39',15,NULL),
 (283,'98','HIRO',0,0,'2012-07-25 11:28:39',15,NULL),
 (284,'101','SKY FLAKES',0,0,'2012-07-25 11:28:39',15,NULL),
 (285,'84','COOKIE CRUNCH',0,0,'2012-07-25 11:28:39',15,NULL),
 (286,'94','EXTREME REBISCO',0,0,'2012-07-25 11:28:39',15,NULL),
 (287,'76','CHUBBY CHOCO CHOEY',0,0,'2012-07-25 11:28:39',15,NULL),
 (288,'62','MAXX CANDY',0,0,'2012-07-25 11:28:39',15,NULL),
 (289,'90','CREAM O bis.',0,0,'2012-07-25 11:28:39',15,NULL),
 (290,'351','demolino',0,0,'2012-07-25 11:28:39',15,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (291,'78','CLOUD 9',0,0,'2012-07-25 11:28:39',15,NULL),
 (292,'105','HAPPY PEANUTS',0,0,'2012-07-25 11:28:39',15,NULL),
 (293,'54','BIG BANG',0,0,'2012-07-25 11:28:39',15,NULL),
 (294,'100','PRESTO CREAM',0,0,'2012-07-25 11:28:39',15,NULL),
 (295,'71','WHY NUTS MILK',0,0,'2012-07-25 11:28:39',15,NULL),
 (296,'58','KENDIMENT',0,0,'2012-07-25 11:28:39',15,NULL),
 (297,'104','WAFER TIMES',0,0,'2012-07-25 11:28:39',15,NULL),
 (298,'350','safari',0,0,'2012-07-25 11:28:39',15,NULL),
 (299,'140','PEPSI 8oz',0,0,'2012-07-25 11:28:39',15,NULL),
 (300,'133','7-UP 8oz',0,0,'2012-07-25 11:28:39',15,NULL),
 (301,'138','MOUNTAIN DEW 12oz',0,0,'2012-07-25 11:28:39',15,NULL),
 (302,'59','KOPIKO',0,0,'2012-07-25 11:28:39',15,NULL),
 (303,'359','snow bear',0,0,'2012-07-25 11:28:39',15,NULL),
 (304,'358','choco mucho',0,0,'2012-07-25 11:28:39',15,NULL),
 (305,'97','HANSEL CHOCOLATE',0,0,'2012-07-25 11:28:39',15,NULL),
 (306,'129','Premier  WATER500 ml',0,0,'2012-07-25 11:28:39',15,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (307,'220','chocolate milk 250ml',0,0,'2012-07-25 11:28:39',15,NULL),
 (308,'139','MOUNTAIN DEW 500ml',0,0,'2012-07-25 11:28:39',15,NULL),
 (309,'126','T-FRUIT BURST 355ml',0,0,'2012-07-25 11:28:39',15,NULL),
 (310,'120','L-Z ST. LEMON 500ml',0,0,'2012-07-25 11:28:39',15,NULL),
 (311,'55','FLAT TOPS',0,0,'2012-07-25 11:28:39',15,NULL),
 (312,'72','XO CANDY',0,0,'2012-07-25 11:28:39',15,NULL),
 (313,'66','NIPS TIE',0,0,'2012-07-25 11:28:39',15,NULL),
 (314,'222','pepsi 500ml',0,0,'2012-07-25 11:28:39',15,NULL),
 (315,'134','7-UP 500ml',0,0,'2012-07-25 11:28:39',15,NULL),
 (316,'300','BURGER',0,0,'2012-07-25 11:28:39',15,NULL),
 (317,'309','HAM AND EGG',0,0,'2012-07-25 11:28:39',15,NULL),
 (318,'308','CHEESEBURGER',0,0,'2012-07-25 11:28:39',15,NULL),
 (319,'302','SPAGHETTI W/BREAD',0,0,'2012-07-25 11:28:39',15,NULL),
 (320,'307','SANDWICH',0,0,'2012-07-25 11:28:39',15,NULL),
 (321,'299','SIOPAO',0,0,'2012-07-25 11:28:39',15,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (322,'312','PIZZA BREAD',0,0,'2012-07-25 11:28:39',15,NULL),
 (323,'305','MEATBREAD',0,0,'2012-07-25 11:28:39',15,NULL),
 (324,'338','BANANA CUE',0,0,'2012-07-25 11:28:39',15,NULL),
 (325,'308','CHEESEBURGER',0,0,'2012-07-25 02:10:17',9,NULL),
 (326,'300','BURGER',6,0,'2012-07-25 02:21:22',9,NULL),
 (327,'368','x\'mas log',0,0,'2012-07-28 02:31:28',9,NULL),
 (328,'369','combo',0,0,'2012-07-28 02:31:28',9,NULL),
 (329,'367','macaroons',0,0,'2012-07-28 02:32:40',13,NULL),
 (330,'368','x\'mas log',0,0,'2012-07-28 02:33:15',14,NULL),
 (331,'301','SPAGHETTI',0,0,'2012-07-28 03:12:56',9,NULL),
 (332,'70','WHITE RABBIT',0,0,'2012-07-30 02:10:16',9,NULL),
 (333,'138','MOUNTAIN DEW 12oz',0,0,'2012-07-30 02:29:44',9,NULL),
 (334,'138','MOUNTAIN DEW 12oz',24,0,'2012-08-01 11:45:55',9,NULL),
 (335,'300','BURGER',0,0,'2012-07-24 11:48:03',9,NULL),
 (336,'300','BURGER',0,0,'2012-08-06 02:05:18',13,NULL),
 (337,'307','SANDWICH',0,0,'2012-08-06 02:05:18',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (338,'299','SIOPAO',0,0,'2012-08-06 02:05:18',13,NULL),
 (339,'301','SPAGHETTI',0,0,'2012-08-06 02:05:18',13,NULL),
 (340,'58','KENDIMENT',0,0,'2012-08-06 02:05:18',13,NULL),
 (341,'70','WHITE RABBIT',0,0,'2012-08-06 02:05:18',13,NULL),
 (342,'59','KOPIKO CANDY',0,0,'2012-08-06 02:05:18',13,NULL),
 (343,'105','HAPPY PEANUTS',0,0,'2012-08-06 02:05:18',13,NULL),
 (344,'76','CHUBBY CHOCO CHOEY',0,0,'2012-08-06 02:05:18',13,NULL),
 (345,'71','WHY NUTS MILK',0,0,'2012-08-06 02:05:18',13,NULL),
 (346,'57','JELLY ACE',0,0,'2012-08-06 02:05:18',13,NULL),
 (347,'55','FLAT TOPS',0,0,'2012-08-06 02:05:18',13,NULL),
 (348,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-08-06 02:05:18',13,NULL),
 (349,'100','PRESTO CREAM',0,0,'2012-08-06 02:05:18',13,NULL),
 (350,'98','HIRO',0,0,'2012-08-06 02:05:18',13,NULL),
 (351,'103','VOICE CHOCOLATE',0,0,'2012-08-06 02:05:18',13,NULL),
 (352,'357','NISSIN STICK',0,0,'2012-08-06 02:05:18',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (353,'96','GRAHAM',0,0,'2012-08-06 02:05:18',13,NULL),
 (354,'97','HANSEL CHOCOLATE',0,0,'2012-08-06 02:05:18',13,NULL),
 (355,'65','MILKITA LOLLIPOP',0,0,'2012-08-06 02:05:18',13,NULL),
 (356,'53','NESCAFE 3-IN-1 W/O HOT WATER',0,0,'2012-08-06 02:05:18',13,NULL),
 (357,'212','KOPIKO W/O HOT WATER',0,0,'2012-08-06 02:05:18',13,NULL),
 (358,'94','EXTREME REBISCO',0,0,'2012-08-06 02:05:18',13,NULL),
 (359,'90','CREAM O BISCUIT',0,0,'2012-08-06 02:05:18',13,NULL),
 (360,'350','SAFARI',0,0,'2012-08-06 02:05:18',13,NULL),
 (361,'354','SOFTDRINKS IN CUPS',0,0,'2012-08-06 02:05:18',13,NULL),
 (362,'130','PREMIER WATER 350 ML',0,0,'2012-08-06 02:05:18',13,NULL),
 (363,'129','PREMIER  WATER500 ML',0,0,'2012-08-06 02:05:18',13,NULL),
 (364,'75','CHOEY TAFEE',0,0,'2012-08-06 02:05:18',13,NULL),
 (365,'360','BUKO JUICE',0,0,'2012-08-06 02:13:17',13,NULL),
 (366,'140','PEPSI 8OZ',0,0,'2012-08-06 02:13:17',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (367,'138','MOUNTAIN DEW 12OZ',0,0,'2012-08-06 02:13:17',13,NULL),
 (368,'451','GOODY GULP CHOCO DRINK',0,0,'2012-08-06 02:13:17',13,NULL),
 (369,'49','LUCKY ME BIG',0,0,'2012-08-06 02:13:17',13,NULL),
 (370,'115','LIPTON LEMON 450ML',0,0,'2012-08-06 02:13:17',13,NULL),
 (371,'126','TROPICANA FRUIT BURST',0,0,'2012-08-06 02:13:17',13,NULL),
 (372,'139','MOUNTAIN DEW 500ML',0,0,'2012-08-06 02:13:17',13,NULL),
 (373,'134','7-UP 500ML',0,0,'2012-08-06 02:13:17',13,NULL),
 (374,'136','MIRINDA 500ML',0,0,'2012-08-06 02:13:17',13,NULL),
 (375,'353','GATORADE',0,0,'2012-08-06 02:13:17',13,NULL),
 (376,'78','CLOUD 9',0,0,'2012-08-06 02:13:17',13,NULL),
 (377,'359','SNOW BEAR',0,0,'2012-08-06 02:13:17',13,NULL),
 (378,'358','CHOCO MUCHO',0,0,'2012-08-06 02:13:17',13,NULL),
 (379,'302','SPAGHETTI W/BREAD',0,0,'2012-08-06 02:30:07',13,NULL),
 (380,'309','HAM AND EGG',0,0,'2012-08-06 02:30:07',13,NULL),
 (381,'308','CHEESEBURGER',0,0,'2012-08-06 02:30:07',13,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (382,'295','MAMMOON',0,0,'2012-08-06 02:30:07',13,NULL),
 (383,'294','CINNAMON ROLL',0,0,'2012-08-06 02:30:07',13,NULL),
 (384,'305','MEATBREAD',0,0,'2012-08-06 02:30:07',13,NULL),
 (385,'306','TOCINO',0,0,'2012-08-06 02:30:07',13,NULL),
 (386,'312','PIZZA BREAD',0,0,'2012-08-06 02:30:07',13,NULL),
 (387,'452','CHIFFON W/CHEESE',0,0,'2012-08-06 02:30:07',13,NULL),
 (388,'342','EGG SANDWICH',0,0,'2012-08-06 02:30:07',13,NULL),
 (389,'310','CHAMPORADO',0,0,'2012-08-06 02:30:07',13,NULL),
 (390,'454','CHIFFON W/ICING',0,0,'2012-08-06 02:31:55',13,NULL),
 (391,'307','SANDWICH',0,0,'2012-08-06 02:42:58',9,NULL),
 (392,'300','BURGER',0,0,'2012-08-06 02:42:58',9,NULL),
 (393,'299','SIOPAO',0,0,'2012-08-06 02:42:58',9,NULL),
 (394,'301','SPAGHETTI',0,0,'2012-08-06 02:42:58',9,NULL),
 (395,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-08-06 02:42:58',9,NULL),
 (396,'100','PRESTO CREAM',0,0,'2012-08-06 02:42:58',9,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (397,'103','VOICE CHOCOLATE',0,0,'2012-08-06 02:42:58',9,NULL),
 (398,'96','GRAHAM',0,0,'2012-08-06 02:42:58',9,NULL),
 (399,'97','HANSEL CHOCOLATE',0,0,'2012-08-06 02:42:58',9,NULL),
 (400,'98','HIRO',0,0,'2012-08-06 02:42:58',9,NULL),
 (401,'357','NISSIN STICK',0,0,'2012-08-06 02:42:58',9,NULL),
 (402,'90','CREAM O BISCUIT',0,0,'2012-08-06 02:42:58',9,NULL),
 (403,'54','BIG BANG',0,0,'2012-08-06 02:42:58',9,NULL),
 (404,'78','CLOUD 9',0,0,'2012-08-06 02:42:58',9,NULL),
 (405,'94','EXTREME REBISCO',0,0,'2012-08-06 02:42:58',9,NULL),
 (406,'42','FASTENER PLASTIC',0,0,'2012-08-06 02:42:58',9,NULL),
 (407,'85','CHOCO CRUNCHES',0,0,'2012-08-06 02:42:58',9,NULL),
 (408,'66','NIPS TIE',0,0,'2012-08-06 02:42:58',9,NULL),
 (409,'58','KENDIMENT',0,0,'2012-08-06 02:42:58',9,NULL),
 (410,'70','WHITE RABBIT',0,0,'2012-08-06 02:42:58',9,NULL),
 (411,'59','KOPIKO CANDY',0,0,'2012-08-06 02:42:58',9,NULL),
 (412,'51','LUCKY ME SMALL',0,0,'2012-08-06 02:42:58',9,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (413,'212','KOPIKO W/O HOT WATER',0,0,'2012-08-06 02:42:58',9,NULL),
 (414,'360','BUKO JUICE',0,0,'2012-08-06 02:42:58',9,NULL),
 (415,'358','CHOCO MUCHO',0,0,'2012-08-06 02:42:58',9,NULL),
 (416,'140','PEPSI 8OZ',0,0,'2012-08-06 02:42:58',9,NULL),
 (417,'135','MIRINDA 8OZ',0,0,'2012-08-06 02:42:58',9,NULL),
 (418,'133','7-UP 8OZ',0,0,'2012-08-06 02:42:58',9,NULL),
 (419,'138','MOUNTAIN DEW 12OZ',0,0,'2012-08-06 02:42:58',9,NULL),
 (420,'71','WHY NUTS MILK',0,0,'2012-08-06 02:47:51',9,NULL),
 (421,'84','COOKIE CRUNCH',0,0,'2012-08-06 02:47:51',9,NULL),
 (422,'451','GOODY GULP CHOCO DRINK',0,0,'2012-08-06 02:47:51',9,NULL),
 (423,'93','DYNAMIC CHOCO',0,0,'2012-08-06 02:47:51',9,NULL),
 (424,'215','YEMAS',0,0,'2012-08-06 02:47:51',9,NULL),
 (425,'336','PEANUTS',0,0,'2012-08-06 02:47:51',9,NULL),
 (426,'350','SAFARI',0,0,'2012-08-06 02:47:51',9,NULL),
 (427,'354','SOFTDRINKS IN CUPS',0,0,'2012-08-06 02:47:51',9,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (428,'222','PEPSI 500ML',0,0,'2012-08-06 02:47:51',9,NULL),
 (429,'134','7-UP 500ML',0,0,'2012-08-06 02:47:51',9,NULL),
 (430,'139','MOUNTAIN DEW 500ML',0,0,'2012-08-06 02:47:51',9,NULL),
 (431,'115','LIPTON LEMON 450ML',0,0,'2012-08-06 02:47:51',9,NULL),
 (432,'448','TROPICANA TWISTER ORANGE',0,0,'2012-08-06 02:47:51',9,NULL),
 (433,'130','PREMIER WATER 350 ML',0,0,'2012-08-06 02:47:51',9,NULL),
 (434,'129','PREMIER  WATER500 ML',0,0,'2012-08-06 02:47:51',9,NULL),
 (435,'353','GATORADE',0,0,'2012-08-06 02:47:51',9,NULL),
 (436,'136','MIRINDA 500ML',0,0,'2012-08-06 02:47:51',9,NULL),
 (437,'302','SPAGHETTI W/BREAD',0,0,'2012-08-06 02:47:51',9,NULL),
 (438,'309','HAM AND EGG',0,0,'2012-08-06 02:47:51',9,NULL),
 (439,'308','CHEESEBURGER',0,0,'2012-08-06 02:47:51',9,NULL),
 (440,'306','TOCINO',0,0,'2012-08-06 02:47:51',9,NULL),
 (441,'296','TORTA',0,0,'2012-08-06 02:47:51',9,NULL),
 (442,'295','MAMMOON',0,0,'2012-08-06 02:47:51',9,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (443,'294','CINNAMON ROLL',0,0,'2012-08-06 02:47:51',9,NULL),
 (444,'305','MEATBREAD',0,0,'2012-08-06 02:47:51',9,NULL),
 (445,'312','PIZZA BREAD',0,0,'2012-08-06 02:47:51',9,NULL),
 (446,'342','EGG SANDWICH',0,0,'2012-08-06 02:47:51',9,NULL),
 (447,'369','COMBO',0,0,'2012-08-06 02:48:35',9,NULL),
 (448,'310','CHAMPORADO',0,0,'2012-08-06 02:48:35',9,NULL),
 (449,'307','SANDWICH',0,0,'2012-08-06 03:11:37',14,NULL),
 (450,'300','BURGER',0,0,'2012-08-06 03:11:37',14,NULL),
 (451,'299','SIOPAO',0,0,'2012-08-06 03:11:37',14,NULL),
 (452,'301','SPAGHETTI',0,0,'2012-08-06 03:11:37',14,NULL),
 (453,'58','KENDIMENT',0,0,'2012-08-06 03:11:37',14,NULL),
 (454,'70','WHITE RABBIT',0,0,'2012-08-06 03:11:37',14,NULL),
 (455,'59','KOPIKO CANDY',0,0,'2012-08-06 03:11:37',14,NULL),
 (456,'105','HAPPY PEANUTS',0,0,'2012-08-06 03:11:37',14,NULL),
 (457,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-08-06 03:11:37',14,NULL),
 (458,'98','HIRO',0,0,'2012-08-06 03:11:37',14,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (459,'103','VOICE CHOCOLATE',0,0,'2012-08-06 03:11:37',14,NULL),
 (460,'100','PRESTO CREAM',0,0,'2012-08-06 03:11:37',14,NULL),
 (461,'96','GRAHAM',0,0,'2012-08-06 03:11:37',14,NULL),
 (462,'357','NISSIN STICK',0,0,'2012-08-06 03:11:37',14,NULL),
 (463,'78','CLOUD 9',0,0,'2012-08-06 03:11:37',14,NULL),
 (464,'54','BIG BANG',0,0,'2012-08-06 03:11:37',14,NULL),
 (465,'90','CREAM O BISCUIT',0,0,'2012-08-06 03:11:37',14,NULL),
 (466,'57','JELLY ACE',0,0,'2012-08-06 03:11:37',14,NULL),
 (467,'94','EXTREME REBISCO',0,0,'2012-08-06 03:11:37',14,NULL),
 (468,'95','FAST BREAK',0,0,'2012-08-06 03:11:37',14,NULL),
 (469,'97','HANSEL CHOCOLATE',0,0,'2012-08-06 03:11:37',14,NULL),
 (470,'358','CHOCO MUCHO',0,0,'2012-08-06 03:27:15',14,NULL),
 (471,'55','FLAT TOPS',0,0,'2012-08-06 03:27:15',14,NULL),
 (472,'71','WHY NUTS MILK',0,0,'2012-08-06 03:27:15',14,NULL),
 (473,'93','DYNAMIC CHOCO',0,0,'2012-08-06 03:27:15',14,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (474,'66','NIPS TIE',0,0,'2012-08-06 03:27:15',14,NULL),
 (475,'76','CHUBBY CHOCO CHOEY',0,0,'2012-08-06 03:27:15',14,NULL),
 (476,'439','SOFT CANDY',0,0,'2012-08-06 03:27:15',14,NULL),
 (477,'359','SNOW BEAR',0,0,'2012-08-06 03:27:15',14,NULL),
 (478,'85','CHOCO CRUNCHES',0,0,'2012-08-06 03:27:15',14,NULL),
 (479,'140','PEPSI 8OZ',0,0,'2012-08-06 03:27:15',14,NULL),
 (480,'138','MOUNTAIN DEW 12OZ',0,0,'2012-08-06 03:27:15',14,NULL),
 (481,'350','SAFARI',0,0,'2012-08-06 03:27:15',14,NULL),
 (482,'451','GOODY GULP CHOCO DRINK',0,0,'2012-08-06 03:27:15',14,NULL),
 (483,'220','CHOCOLAIT MILK 250ML',0,0,'2012-08-06 03:27:15',14,NULL),
 (484,'129','PREMIER  WATER500 ML',0,0,'2012-08-06 03:27:15',14,NULL),
 (485,'130','PREMIER WATER 350 ML',0,0,'2012-08-06 03:27:15',14,NULL),
 (486,'115','LIPTON LEMON 450ML',0,0,'2012-08-06 03:27:15',14,NULL),
 (487,'117','LIPTON RED TEA 450ML',0,0,'2012-08-06 03:27:15',14,NULL),
 (488,'139','MOUNTAIN DEW 500ML',0,0,'2012-08-06 03:27:15',14,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (489,'134','7-UP 500ML',0,0,'2012-08-06 03:27:15',14,NULL),
 (490,'136','MIRINDA 500ML',0,0,'2012-08-06 03:27:15',14,NULL),
 (491,'126','TROPICANA FRUIT BURST',0,0,'2012-08-06 03:27:15',14,NULL),
 (492,'448','TROPICANA TWISTER ORANGE',0,0,'2012-08-06 03:27:15',14,NULL),
 (493,'353','GATORADE',0,0,'2012-08-06 03:27:15',14,NULL),
 (494,'354','SOFTDRINKS IN CUPS',0,0,'2012-08-06 03:27:15',14,NULL),
 (495,'212','KOPIKO W/O HOT WATER',0,0,'2012-08-06 03:27:15',14,NULL),
 (496,'302','SPAGHETTI W/BREAD',0,0,'2012-08-06 03:27:15',14,NULL),
 (497,'309','HAM AND EGG',0,0,'2012-08-06 03:27:15',14,NULL),
 (498,'308','CHEESEBURGER',0,0,'2012-08-06 03:27:15',14,NULL),
 (499,'305','MEATBREAD',0,0,'2012-08-06 03:27:15',14,NULL),
 (500,'294','CINNAMON ROLL',0,0,'2012-08-06 03:27:15',14,NULL),
 (501,'312','PIZZA BREAD',0,0,'2012-08-06 03:27:15',14,NULL),
 (502,'316','BANANA CAKE SLICE',0,0,'2012-08-06 03:27:15',14,NULL),
 (503,'336','PEANUTS',0,0,'2012-08-06 03:27:15',14,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (504,'342','EGG SANDWICH',0,0,'2012-08-06 03:27:15',14,NULL),
 (505,'310','CHAMPORADO',0,0,'2012-08-06 03:27:15',14,NULL),
 (506,'359','SNOW BEAR',0,0,'2012-08-06 12:17:34',16,NULL),
 (507,'58','KENDIMENT',0,0,'2012-08-06 12:17:34',16,NULL),
 (508,'70','WHITE RABBIT',0,0,'2012-08-06 12:17:34',16,NULL),
 (509,'105','HAPPY PEANUTS',0,0,'2012-08-06 12:17:34',16,NULL),
 (510,'65','MILKITA LOLLIPOP',0,0,'2012-08-06 12:17:34',16,NULL),
 (511,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-08-06 12:17:34',16,NULL),
 (512,'100','PRESTO CREAM',0,0,'2012-08-06 12:17:34',16,NULL),
 (513,'98','HIRO',0,0,'2012-08-06 12:17:34',16,NULL),
 (514,'103','VOICE CHOCOLATE',0,0,'2012-08-06 12:17:34',16,NULL),
 (515,'357','NISSIN STICK',0,0,'2012-08-06 12:17:34',16,NULL),
 (516,'96','GRAHAM',0,0,'2012-08-06 12:17:34',16,NULL),
 (517,'90','CREAM O BISCUIT',0,0,'2012-08-06 12:17:34',16,NULL),
 (518,'54','BIG BANG',0,0,'2012-08-06 12:17:34',16,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (519,'358','CHOCO MUCHO',0,0,'2012-08-06 12:17:34',16,NULL),
 (520,'61','KRIMSTICK REFILL',0,0,'2012-08-06 12:17:34',16,NULL),
 (521,'85','CHOCO CRUNCHES',0,0,'2012-08-06 12:17:34',16,NULL),
 (522,'84','COOKIE CRUNCH',0,0,'2012-08-06 12:17:34',16,NULL),
 (523,'94','EXTREME REBISCO',0,0,'2012-08-06 12:17:34',16,NULL),
 (524,'95','FAST BREAK',0,0,'2012-08-06 12:17:34',16,NULL),
 (525,'104','WAFER TIMES',0,0,'2012-08-06 12:17:34',16,NULL),
 (526,'97','HANSEL CHOCOLATE',0,0,'2012-08-06 12:17:34',16,NULL),
 (527,'55','FLAT TOPS',0,0,'2012-08-06 12:17:34',16,NULL),
 (528,'66','NIPS TIE',0,0,'2012-08-06 12:17:34',16,NULL),
 (529,'76','CHUBBY CHOCO CHOEY',0,0,'2012-08-06 12:17:34',16,NULL),
 (530,'439','SOFT CANDY',0,0,'2012-08-06 12:17:34',16,NULL),
 (531,'129','PREMIER  WATER500 ML',0,0,'2012-08-06 12:17:34',16,NULL),
 (532,'130','PREMIER WATER 350 ML',0,0,'2012-08-06 12:17:34',16,NULL),
 (533,'354','SOFTDRINKS IN CUPS',0,0,'2012-08-06 12:17:34',16,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (534,'134','7-UP 500ML',0,0,'2012-08-06 12:17:34',16,NULL),
 (535,'139','MOUNTAIN DEW 500ML',0,0,'2012-08-06 12:17:34',16,NULL),
 (536,'136','MIRINDA 500ML',0,0,'2012-08-06 12:17:34',16,NULL),
 (537,'353','GATORADE',0,0,'2012-08-06 12:17:34',16,NULL),
 (538,'140','PEPSI 8OZ',0,0,'2012-08-06 12:17:34',16,NULL),
 (539,'135','MIRINDA 8OZ',0,0,'2012-08-06 12:17:34',16,NULL),
 (540,'133','7-UP 8OZ',0,0,'2012-08-06 12:17:34',16,NULL),
 (541,'138','MOUNTAIN DEW 12OZ',0,0,'2012-08-06 12:17:34',16,NULL),
 (542,'448','TROPICANA TWISTER ORANGE',0,0,'2012-08-06 12:17:34',16,NULL),
 (543,'115','LIPTON LEMON / RED 450ML',0,0,'2012-08-06 02:04:50',9,NULL),
 (544,'115','LIPTON LEMON / RED 450ML',0,0,'2012-08-06 02:05:27',13,NULL),
 (545,'115','LIPTON LEMON / RED 450ML',0,0,'2012-08-06 02:05:51',14,NULL),
 (546,'115','LIPTON LEMON / RED 450ML',0,0,'2012-08-06 02:48:57',16,NULL),
 (547,'64','MILKITA CANDY',0,0,'2012-08-06 02:48:57',16,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (548,'73','ZUPPER-ZUPPER',0,0,'2012-08-06 02:48:57',16,NULL),
 (549,'360','BUKO JUICE',0,0,'2012-08-06 02:48:57',16,NULL),
 (550,'296','TORTA',0,0,'2012-08-06 02:48:57',16,NULL),
 (551,'453','MOCHA CAKE SLICE',0,0,'2012-08-06 02:48:57',16,NULL),
 (552,'300','BURGER',0,0,'2012-08-06 02:48:57',16,NULL),
 (553,'301','SPAGHETTI',0,0,'2012-08-06 02:48:57',16,NULL),
 (554,'302','SPAGHETTI W/BREAD',0,0,'2012-08-06 02:48:57',16,NULL),
 (555,'306','TOCINO',0,0,'2012-08-06 02:48:57',16,NULL),
 (556,'307','SANDWICH',0,0,'2012-08-06 02:48:57',16,NULL),
 (557,'308','CHEESEBURGER',0,0,'2012-08-06 02:48:57',16,NULL),
 (558,'309','HAM AND EGG',0,0,'2012-08-06 02:48:57',16,NULL),
 (559,'295','MAMMOON',0,0,'2012-08-06 02:48:57',16,NULL),
 (560,'312','PIZZA BREAD',0,0,'2012-08-06 02:48:57',16,NULL),
 (561,'299','SIOPAO',0,0,'2012-08-06 02:48:57',16,NULL),
 (562,'305','MEATBREAD',0,0,'2012-08-06 02:48:57',16,NULL),
 (563,'452','CHIFFON W/CHEESE',0,0,'2012-08-06 02:48:57',16,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (564,'298','CHOCO MOIST CAKE SLICE',0,0,'2012-08-06 02:48:57',16,NULL),
 (565,'215','YEMAS',0,0,'2012-08-06 02:48:57',16,NULL),
 (566,'336','PEANUTS',0,0,'2012-08-06 02:48:57',16,NULL),
 (567,'310','CHAMPORADO',0,0,'2012-08-06 02:48:57',16,NULL),
 (568,'99','MAGIC CREAM CHOCOLATE',0,0,'2012-08-06 02:58:56',15,NULL),
 (569,'103','VOICE CHOCOLATE',0,0,'2012-08-06 02:58:56',15,NULL),
 (570,'357','NISSIN STICK',0,0,'2012-08-06 02:58:56',15,NULL),
 (571,'98','HIRO',0,0,'2012-08-06 02:58:56',15,NULL),
 (572,'84','COOKIE CRUNCH',0,0,'2012-08-06 02:58:56',15,NULL),
 (573,'90','CREAM O BISCUIT',0,0,'2012-08-06 02:58:56',15,NULL),
 (574,'78','CLOUD 9',0,0,'2012-08-06 02:58:56',15,NULL),
 (575,'105','HAPPY PEANUTS',0,0,'2012-08-06 02:58:56',15,NULL),
 (576,'54','BIG BANG',0,0,'2012-08-06 02:58:56',15,NULL),
 (577,'100','PRESTO CREAM',0,0,'2012-08-06 02:58:56',15,NULL),
 (578,'350','SAFARI',0,0,'2012-08-06 02:58:56',15,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (579,'58','KENDIMENT',0,0,'2012-08-06 02:58:56',15,NULL),
 (580,'359','SNOW BEAR',0,0,'2012-08-06 02:58:56',15,NULL),
 (581,'358','CHOCO MUCHO',0,0,'2012-08-06 02:58:56',15,NULL),
 (582,'97','HANSEL CHOCOLATE',0,0,'2012-08-06 02:58:56',15,NULL),
 (583,'140','PEPSI 8OZ',0,0,'2012-08-06 02:58:56',15,NULL),
 (584,'133','7-UP 8OZ',0,0,'2012-08-06 02:58:56',15,NULL),
 (585,'138','MOUNTAIN DEW 12OZ',0,0,'2012-08-06 02:58:56',15,NULL),
 (586,'129','PREMIER  WATER500 ML',0,0,'2012-08-06 02:58:56',15,NULL),
 (587,'220','CHOCOLAIT MILK 250ML',0,0,'2012-08-06 02:58:56',15,NULL),
 (588,'115','LIPTON LEMON / RED 450ML',0,0,'2012-08-06 02:58:56',15,NULL),
 (589,'55','FLAT TOPS',0,0,'2012-08-06 02:58:56',15,NULL),
 (590,'222','PEPSI 500ML',0,0,'2012-08-06 02:58:56',15,NULL),
 (591,'134','7-UP 500ML',0,0,'2012-08-06 02:58:56',15,NULL),
 (592,'139','MOUNTAIN DEW 500ML',0,0,'2012-08-06 02:58:56',15,NULL),
 (593,'96','GRAHAM',0,0,'2012-08-06 02:58:56',15,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (594,'439','SOFT CANDY',0,0,'2012-08-06 02:58:56',15,NULL),
 (595,'66','NIPS TIE',0,0,'2012-08-06 02:58:56',15,NULL),
 (596,'76','CHUBBY CHOCO CHOEY',0,0,'2012-08-06 02:58:56',15,NULL),
 (597,'59','KOPIKO CANDY',0,0,'2012-08-06 02:58:56',15,NULL),
 (598,'308','CHEESEBURGER',0,0,'2012-08-06 02:58:56',15,NULL),
 (599,'300','BURGER',0,0,'2012-08-06 02:58:56',15,NULL),
 (600,'302','SPAGHETTI W/BREAD',0,0,'2012-08-06 02:58:56',15,NULL),
 (601,'301','SPAGHETTI',0,0,'2012-08-06 02:58:56',15,NULL),
 (602,'307','SANDWICH',0,0,'2012-08-06 02:58:56',15,NULL),
 (603,'309','HAM AND EGG',0,0,'2012-08-06 02:58:56',15,NULL),
 (604,'294','CINNAMON ROLL',0,0,'2012-08-06 02:58:56',15,NULL),
 (605,'305','MEATBREAD',0,0,'2012-08-06 02:58:56',15,NULL),
 (606,'299','SIOPAO',0,0,'2012-08-06 02:58:56',15,NULL),
 (607,'312','PIZZA BREAD',0,0,'2012-08-06 02:58:56',15,NULL),
 (608,'338','BANANA CUE',0,0,'2012-08-06 02:58:56',15,NULL);
INSERT INTO `endorsement_histories` (`id`,`product_id`,`product_name`,`prev_endorsed`,`qty_endorsed`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (609,'359','SNOW BEAR',240,0,'2012-08-06 03:07:27',16,NULL),
 (610,'439','SOFT CANDY',16,0,'2012-08-06 04:29:48',14,NULL);
/*!40000 ALTER TABLE `endorsement_histories` ENABLE KEYS */;


--
-- Definition of table `endorsements`
--

DROP TABLE IF EXISTS `endorsements`;
CREATE TABLE `endorsements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `qty_endorsed` double DEFAULT NULL,
  `qty_left` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `cashier_id` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1180 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endorsements`
--

/*!40000 ALTER TABLE `endorsements` DISABLE KEYS */;
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (908,'307','SANDWICH',2,1,'2012-08-06 02:05:18',13,''),
 (909,'299','SIOPAO',10,8,'2012-08-06 02:05:18',13,''),
 (911,'58','KENDIMENT',39,24,'2012-08-06 02:05:18',13,''),
 (912,'70','WHITE RABBIT',17,17,'2012-08-06 02:05:18',13,''),
 (913,'59','KOPIKO CANDY',44,40,'2012-08-06 02:05:18',13,''),
 (914,'105','HAPPY PEANUTS',7,1,'2012-08-06 02:05:18',13,''),
 (915,'76','CHUBBY CHOCO CHOEY',14,14,'2012-08-06 02:05:18',13,''),
 (916,'71','WHY NUTS MILK',12,12,'2012-08-06 02:05:18',13,''),
 (917,'57','JELLY ACE',7,7,'2012-08-06 02:05:18',13,''),
 (919,'99','MAGIC CREAM CHOCOLATE',4,4,'2012-08-06 02:05:18',13,''),
 (920,'100','PRESTO CREAM',5,5,'2012-08-06 02:05:18',13,''),
 (921,'98','HIRO',7,7,'2012-08-06 02:05:18',13,''),
 (922,'103','VOICE CHOCOLATE',8,8,'2012-08-06 02:05:18',13,''),
 (923,'357','NISSIN STICK',4,3,'2012-08-06 02:05:18',13,''),
 (924,'96','GRAHAM',10,10,'2012-08-06 02:05:18',13,''),
 (925,'97','HANSEL CHOCOLATE',8,5,'2012-08-06 02:05:18',13,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (926,'65','MILKITA LOLLIPOP',23,21,'2012-08-06 02:05:18',13,''),
 (927,'53','NESCAFE 3-IN-1 W/O HOT WATER',10,8,'2012-08-06 02:05:18',13,''),
 (928,'212','KOPIKO W/O HOT WATER',2,2,'2012-08-06 02:05:18',13,''),
 (929,'94','EXTREME REBISCO',10,10,'2012-08-06 02:05:18',13,''),
 (930,'90','CREAM O BISCUIT',10,10,'2012-08-06 02:05:18',13,''),
 (931,'350','SAFARI',1,1,'2012-08-06 02:05:18',13,''),
 (932,'354','SOFTDRINKS IN CUPS',190,133,'2012-08-06 02:05:18',13,''),
 (933,'130','PREMIER WATER 350 ML',48,39,'2012-08-06 02:05:18',13,''),
 (934,'129','PREMIER  WATER500 ML',24,7,'2012-08-06 02:05:18',13,''),
 (935,'75','CHOEY TAFEE',1,1,'2012-08-06 02:05:18',13,''),
 (938,'138','MOUNTAIN DEW 12OZ',15,8,'2012-08-06 02:13:17',13,''),
 (939,'451','GOODY GULP CHOCO DRINK',32,32,'2012-08-06 02:13:17',13,''),
 (940,'49','LUCKY ME BIG',2,1,'2012-08-06 02:13:17',13,''),
 (1079,'70','WHITE RABBIT',260,253,'2012-08-06 12:17:34',16,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (942,'126','TROPICANA FRUIT BURST',24,24,'2012-08-06 02:13:17',13,''),
 (943,'139','MOUNTAIN DEW 500ML',24,21,'2012-08-06 02:13:17',13,''),
 (944,'134','7-UP 500ML',24,21,'2012-08-06 02:13:17',13,''),
 (945,'136','MIRINDA 500ML',24,22,'2012-08-06 02:13:17',13,''),
 (946,'353','GATORADE',24,24,'2012-08-06 02:13:17',13,''),
 (947,'78','CLOUD 9',7,3,'2012-08-06 02:13:17',13,''),
 (948,'359','SNOW BEAR',62,32,'2012-08-06 02:13:17',13,''),
 (949,'358','CHOCO MUCHO',8,8,'2012-08-06 02:13:17',13,''),
 (953,'295','MAMMOON',20,5,'2012-08-06 02:30:07',13,''),
 (955,'305','MEATBREAD',9,5,'2012-08-06 02:30:07',13,''),
 (958,'452','CHIFFON W/CHEESE',12,6,'2012-08-06 02:30:07',13,''),
 (959,'342','EGG SANDWICH',9,3,'2012-08-06 02:30:07',13,''),
 (961,'454','CHIFFON W/ICING',24,9,'2012-08-06 02:31:55',13,''),
 (964,'299','SIOPAO',16,13,'2012-08-06 02:42:58',9,''),
 (966,'99','MAGIC CREAM CHOCOLATE',10,8,'2012-08-06 02:42:58',9,''),
 (967,'100','PRESTO CREAM',10,7,'2012-08-06 02:42:58',9,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (968,'103','VOICE CHOCOLATE',10,8,'2012-08-06 02:42:58',9,''),
 (969,'96','GRAHAM',9,8,'2012-08-06 02:42:58',9,''),
 (971,'98','HIRO',7,3,'2012-08-06 02:42:58',9,''),
 (974,'54','BIG BANG',14,10,'2012-08-06 02:42:58',9,''),
 (975,'78','CLOUD 9',5,2,'2012-08-06 02:42:58',9,''),
 (976,'94','EXTREME REBISCO',6,2,'2012-08-06 02:42:58',9,''),
 (977,'42','FASTENER PLASTIC',11,11,'2012-08-06 02:42:58',9,''),
 (978,'85','CHOCO CRUNCHES',11,1,'2012-08-06 02:42:58',9,''),
 (980,'58','KENDIMENT',28,3,'2012-08-06 02:42:58',9,''),
 (981,'70','WHITE RABBIT',50,43,'2012-08-06 02:42:58',9,''),
 (984,'212','KOPIKO W/O HOT WATER',8,7,'2012-08-06 02:42:58',9,''),
 (987,'140','PEPSI 8OZ',48,32,'2012-08-06 02:42:58',9,''),
 (989,'133','7-UP 8OZ',24,20,'2012-08-06 02:42:58',9,''),
 (990,'138','MOUNTAIN DEW 12OZ',48,26,'2012-08-06 02:42:58',9,''),
 (991,'71','WHY NUTS MILK',1,1,'2012-08-06 02:47:51',9,''),
 (993,'451','GOODY GULP CHOCO DRINK',69,68,'2012-08-06 02:47:51',9,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (994,'93','DYNAMIC CHOCO',59,24,'2012-08-06 02:47:51',9,''),
 (995,'215','YEMAS',147,50,'2012-08-06 02:47:51',9,''),
 (996,'336','PEANUTS',25,1,'2012-08-06 02:47:51',9,''),
 (997,'350','SAFARI',5,4,'2012-08-06 02:47:51',9,''),
 (998,'354','SOFTDRINKS IN CUPS',194,70,'2012-08-06 02:47:51',9,''),
 (999,'222','PEPSI 500ML',24,13,'2012-08-06 02:47:51',9,''),
 (1000,'134','7-UP 500ML',24,18,'2012-08-06 02:47:51',9,''),
 (1001,'139','MOUNTAIN DEW 500ML',24,18,'2012-08-06 02:47:51',9,''),
 (1080,'105','HAPPY PEANUTS',360,331,'2012-08-06 12:17:34',16,''),
 (1003,'448','TROPICANA TWISTER ORANGE',26,25,'2012-08-06 02:47:51',9,''),
 (1004,'130','PREMIER WATER 350 ML',48,29,'2012-08-06 02:47:51',9,''),
 (1006,'353','GATORADE',12,10,'2012-08-06 02:47:51',9,''),
 (1007,'136','MIRINDA 500ML',24,24,'2012-08-06 02:47:51',9,''),
 (1013,'295','MAMMOON',20,7,'2012-08-06 02:47:51',9,''),
 (1017,'342','EGG SANDWICH',8,1,'2012-08-06 02:47:51',9,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1020,'307','SANDWICH',2,0,'2012-08-06 03:11:37',14,''),
 (1021,'300','BURGER',9,0,'2012-08-06 03:11:37',14,''),
 (1022,'299','SIOPAO',14,0,'2012-08-06 03:11:37',14,''),
 (1023,'301','SPAGHETTI',6,0,'2012-08-06 03:11:37',14,''),
 (1024,'58','KENDIMENT',50,50,'2012-08-06 03:11:37',14,''),
 (1025,'70','WHITE RABBIT',50,28,'2012-08-06 03:11:37',14,''),
 (1026,'59','KOPIKO CANDY',50,50,'2012-08-06 03:11:37',14,''),
 (1027,'105','HAPPY PEANUTS',20,10,'2012-08-06 03:11:37',14,''),
 (1028,'99','MAGIC CREAM CHOCOLATE',10,3,'2012-08-06 03:11:37',14,''),
 (1029,'98','HIRO',5,5,'2012-08-06 03:11:37',14,''),
 (1030,'103','VOICE CHOCOLATE',9,9,'2012-08-06 03:11:37',14,''),
 (1031,'100','PRESTO CREAM',7,4,'2012-08-06 03:11:37',14,''),
 (1032,'96','GRAHAM',12,12,'2012-08-06 03:11:37',14,''),
 (1033,'357','NISSIN STICK',6,6,'2012-08-06 03:11:37',14,''),
 (1034,'78','CLOUD 9',5,1,'2012-08-06 03:11:37',14,''),
 (1035,'54','BIG BANG',10,8,'2012-08-06 03:11:37',14,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1036,'90','CREAM O BISCUIT',15,14,'2012-08-06 03:11:37',14,''),
 (1037,'57','JELLY ACE',12,10,'2012-08-06 03:11:37',14,''),
 (1038,'94','EXTREME REBISCO',6,6,'2012-08-06 03:11:37',14,''),
 (1039,'95','FAST BREAK',3,1,'2012-08-06 03:11:37',14,''),
 (1040,'97','HANSEL CHOCOLATE',19,14,'2012-08-06 03:11:37',14,''),
 (1041,'358','CHOCO MUCHO',10,5,'2012-08-06 03:27:15',14,''),
 (1042,'55','FLAT TOPS',10,0,'2012-08-06 03:27:15',14,''),
 (1043,'71','WHY NUTS MILK',18,16,'2012-08-06 03:27:15',14,''),
 (1044,'93','DYNAMIC CHOCO',6,4,'2012-08-06 03:27:15',14,''),
 (1045,'66','NIPS TIE',1,0,'2012-08-06 03:27:15',14,''),
 (1046,'76','CHUBBY CHOCO CHOEY',111,107,'2012-08-06 03:27:15',14,''),
 (1047,'439','SOFT CANDY',60,14,'2012-08-06 03:27:15',14,''),
 (1048,'359','SNOW BEAR',42,6,'2012-08-06 03:27:15',14,''),
 (1049,'85','CHOCO CRUNCHES',14,13,'2012-08-06 03:27:15',14,''),
 (1050,'140','PEPSI 8OZ',30,26,'2012-08-06 03:27:15',14,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1051,'138','MOUNTAIN DEW 12OZ',24,9,'2012-08-06 03:27:15',14,''),
 (1052,'350','SAFARI',18,18,'2012-08-06 03:27:15',14,''),
 (1053,'451','GOODY GULP CHOCO DRINK',3,2,'2012-08-06 03:27:15',14,''),
 (1054,'220','CHOCOLAIT MILK 250ML',24,24,'2012-08-06 03:27:15',14,''),
 (1055,'129','PREMIER  WATER500 ML',24,2,'2012-08-06 03:27:15',14,''),
 (1056,'130','PREMIER WATER 350 ML',48,31,'2012-08-06 03:27:15',14,''),
 (1078,'58','KENDIMENT',286,277,'2012-08-06 12:17:34',16,''),
 (1077,'359','SNOW BEAR',240,220,'2012-08-06 12:17:34',16,''),
 (1059,'139','MOUNTAIN DEW 500ML',24,17,'2012-08-06 03:27:15',14,''),
 (1060,'134','7-UP 500ML',24,19,'2012-08-06 03:27:15',14,''),
 (1061,'136','MIRINDA 500ML',24,20,'2012-08-06 03:27:15',14,''),
 (1062,'126','TROPICANA FRUIT BURST',13,13,'2012-08-06 03:27:15',14,''),
 (1063,'448','TROPICANA TWISTER ORANGE',24,22,'2012-08-06 03:27:15',14,''),
 (1064,'353','GATORADE',24,23,'2012-08-06 03:27:15',14,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1065,'354','SOFTDRINKS IN CUPS',191,76,'2012-08-06 03:27:15',14,''),
 (1066,'212','KOPIKO W/O HOT WATER',10,10,'2012-08-06 03:27:15',14,''),
 (1067,'302','SPAGHETTI W/BREAD',1,0,'2012-08-06 03:27:15',14,''),
 (1068,'309','HAM AND EGG',3,0,'2012-08-06 03:27:15',14,''),
 (1069,'308','CHEESEBURGER',8,0,'2012-08-06 03:27:15',14,''),
 (1070,'305','MEATBREAD',8,0,'2012-08-06 03:27:15',14,''),
 (1071,'294','CINNAMON ROLL',10,0,'2012-08-06 03:27:15',14,''),
 (1072,'312','PIZZA BREAD',10,0,'2012-08-06 03:27:15',14,''),
 (1073,'316','BANANA CAKE SLICE',15,11,'2012-08-06 03:27:15',14,''),
 (1074,'336','PEANUTS',25,13,'2012-08-06 03:27:15',14,''),
 (1075,'342','EGG SANDWICH',8,4,'2012-08-06 03:27:15',14,''),
 (1076,'310','CHAMPORADO',8,1,'2012-08-06 03:27:15',14,''),
 (1081,'65','MILKITA LOLLIPOP',256,247,'2012-08-06 12:17:34',16,''),
 (1082,'99','MAGIC CREAM CHOCOLATE',16,4,'2012-08-06 12:17:34',16,''),
 (1083,'100','PRESTO CREAM',35,27,'2012-08-06 12:17:34',16,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1085,'103','VOICE CHOCOLATE',93,86,'2012-08-06 12:17:34',16,''),
 (1086,'357','NISSIN STICK',60,54,'2012-08-06 12:17:34',16,''),
 (1087,'96','GRAHAM',16,6,'2012-08-06 12:17:34',16,''),
 (1088,'90','CREAM O BISCUIT',50,49,'2012-08-06 12:17:34',16,''),
 (1089,'54','BIG BANG',34,32,'2012-08-06 12:17:34',16,''),
 (1090,'358','CHOCO MUCHO',60,46,'2012-08-06 12:17:34',16,''),
 (1091,'61','KRIMSTICK REFILL',250,227,'2012-08-06 12:17:34',16,''),
 (1092,'85','CHOCO CRUNCHES',41,36,'2012-08-06 12:17:34',16,''),
 (1093,'84','COOKIE CRUNCH',42,38,'2012-08-06 12:17:34',16,''),
 (1094,'94','EXTREME REBISCO',61,58,'2012-08-06 12:17:34',16,''),
 (1095,'95','FAST BREAK',79,77,'2012-08-06 12:17:34',16,''),
 (1096,'104','WAFER TIMES',58,47,'2012-08-06 12:17:34',16,''),
 (1098,'55','FLAT TOPS',150,141,'2012-08-06 12:17:34',16,''),
 (1099,'66','NIPS TIE',120,105,'2012-08-06 12:17:34',16,''),
 (1100,'76','CHUBBY CHOCO CHOEY',279,269,'2012-08-06 12:17:34',16,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1101,'439','SOFT CANDY',625,573,'2012-08-06 12:17:34',16,''),
 (1102,'129','PREMIER  WATER500 ML',192,175,'2012-08-06 12:17:34',16,''),
 (1103,'130','PREMIER WATER 350 ML',200,175,'2012-08-06 12:17:34',16,''),
 (1104,'354','SOFTDRINKS IN CUPS',1207,1018,'2012-08-06 12:17:34',16,''),
 (1105,'134','7-UP 500ML',66,47,'2012-08-06 12:17:34',16,''),
 (1106,'139','MOUNTAIN DEW 500ML',48,45,'2012-08-06 12:17:34',16,''),
 (1107,'136','MIRINDA 500ML',48,48,'2012-08-06 12:17:34',16,''),
 (1108,'353','GATORADE',36,31,'2012-08-06 12:17:34',16,''),
 (1109,'140','PEPSI 8OZ',239,180,'2012-08-06 12:17:34',16,''),
 (1110,'135','MIRINDA 8OZ',48,48,'2012-08-06 12:17:34',16,''),
 (1111,'133','7-UP 8OZ',53,48,'2012-08-06 12:17:34',16,''),
 (1112,'138','MOUNTAIN DEW 12OZ',205,161,'2012-08-06 12:17:34',16,''),
 (1113,'448','TROPICANA TWISTER ORANGE',57,54,'2012-08-06 12:17:34',16,''),
 (1114,'115','LIPTON LEMON / RED 450ML',24,19,'2012-08-06 02:04:50',9,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1115,'115','LIPTON LEMON / RED 450ML',68,67,'2012-08-06 02:05:27',13,''),
 (1116,'115','LIPTON LEMON / RED 450ML',48,44,'2012-08-06 02:05:51',14,''),
 (1117,'115','LIPTON LEMON / RED 450ML',97,74,'2012-08-06 02:48:57',16,''),
 (1118,'64','MILKITA CANDY',600,573,'2012-08-06 02:48:57',16,''),
 (1119,'73','ZUPPER-ZUPPER',600,544,'2012-08-06 02:48:57',16,''),
 (1127,'307','SANDWICH',3,1,'2012-08-06 02:48:57',16,''),
 (1130,'295','MAMMOON',56,1,'2012-08-06 02:48:57',16,''),
 (1132,'299','SIOPAO',25,2,'2012-08-06 02:48:57',16,''),
 (1133,'305','MEATBREAD',28,11,'2012-08-06 02:48:57',16,''),
 (1136,'215','YEMAS',200,170,'2012-08-06 02:48:57',16,''),
 (1137,'336','PEANUTS',30,20,'2012-08-06 02:48:57',16,''),
 (1139,'99','MAGIC CREAM CHOCOLATE',11,10,'2012-08-06 02:58:56',15,''),
 (1140,'103','VOICE CHOCOLATE',14,14,'2012-08-06 02:58:56',15,''),
 (1141,'357','NISSIN STICK',8,8,'2012-08-06 02:58:56',15,''),
 (1142,'98','HIRO',12,11,'2012-08-06 02:58:56',15,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1143,'84','COOKIE CRUNCH',3,3,'2012-08-06 02:58:56',15,''),
 (1144,'90','CREAM O BISCUIT',18,14,'2012-08-06 02:58:56',15,''),
 (1145,'78','CLOUD 9',12,12,'2012-08-06 02:58:56',15,''),
 (1146,'105','HAPPY PEANUTS',21,11,'2012-08-06 02:58:56',15,''),
 (1147,'54','BIG BANG',16,15,'2012-08-06 02:58:56',15,''),
 (1148,'100','PRESTO CREAM',26,23,'2012-08-06 02:58:56',15,''),
 (1149,'350','SAFARI',6,6,'2012-08-06 02:58:56',15,''),
 (1150,'58','KENDIMENT',80,80,'2012-08-06 02:58:56',15,''),
 (1151,'359','SNOW BEAR',50,37,'2012-08-06 02:58:56',15,''),
 (1152,'358','CHOCO MUCHO',10,9,'2012-08-06 02:58:56',15,''),
 (1153,'97','HANSEL CHOCOLATE',22,18,'2012-08-06 02:58:56',15,''),
 (1154,'140','PEPSI 8OZ',50,46,'2012-08-06 02:58:56',15,''),
 (1155,'133','7-UP 8OZ',33,27,'2012-08-06 02:58:56',15,''),
 (1156,'138','MOUNTAIN DEW 12OZ',6,1,'2012-08-06 02:58:56',15,''),
 (1157,'129','PREMIER  WATER500 ML',44,30,'2012-08-06 02:58:56',15,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1158,'220','CHOCOLAIT MILK 250ML',16,8,'2012-08-06 02:58:56',15,''),
 (1159,'115','LIPTON LEMON / RED 450ML',11,5,'2012-08-06 02:58:56',15,''),
 (1160,'55','FLAT TOPS',26,14,'2012-08-06 02:58:56',15,''),
 (1161,'222','PEPSI 500ML',8,7,'2012-08-06 02:58:56',15,''),
 (1162,'134','7-UP 500ML',11,8,'2012-08-06 02:58:56',15,''),
 (1163,'139','MOUNTAIN DEW 500ML',11,1,'2012-08-06 02:58:56',15,''),
 (1164,'96','GRAHAM',8,3,'2012-08-06 02:58:56',15,''),
 (1165,'439','SOFT CANDY',32,20,'2012-08-06 02:58:56',15,''),
 (1166,'66','NIPS TIE',10,10,'2012-08-06 02:58:56',15,''),
 (1167,'76','CHUBBY CHOCO CHOEY',21,18,'2012-08-06 02:58:56',15,''),
 (1168,'59','KOPIKO CANDY',50,39,'2012-08-06 02:58:56',15,''),
 (1169,'308','CHEESEBURGER',2,0,'2012-08-06 02:58:56',15,''),
 (1170,'300','BURGER',3,0,'2012-08-06 02:58:56',15,''),
 (1171,'302','SPAGHETTI W/BREAD',1,0,'2012-08-06 02:58:56',15,''),
 (1172,'301','SPAGHETTI',3,0,'2012-08-06 02:58:56',15,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1173,'307','SANDWICH',1,0,'2012-08-06 02:58:56',15,''),
 (1174,'309','HAM AND EGG',1,0,'2012-08-06 02:58:56',15,''),
 (1175,'294','CINNAMON ROLL',10,0,'2012-08-06 02:58:56',15,''),
 (1176,'305','MEATBREAD',10,0,'2012-08-06 02:58:56',15,''),
 (1177,'299','SIOPAO',10,0,'2012-08-06 02:58:56',15,''),
 (1178,'312','PIZZA BREAD',20,0,'2012-08-06 02:58:56',15,''),
 (1179,'338','BANANA CUE',12,0,'2012-08-06 02:58:56',15,'');
/*!40000 ALTER TABLE `endorsements` ENABLE KEYS */;


--
-- Definition of table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` (`id`,`prod_code`) VALUES 
 (59,'27'),
 (60,'28'),
 (61,'29'),
 (62,'65'),
 (63,'1');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;


--
-- Definition of table `guest_advance_payment`
--

DROP TABLE IF EXISTS `guest_advance_payment`;
CREATE TABLE `guest_advance_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` varchar(100) DEFAULT NULL,
  `guest_name` varchar(100) DEFAULT NULL,
  `guest_id` varchar(100) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `amount_paid` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_advance_payment`
--

/*!40000 ALTER TABLE `guest_advance_payment` DISABLE KEYS */;
INSERT INTO `guest_advance_payment` (`id`,`room_id`,`guest_name`,`guest_id`,`date_added`,`amount_paid`,`status`) VALUES 
 (1,'2','Ronald c Pascua','00000001','2012-12-17 09:59:10',500,0),
 (2,'2','maria a lname','00000004','2012-12-17 09:59:30',200,0);
/*!40000 ALTER TABLE `guest_advance_payment` ENABLE KEYS */;


--
-- Definition of table `guest_charges`
--

DROP TABLE IF EXISTS `guest_charges`;
CREATE TABLE `guest_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_id` varchar(100) DEFAULT NULL,
  `guest_name` varchar(100) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `table_no` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_charges`
--

/*!40000 ALTER TABLE `guest_charges` DISABLE KEYS */;
INSERT INTO `guest_charges` (`id`,`guest_id`,`guest_name`,`date_added`,`amount`,`status`,`table_no`) VALUES 
 (1,'00000001','Ronald c Pascua','2012-12-17 06:47:38',2500,0,'7'),
 (2,'00000002','Juan dela Cruz','2012-12-17 06:47:38',2500,1,'7'),
 (3,'00000001','Ronald c Pascua','2012-12-17 06:47:58',700,0,'6'),
 (4,'00000001','Ronald c Pascua','2012-12-17 06:55:37',800,1,'5'),
 (5,'00000002','Juan dela Cruz','2012-12-17 06:55:37',800,0,'5'),
 (6,'-1','Walk-In  ','2012-12-17 07:35:40',0,1,'1'),
 (7,'-1','Walk-In  ','2012-12-17 07:40:48',0,1,'2'),
 (8,'00000001','Ronald c Pascua','2012-12-17 08:33:13',350,0,'6'),
 (9,'00000002','Juan dela Cruz','2012-12-17 08:33:13',350,0,'6'),
 (10,'-1','Walk-In  ','2012-12-17 09:36:15',0,1,'1'),
 (11,'00000001','Ronald c Pascua','2012-12-17 09:58:14',1000,0,'2'),
 (12,'00000004','maria a lname','2012-12-17 09:58:33',500,0,'2');
/*!40000 ALTER TABLE `guest_charges` ENABLE KEYS */;


--
-- Definition of table `guests`
--

DROP TABLE IF EXISTS `guests`;
CREATE TABLE `guests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_id` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `mi` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `diver_cert_lvl` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `emergency_contact_name` varchar(100) DEFAULT NULL,
  `passport_no` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `how` varchar(100) DEFAULT NULL,
  `newsletter` int(11) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `credit_limit` double DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `income` varchar(100) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  `civil_status` varchar(100) DEFAULT NULL,
  `is_male` int(11) DEFAULT NULL,
  `groups` varchar(100) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guests`
--

/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` (`id`,`guest_id`,`fname`,`lname`,`mi`,`country`,`email_address`,`status`,`diver_cert_lvl`,`contact_no`,`emergency_contact_name`,`passport_no`,`remarks`,`how`,`newsletter`,`balance`,`credit_limit`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`groups`,`member_name`) VALUES 
 (4,'00000001','Ronald','Pascua','c','Item 4','dodong.ronald@gmail.com',0,'level 9000','09261625529','contact name','123','remarks','Item 3',1,1000,200,' ',' ',' ',' ','1500-01-01','Single',1,'0','Ronald C Pascua'),
 (5,'00000002','Juan','Cruz','dela','Item 4','juanlazy@gmail.com',0,'lvl1','contact no','contact me','12345','remarks1','Item 2',0,0,0,' ',' ',' ',' ','2012-12-17',' ',0,'0','Juan dela Cruz'),
 (6,'00000003','name','lname','mi','Item 1','',0,'','','','','','Item 1',1,0,0,' ',' ',' ',' ','2012-12-06','0',0,'0','name mi lname'),
 (7,'00000004','maria','lname','a','Afghanistan','',0,'','','','','','Item 1',1,0,0,'','','','','1500-01-01','0',0,'0','maria a lname'),
 (8,'00000002','Juan','Cruz','dela','Item 4','juanlazy@gmail.com',0,'lvl1','contact no','contact me','12345','remarks1','Friends?',0,0,0,'','','','','1500-01-01','0',0,'0','Juan dela Cruz');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;


--
-- Definition of table `head_endorsements`
--

DROP TABLE IF EXISTS `head_endorsements`;
CREATE TABLE `head_endorsements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_delivered` datetime DEFAULT NULL,
  `no_of_heads_endorsed` double DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `no_of_products_per_head` double DEFAULT NULL,
  `total_kilos` double DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `remarks2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head_endorsements`
--

/*!40000 ALTER TABLE `head_endorsements` DISABLE KEYS */;
/*!40000 ALTER TABLE `head_endorsements` ENABLE KEYS */;


--
-- Definition of table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `beg` double DEFAULT NULL,
  `end` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `physical_count` double DEFAULT NULL,
  `variance` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;


--
-- Definition of table `inventory2`
--

DROP TABLE IF EXISTS `inventory2`;
CREATE TABLE `inventory2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lookup_code` varchar(20) DEFAULT NULL,
  `prod_num` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty_per_head` double DEFAULT NULL,
  `product_qty` double DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `types_num` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `is_vat` tinyint(4) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory2`
--

/*!40000 ALTER TABLE `inventory2` DISABLE KEYS */;
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (1,NULL,404,'404','ORD. ENVELOPE SHORT',0,NULL,132,'','2012-08-06 11:48:15',NULL,'FLOOR WAX','1',NULL,0,NULL,0),
 (2,NULL,202,'202','ORD.ENVELOPE LONG',1,NULL,18,'','2012-08-06 11:48:34',NULL,'FLOOR WAX','1',NULL,0,NULL,0),
 (3,NULL,408,'408','HBW BALLPEN (BLACK)',0,NULL,433,'','2012-08-06 11:51:26',NULL,'BALLPEN','6',NULL,0,NULL,0),
 (4,NULL,36,'36','INTERMEDIATE PAPER',20,NULL,50,'','2012-08-06 11:56:27',NULL,'PAPER','15',NULL,0,NULL,20),
 (5,NULL,208,'208','1/2 CROSSWISE',8,NULL,9,'','2012-08-06 11:59:01',NULL,'PAPER','15',NULL,0,NULL,8),
 (6,NULL,407,'407','PILOT BALLPEN (BLACK)',0,NULL,48,'','2012-08-06 12:00:17',NULL,'BALLPEN','6',NULL,0,NULL,0),
 (7,NULL,40,'40','PILOT PENTEL PEN BLACK',35,NULL,17,'','2012-08-06 12:00:58',NULL,'PENTEL PEN ','18',NULL,0,NULL,35),
 (8,NULL,450,'450','BRAVETIGH',17,NULL,12,'','2012-08-06 12:08:30',NULL,'FLOOR WAX','1',NULL,0,NULL,0);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (9,NULL,199,'199','FLAIR BALLPEN',8,NULL,120,'','2012-08-06 13:20:43',NULL,'BALLPEN','6',NULL,0,NULL,8),
 (10,NULL,451,'451','GOODY GULP CHOCO DRINK',22,NULL,104,'','2012-08-06 13:29:27',NULL,'FLOOR WAX','1',NULL,0,NULL,0),
 (11,NULL,90,'90','CREAM O BIS.',8,NULL,388,'','2012-08-06 13:32:08',NULL,'FLOOR WAX','1',NULL,0,NULL,8),
 (12,NULL,299,'299','SIOPAO',20,NULL,75,'','2012-08-06 13:55:08',NULL,'0','29',NULL,0,NULL,20),
 (13,NULL,307,'307','SANDWICH',15,NULL,10,'','2012-08-06 13:56:20',NULL,'CANDY','29',NULL,0,NULL,15),
 (14,NULL,300,'300','BURGER',20,NULL,49,'','2012-08-06 13:59:23',NULL,'CANDY','29',NULL,0,NULL,20),
 (15,NULL,301,'301','SPAGHETTI',15,NULL,35,'','2012-08-06 13:59:53',NULL,'CANDY','29',NULL,0,NULL,15),
 (16,NULL,360,'360','BUKO JUICE',10,NULL,66,'','2012-08-06 14:05:42',NULL,'0','29',NULL,0,NULL,10),
 (17,NULL,360,'360','BUKO JUICE',10,NULL,44,'','2012-08-06 14:06:02',NULL,'0','29',NULL,0,NULL,10);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (18,NULL,308,'308','CHEESEBURGER',25,NULL,55,'','2012-08-06 14:06:46',NULL,'CANDY','29',NULL,0,NULL,25),
 (19,NULL,309,'309','HAM AND EGG',20,NULL,20,'','2012-08-06 14:06:59',NULL,'CANDY','29',NULL,0,NULL,20),
 (20,NULL,138,'138','MOUNTAIN DEW 12OZ',12,NULL,1029,'','2012-08-06 14:09:38',NULL,'MOUNTAIN DEW','46',NULL,0,NULL,12),
 (21,NULL,302,'302','SPAGHETTI W/BREAD',15,NULL,6,'','2012-08-06 14:14:55',NULL,'CANDY','29',NULL,0,NULL,15),
 (22,NULL,306,'306','TOCINO',10,NULL,64,'','2012-08-06 14:16:16',NULL,'CANDY','29',NULL,0,NULL,10),
 (23,NULL,310,'310','CHAMPORADO',8,NULL,44,'','2012-08-06 14:19:34',NULL,'CANDY','29',NULL,0,NULL,8),
 (24,NULL,215,'215','YEMAS',1,NULL,347,'','2012-08-06 14:19:52',NULL,'CANDY','29',NULL,0,NULL,15),
 (25,NULL,336,'336','PEANUTS',5,NULL,104,'','2012-08-06 14:20:03',NULL,'CANDY','29',NULL,0,NULL,5),
 (26,NULL,295,'295','MAMMOON',3,NULL,126,'','2012-08-06 14:20:14',NULL,'0','29',NULL,0,NULL,3);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (27,NULL,305,'305','MEATBREAD',15,NULL,63,'','2012-08-06 14:20:35',NULL,'0','29',NULL,0,NULL,15),
 (28,NULL,312,'312','PIZZA BREAD',10,NULL,120,'','2012-08-06 14:21:00',NULL,'0','29',NULL,0,NULL,10),
 (29,NULL,452,'452','CHIFFON W/CHEESE',7,NULL,24,'','2012-08-06 14:22:26',NULL,'FLOOR WAX','1',NULL,0,NULL,0),
 (30,NULL,294,'294','CINNAMON ROLL',3,NULL,40,'','2012-08-06 14:22:51',NULL,'0','29',NULL,0,NULL,3),
 (31,NULL,316,'316','BANANA CAKE SLICE',6,NULL,32,'','2012-08-06 14:23:03',NULL,'0','29',NULL,0,NULL,6),
 (32,NULL,296,'296','TORTA',5,NULL,41,'','2012-08-06 14:23:33',NULL,'0','29',NULL,0,NULL,5),
 (33,NULL,298,'298','CHOCO MOIST CAKE SLICE',15,NULL,24,'','2012-08-06 14:25:13',NULL,'0','29',NULL,0,NULL,15),
 (34,NULL,342,'342','EGG SANDWICH',10,NULL,41,'','2012-08-06 14:25:25',NULL,'CANDY','29',NULL,0,NULL,10),
 (35,NULL,453,'453','MOCHA CAKE SLICE',5,NULL,23,'','2012-08-06 14:26:12',NULL,'FLOOR WAX','1',NULL,0,NULL,0);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (36,NULL,454,'454','CHIFFON W/ICING',10,NULL,24,'','2012-08-06 14:30:46',NULL,'FLOOR WAX','1',NULL,0,NULL,0),
 (37,NULL,369,'369','COMBO',7,NULL,20,'','2012-08-06 14:48:13',NULL,'CANDY','29',NULL,0,NULL,0),
 (38,NULL,338,'338','BANANA CUE',8,NULL,12,'','2012-08-06 14:49:59',NULL,'CANDY','29',NULL,0,NULL,8),
 (39,NULL,220,'220','CHOCOLAIT MILK 250ML',24,NULL,24,'','2012-08-06 14:59:33',NULL,'MILK DRINKS','42',NULL,0,NULL,24),
 (40,NULL,115,'115','LIPTON LEMON 450ML',24,NULL,120,'','2012-08-06 12:11:12',NULL,'JUICE','41',NULL,0,NULL,24),
 (41,NULL,115,'115','LIPTON LEMON 450ML',24,NULL,116,'','2012-08-06 12:12:16',NULL,'JUICE','41',NULL,0,NULL,24),
 (42,NULL,115,'115','LIPTON LEMON / RED 450ML',24,NULL,24,'','2012-08-06 12:13:04',NULL,'FLOOR WAX','1',NULL,0,NULL,24),
 (43,NULL,448,'448','TROPICANA TWISTER ORANGE',24,NULL,58,'','2012-08-06 14:09:35',NULL,'NOTEBOOK','14',NULL,0,NULL,24);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (44,NULL,115,'115','LIPTON LEMON / RED 450ML',24,NULL,97,'','2012-08-06 14:10:29',NULL,'FLOOR WAX','1',NULL,0,NULL,24),
 (45,NULL,64,'64','MILKITA CANDY',1,NULL,600,'','2012-08-06 14:10:54',NULL,'CANDY','29',NULL,0,NULL,1),
 (46,NULL,73,'73','ZUPPER-ZUPPER',1,NULL,600,'','2012-08-06 14:11:17',NULL,'CANDY','29',NULL,0,NULL,1),
 (47,NULL,360,'360','BUKO JUICE',10,NULL,44,'','2012-08-06 14:11:45',NULL,'0','29',NULL,0,NULL,10),
 (48,NULL,296,'296','TORTA',5,NULL,3,'','2012-08-06 14:12:11',NULL,'0','29',NULL,0,NULL,5),
 (49,NULL,215,'215','YEMAS',1,NULL,200,'','2012-08-06 14:20:19',NULL,'CANDY','29',NULL,0,NULL,1),
 (50,NULL,336,'336','PEANUTS',5,NULL,30,'','2012-08-06 14:20:39',NULL,'CANDY','29',NULL,0,NULL,5),
 (51,NULL,359,'359','SNOW BEAR',1,NULL,240,'','2012-08-06 14:22:14',NULL,'FLOOR WAX','1',NULL,0,NULL,1),
 (52,NULL,58,'58','KENDIMENT',1,NULL,286,'','2012-08-06 14:22:36',NULL,'CANDY','29',NULL,0,NULL,1);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (53,NULL,70,'70','WHITE RABBIT',1,NULL,260,'','2012-08-06 14:23:10',NULL,'CANDY','29',NULL,0,NULL,1),
 (54,NULL,105,'105','HAPPY PEANUTS',1.5,NULL,360,'','2012-08-06 14:23:40',NULL,'PEANUTS','32',NULL,0,NULL,1.5),
 (55,NULL,65,'65','MILKITA LOLLIPOP',6,NULL,256,'','2012-08-06 14:24:04',NULL,'FLOOR WAX','1',NULL,0,NULL,6),
 (56,NULL,99,'99','MAGIC CREAM CHOCOLATE',6,NULL,16,'','2012-08-06 14:24:24',NULL,'COOKIES','31',NULL,0,NULL,6),
 (57,NULL,100,'100','PRESTO CREAM',6,NULL,35,'','2012-08-06 14:24:45',NULL,'COOKIES','31',NULL,0,NULL,6),
 (58,NULL,98,'98','HIRO',6,NULL,10,'','2012-08-06 14:25:03',NULL,'COOKIES','31',NULL,0,NULL,6),
 (59,NULL,103,'103','VOICE CHOCOLATE',6,NULL,93,'','2012-08-06 14:25:24',NULL,'COOKIES','31',NULL,0,NULL,6),
 (60,NULL,357,'357','NISSIN STICK',6,NULL,60,'','2012-08-06 14:25:42',NULL,'LUCKY ME','27',NULL,0,NULL,6),
 (61,NULL,96,'96','GRAHAM',6,NULL,16,'','2012-08-06 14:26:00',NULL,'COOKIES','31',NULL,0,NULL,6);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (62,NULL,90,'90','CREAM O BISCUIT',8,NULL,50,'','2012-08-06 14:26:14',NULL,'FLOOR WAX','1',NULL,0,NULL,8),
 (63,NULL,54,'54','BIG BANG',8,NULL,34,'','2012-08-06 14:26:40',NULL,'CANDY','29',NULL,0,NULL,8),
 (64,NULL,358,'358','CHOCO MUCHO',8,NULL,60,'','2012-08-06 14:27:02',NULL,'FLOOR WAX','1',NULL,0,NULL,8),
 (65,NULL,61,'61','KRIMSTICK REFILL',1.5,NULL,250,'','2012-08-06 14:27:30',NULL,'CANDY','29',NULL,0,NULL,1.5),
 (66,NULL,85,'85','CHOCO CRUNCHES',6,NULL,41,'','2012-08-06 14:27:52',NULL,'COOKIES','31',NULL,0,NULL,6),
 (67,NULL,84,'84','COOKIE CRUNCH',6,NULL,42,'','2012-08-06 14:28:14',NULL,'COOKIES','31',NULL,0,NULL,6),
 (68,NULL,94,'94','EXTREME REBISCO',8,NULL,61,'','2012-08-06 14:28:29',NULL,'FLOOR WAX','1',NULL,0,NULL,8),
 (69,NULL,95,'95','FAST BREAK',6,NULL,79,'','2012-08-06 14:28:43',NULL,'COOKIES','31',NULL,0,NULL,6),
 (70,NULL,104,'104','WAFER TIMES',5,NULL,58,'','2012-08-06 14:29:01',NULL,'COOKIES','31',NULL,0,NULL,5);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (71,NULL,97,'97','HANSEL CHOCOLATE',6,NULL,10,'','2012-08-06 14:29:22',NULL,'COOKIES','31',NULL,0,NULL,6),
 (72,NULL,97,'97','HANSEL CHOCOLATE',6,NULL,10,'','2012-08-06 14:34:26',NULL,'COOKIES','31',NULL,0,NULL,6),
 (73,NULL,55,'55','FLAT TOPS',3,NULL,150,'','2012-08-06 14:34:53',NULL,'CANDY','29',NULL,0,NULL,3),
 (74,NULL,66,'66','NIPS TIE',4,NULL,120,'','2012-08-06 14:35:08',NULL,'CANDY','29',NULL,0,NULL,4),
 (75,NULL,76,'76','CHUBBY CHOCO CHOEY',2,NULL,279,'','2012-08-06 14:35:25',NULL,'CANDY','29',NULL,0,NULL,2),
 (76,NULL,439,'439','SOFT CANDY',1,NULL,625,'','2012-08-06 14:35:42',NULL,'NOTEBOOK','29',NULL,0,NULL,1),
 (77,NULL,129,'129','PREMIER  WATER500 ML',14,NULL,192,'','2012-08-06 14:36:11',NULL,'WATER','43',NULL,0,NULL,14),
 (78,NULL,130,'130','PREMIER WATER 350 ML',12,NULL,200,'','2012-08-06 14:37:03',NULL,'WATER','43',NULL,0,NULL,12),
 (79,NULL,354,'354','SOFTDRINKS IN CUPS',10,NULL,1027,'','2012-08-06 14:37:23',NULL,'DRINK','1',NULL,0,NULL,10);
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (80,NULL,134,'134','7-UP 500ML',24,NULL,66,'','2012-08-06 14:38:02',NULL,'7-UP','44',NULL,0,NULL,24),
 (81,NULL,139,'139','MOUNTAIN DEW 500ML',24,NULL,48,'','2012-08-06 14:38:22',NULL,'MOUNTAIN DEW','46',NULL,0,NULL,24),
 (82,NULL,136,'136','MIRINDA 500ML',24,NULL,48,'','2012-08-06 14:38:38',NULL,'MIRINDA','45',NULL,0,NULL,24),
 (83,NULL,353,'353','GATORADE',37,NULL,36,'','2012-08-06 14:38:57',NULL,'CHOCOLATE DRINKS','40',NULL,0,NULL,37),
 (84,NULL,140,'140','PEPSI 8OZ',10,NULL,239,'','2012-08-06 14:39:49',NULL,'PEPSI','47',NULL,0,NULL,10),
 (85,NULL,135,'135','MIRINDA 8OZ',10,NULL,48,'','2012-08-06 14:40:09',NULL,'MIRINDA','45',NULL,0,NULL,10),
 (86,NULL,133,'133','7-UP 8OZ',10,NULL,53,'','2012-08-06 14:40:31',NULL,'7-UP','44',NULL,0,NULL,10),
 (87,NULL,138,'138','MOUNTAIN DEW 12OZ',12,NULL,205,'','2012-08-06 14:40:54',NULL,'MOUNTAIN DEW','46',NULL,0,NULL,12),
 (88,NULL,194,'194','AA batteries',100,NULL,5,'','2012-12-17 21:53:12',NULL,'none','0',NULL,0,NULL,100);
/*!40000 ALTER TABLE `inventory2` ENABLE KEYS */;


--
-- Definition of table `inventory2_stocks_left`
--

DROP TABLE IF EXISTS `inventory2_stocks_left`;
CREATE TABLE `inventory2_stocks_left` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lookup_code` varchar(20) DEFAULT NULL,
  `prod_num` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_qty` double DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `types_num` varchar(100) DEFAULT NULL,
  `is_vat` varchar(100) DEFAULT NULL,
  `prod_assembly` int(4) DEFAULT NULL,
  `is_linient` tinyint(4) DEFAULT NULL,
  `w_commission` tinyint(4) DEFAULT NULL,
  `comm_amount` double DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `img_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory2_stocks_left`
--

/*!40000 ALTER TABLE `inventory2_stocks_left` DISABLE KEYS */;
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (1,'1',1,'1','diving-Dauin Coast',150,84,'none','0','0',0,0,0,0,1,150,'empty'),
 (2,'2',2,'2','diving-Apo Island',300,10,'none','0','0',0,0,0,0,1,300,'empty'),
 (3,'3',3,'3','diving-Siquijor',150,97,'none','0','0',0,0,0,0,1,150,'empty'),
 (4,'4',4,'4','diving-Sumilon',300,100,'none','0','0',0,0,0,0,1,300,'empty'),
 (5,'5',5,'5','diving-Liloan',150,100,'none','0','0',0,0,0,0,1,150,'empty'),
 (6,'6',6,'6','snorkeling-Dauin Coast',50,100,'none','0','0',0,0,0,0,1,50,'empty'),
 (7,'7',7,'7','snorkeling-Apo Island',150,100,'none','0','0',0,0,0,0,1,150,'empty'),
 (8,'8',8,'8','snorkeling-Siquijor',50,89,'none','0','0',0,0,0,0,1,50,'empty'),
 (9,'9',9,'9','snorkeling-Sumilon',200,96,'none','0','0',0,0,0,0,1,200,'empty'),
 (10,'10',10,'10','snorkeling-Liloan',50,99,'none','0','0',0,0,0,0,1,50,'empty'),
 (11,'11',11,'11','snorkeling-Oslob',350,92,'none','0','0',0,0,0,0,1,350,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (12,'12',12,'12','camera-Dauin Coast',50,100,'none','0','0',0,0,0,0,1,50,'empty'),
 (13,'13',13,'13','camera-Apo Island',50,96,'none','0','0',0,0,0,0,1,50,'empty'),
 (14,'14',14,'14','camera-Siquijor',50,100,'none','0','0',0,0,0,0,1,50,'empty'),
 (15,'15',15,'15','camera-Sumilon',200,91,'none','0','0',0,0,0,0,1,200,'empty'),
 (16,'16',16,'16','camera-Liloan',50,98,'none','0','0',0,0,0,0,1,50,'empty'),
 (17,'17',17,'17','camera-Oslob',200,102,'none','0','0',0,0,0,0,1,200,'empty'),
 (18,'18',18,'18','day trip-Dauin Coast',0,100,'none','0','0',0,0,0,0,1,0,'empty'),
 (19,'19',19,'19','day trip-Apo Island',350,100,'none','0','0',0,0,0,0,1,350,'empty'),
 (20,'20',20,'20','day trip-Siquijor',350,100,'none','0','0',0,0,0,0,1,350,'empty'),
 (21,'21',21,'21','day trip-Sumilon',350,100,'none','0','0',0,0,0,0,1,350,'empty'),
 (22,'22',22,'22','day trip-Liloan',350,100,'none','0','0',0,0,0,0,1,350,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (23,'23',23,'23','day trip-Oslob',350,95,'none','0','0',0,0,0,0,1,350,'empty'),
 (24,'24',24,'24','Apo Island',950,103,'FLOOR WAX','1','0',0,0,0,0,1,950,'empty'),
 (25,'25',25,'25','Siquijor',1150,83,'BALLPEN','6','0',2,0,0,0,2,1150,'empty'),
 (26,'26',26,'26','Sumilon',950,86,'BALLPEN','6','0',1,0,0,0,2,950,'empty'),
 (27,'27',27,'27','Dauin Coast 1 trip',250,89,'none','0','0',0,0,0,0,2,250,'empty'),
 (28,'28',28,'28','Dauin Coast 2 trips',600,93,'none','0','0',0,0,0,0,2,600,'empty'),
 (29,'29',29,'29','Single Person-1 dive w/o EANX',1300,1,'none','0','0',0,0,0,0,3,1300,'empty'),
 (30,'30',30,'30','Single Person-2 dive w/o EANX',2600,0,'none','0','0',0,0,0,0,3,2600,'empty'),
 (31,'31',31,'31','Single Person-3 dive w/o EANX',3600,0,'none','0','0',0,0,0,0,3,3600,'empty'),
 (32,'32',32,'32','Single Person-4 dive w/o EANX',4800,0,'none','0','0',0,0,0,0,3,4800,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (33,'33',33,'33','Single Person-5 dive w/o EANX',5500,0,'none','0','0',0,0,0,0,3,5500,'empty'),
 (34,'34',34,'34','Single Person-6 dive w/o EANX',6600,0,'none','0','0',0,0,0,0,3,6600,'empty'),
 (35,'35',35,'35','Single Person-1 dive w/ EANX',1550,0,'LUCKY ME','27','0',0,0,0,0,3,1550,'empty'),
 (36,'36',36,'36','Single Person-2 dive w/ EANX',3100,0,'none','0','0',0,0,0,0,3,3100,'empty'),
 (37,'37',37,'37','Single Person-3 dive w/ EANX',4350,0,'none','0','0',0,0,0,0,3,4350,'empty'),
 (38,'38',38,'38','Single Person-4 dive w/ EANX',5800,0,'none','0','0',0,0,0,0,3,5800,'empty'),
 (39,'39',39,'39','Single Person-5 dive w/ EANX',6750,0,'none','0','0',0,0,0,0,3,6750,'empty'),
 (40,'40',40,'40','Single Person-6 dive w/ EANX',8100,0,'none','0','0',0,0,0,0,3,8100,'empty'),
 (41,'41',41,'41','Single Person-Extra Dive w/o EANX',1000,0,'none','0','0',0,0,0,0,3,1000,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (42,'42',42,'42','Single Person-Extra Dive w/ EANX',1250,0,'none','0','0',0,0,0,0,3,1250,'empty'),
 (43,'43',43,'43','Apo Island',350,100,'FLOOR WAX','1','0',2,0,0,0,1,350,'empty'),
 (44,'44',44,'44','Dauin ',500,100,'none','0','0',0,0,0,0,4,500,'empty'),
 (45,'45',45,'45','Full Rental-Per dive',250,100,'none','0','0',0,0,0,0,5,250,'empty'),
 (46,'46',46,'46','Full Rental-Per day',400,100,'none','0','0',0,0,0,0,5,400,'empty'),
 (47,'47',47,'47','BCD-Per dive',100,100,'none','0','0',0,0,0,0,5,100,'empty'),
 (48,'48',48,'48','BCD-Per day',200,100,'none','0','0',0,0,0,0,5,200,'empty'),
 (49,'49',49,'49','REG-Per dive',100,100,'none','0','0',0,0,0,0,5,100,'empty'),
 (50,'50',50,'50','REG-Per day',200,100,'none','0','0',0,0,0,0,5,200,'empty'),
 (51,'51',51,'51','Mask + snorkel-Per dive',100,100,'none','0','0',0,0,0,0,5,100,'empty'),
 (52,'52',52,'52','Mask + snorkel-Per day',200,100,'none','0','0',0,0,0,0,5,200,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (53,'53',53,'53','Fins-Per dive',50,100,'none','0','0',0,0,0,0,5,50,'empty'),
 (54,'54',54,'54','Fins-Per day',100,100,'none','0','0',0,0,0,0,5,100,'empty'),
 (55,'55',55,'55','wetsuit-Per dive',50,100,'none','0','0',0,0,0,0,5,50,'empty'),
 (56,'56',56,'56','wetsuit-Per day',100,100,'none','0','0',0,0,0,0,5,100,'empty'),
 (57,'57',57,'57','Full snorkel-Per dive',0,100,'none','0','0',0,0,0,0,5,0,'empty'),
 (58,'58',58,'58','Full snorkel-Per day',200,100,'none','0','0',0,0,0,0,5,200,'empty'),
 (59,'59',59,'59','Dive light-Per dive',150,98,'none','0','0',0,0,0,0,5,150,'empty'),
 (60,'60',60,'60','Dive light-Per day',0,100,'none','0','0',0,0,0,0,5,0,'empty'),
 (61,'61',61,'61','Computer-Per dive',250,98,'none','0','0',0,0,0,0,5,250,'empty'),
 (62,'62',62,'62','Computer-Per day',400,100,'none','0','0',0,0,0,0,5,400,'empty'),
 (63,'63',63,'63','Underwater camera-Per dive',350,100,'none','0','0',0,0,0,0,5,350,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (64,'64',64,'64','Underwater camera-Per day',600,100,'none','0','0',0,0,0,0,5,600,'empty'),
 (65,'65',65,'65','Bubblemaker',1450,100,'none','0','0',0,0,0,0,6,1450,'empty'),
 (66,'66',66,'66','Discover Scuba Dive Pool',1950,100,'none','0','0',0,0,0,0,6,1950,'empty'),
 (67,'67',67,'67','Discover Scuba Dive Sea',2450,100,'none','0','0',0,0,0,0,6,2450,'empty'),
 (68,'68',68,'68','2nd Discover Scuba Dive Sea',2200,105,'CANDY','29','0',0,0,0,0,4,2200,'empty'),
 (69,'69',69,'69','Scuba Reivew',2200,100,'none','0','0',0,0,0,0,6,2200,'empty'),
 (70,'70',70,'70','Scuba Diver',11450,100,'none','0','0',0,0,0,0,6,11450,'empty'),
 (71,'71',71,'71','Open Water Course',17500,100,'none','0','0',0,0,0,0,6,17500,'empty'),
 (72,'72',72,'72','E-learning',13450,100,'none','0','0',0,0,0,0,6,13450,'empty'),
 (73,'73',73,'73','Adventure dive',3000,100,'none','0','0',0,0,0,0,6,3000,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (74,'74',74,'74','Adventure diver',11450,100,'none','0','0',0,0,0,0,6,11450,'empty'),
 (75,'75',75,'75','Advanced Open Water Course',13950,100,'none','0','0',0,0,0,0,6,13950,'empty'),
 (76,'76',76,'76','Emergency First Response',6500,100,'none','0','0',0,0,0,0,6,6500,'empty'),
 (77,'77',77,'77','Care for Children',6500,100,'none','0','0',0,0,0,0,6,6500,'empty'),
 (78,'78',78,'78','Rescue Course',17450,100,'none','0','0',0,0,0,0,6,17450,'empty'),
 (79,'79',79,'79','Emergency First Response + Rescue',22500,100,'none','0','0',0,0,0,0,6,22500,'empty'),
 (80,'80',80,'80','Emergency First Response + Care for Children + Rescue',27500,100,'none','0','0',0,0,0,0,6,27500,'empty'),
 (81,'81',81,'81','Specialty AWARE',5500,100,'none','0','0',0,0,0,0,6,5500,'empty'),
 (82,'82',82,'82','Specialty Boat Diver',7500,100,'none','0','0',0,0,0,0,6,7500,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (83,'83',83,'83','Specialty Drift Diver',7000,100,'none','0','0',0,0,0,0,6,7000,'empty'),
 (84,'84',84,'84','Specialty Digital Photography',9500,100,'none','0','0',0,0,0,0,6,9500,'empty'),
 (85,'85',85,'85','Specialty Deep Diver',10500,100,'none','0','0',0,0,0,0,6,10500,'empty'),
 (86,'86',86,'86','Specialty Equipment',6500,100,'none','0','0',0,0,0,0,6,6500,'empty'),
 (87,'87',87,'87','Specialty Fish identification',6500,100,'none','0','0',0,0,0,0,6,6500,'empty'),
 (88,'88',88,'88','Specialty Multilevel diver',6500,100,'none','0','0',0,0,0,0,6,6500,'empty'),
 (89,'89',89,'89','Specialty Navigation',8000,100,'none','0','0',0,0,0,0,6,8000,'empty'),
 (90,'90',90,'90','Specialty Naturalist',7000,100,'none','0','0',0,0,0,0,6,7000,'empty'),
 (91,'91',91,'91','Specialty Night Diver',12000,100,'none','0','0',0,0,0,0,6,12000,'empty'),
 (92,'92',92,'92','Specialty Nitrox 1',6750,100,'none','0','0',0,0,0,0,6,6750,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (93,'93',93,'93','Specialty Nitrox 2',8750,100,'none','0','0',0,0,0,0,6,8750,'empty'),
 (94,'94',94,'94','Specialty Peak Performance Buoyancy',6500,100,'none','0','0',0,0,0,0,6,6500,'empty'),
 (95,'95',95,'95','Specialty Shark Conservation',7000,100,'none','0','0',0,0,0,0,6,7000,'empty'),
 (96,'96',96,'96','Specialty Search and Recovery',10500,100,'none','0','0',0,0,0,0,6,10500,'empty'),
 (97,'97',97,'97','Divemaster Basic',55000,100,'none','0','0',0,0,0,0,6,55000,'empty'),
 (98,'98',98,'98','Emergency First Response Instructor',15000,100,'none','0','0',0,0,0,0,6,15000,'empty'),
 (99,'99',99,'99','car-Dumaguete airport to Liquid',700,100,'none','0','0',0,0,0,0,7,700,'empty'),
 (100,'100',100,'100','car-Dumaguete pier to Liquid',700,100,'none','0','0',0,0,0,0,7,700,'empty'),
 (101,'101',101,'101','car-Sibulan pier to Liquid',800,100,'none','0','0',0,0,0,0,7,800,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (102,'102',102,'102','car-Cebu to Liloan',3700,100,'none','0','0',0,0,0,0,7,3700,'empty'),
 (103,'103',103,'103','car-Cebu to Moalboal',3300,100,'none','0','0',0,0,0,0,7,3300,'empty'),
 (104,'104',104,'104','car-Cebu to Maya',3500,100,'none','0','0',0,0,0,0,7,3500,'empty'),
 (105,'105',105,'105','car-Liloan to Maya',6500,100,'none','0','0',0,0,0,0,7,6500,'empty'),
 (106,'106',106,'106','car-Liloan to Moalboal',4200,100,'none','0','0',0,0,0,0,7,4200,'empty'),
 (107,'107',107,'107','van-Dumaguete airport to Liquid',600,100,'none','0','0',0,0,0,0,7,600,'empty'),
 (108,'108',108,'108','van-Dumaguete pier to Liquid',600,100,'none','0','0',0,0,0,0,7,600,'empty'),
 (109,'109',109,'109','van-Sibulan pier to Liquid',700,100,'none','0','0',0,0,0,0,7,700,'empty'),
 (110,'110',110,'110','van-Cebu to Liloan',4200,100,'none','0','0',0,0,0,0,7,4200,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (111,'111',111,'111','van-Cebu to Moalboal',3800,100,'none','0','0',0,0,0,0,7,3800,'empty'),
 (112,'112',112,'112','van-Cebu to Maya',4000,100,'none','0','0',0,0,0,0,7,4000,'empty'),
 (113,'113',113,'113','van-Liloan to Maya',7500,100,'none','0','0',0,0,0,0,7,7500,'empty'),
 (114,'114',114,'114','van-Liloan to Moalboal',4700,100,'none','0','0',0,0,0,0,7,4700,'empty'),
 (115,'115',115,'115','masks-CS matrix',2850,100,'none','0','0',0,0,0,0,8,2850,'empty'),
 (116,'116',116,'116','masks-CS occhio plus',2750,100,'none','0','0',0,0,0,0,8,2750,'empty'),
 (117,'117',117,'117','masks-CS onda',1250,100,'none','0','0',0,0,0,0,8,1250,'empty'),
 (118,'118',118,'118','masks-CS focus',1250,100,'none','0','0',0,0,0,0,8,1250,'empty'),
 (119,'119',119,'119','masks-CS perla',1250,100,'none','0','0',0,0,0,0,8,1250,'empty'),
 (120,'120',120,'120','masks-Aqualung',900,100,'none','0','0',0,0,0,0,8,900,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (121,'121',121,'121','masks-Kids aqualung',725,100,'none','0','0',0,0,0,0,8,725,'empty'),
 (122,'122',122,'122','snorkel-Aquamundo',350,100,'none','0','0',0,0,0,0,8,350,'empty'),
 (123,'123',123,'123','snorkel-Gringo',475,100,'none','0','0',0,0,0,0,8,475,'empty'),
 (124,'124',124,'124','snorkel-Ocean diver',250,100,'none','0','0',0,0,0,0,8,250,'empty'),
 (125,'125',125,'125','snorkel-Wenfei adventure',450,100,'none','0','0',0,0,0,0,8,450,'empty'),
 (126,'126',126,'126','MASK & SNORKEL SET-Aqualung',1400,100,'none','0','0',0,0,0,0,8,1400,'empty'),
 (127,'127',127,'127','FINS-Proflex junior',1100,100,'none','0','0',0,0,0,0,8,1100,'empty'),
 (128,'128',128,'128','FINS-Seeman sub',1050,100,'none','0','0',0,0,0,0,8,1050,'empty'),
 (129,'129',129,'129','FINS-Seac sub',1050,100,'none','0','0',0,0,0,0,8,1050,'empty'),
 (130,'130',130,'130','FINS-Rainbow',1050,100,'none','0','0',0,0,0,0,8,1050,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (131,'131',131,'131','CLOTHES-T-shirts',350,100,'none','0','0',0,0,0,0,8,350,'empty'),
 (132,'132',132,'132','CLOTHES-Kids t-shirts',250,100,'none','0','0',0,0,0,0,8,250,'empty'),
 (133,'133',133,'133','CLOTHES-Tank tops',200,100,'none','0','0',0,0,0,0,8,200,'empty'),
 (134,'134',134,'134','CLOTHES-Basketball jersey',750,100,'none','0','0',0,0,0,0,8,750,'empty'),
 (135,'135',135,'135','CLOTHES-Board short men',900,100,'none','0','0',0,0,0,0,8,900,'empty'),
 (136,'136',136,'136','CLOTHES-Board short women',450,100,'none','0','0',0,0,0,0,8,450,'empty'),
 (137,'137',137,'137','CLOTHES-Hooded jacket',1200,100,'none','0','0',0,0,0,0,8,1200,'empty'),
 (138,'138',138,'138','CLOTHES-Bikini orange + brown',1275,100,'none','0','0',0,0,0,0,8,1275,'empty'),
 (139,'139',139,'139','CLOTHES-Bikini Sassa',1000,100,'none','0','0',0,0,0,0,8,1000,'empty'),
 (140,'140',140,'140','CLOTHES-Bikini plain',1200,100,'none','0','0',0,0,0,0,8,1200,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (141,'141',141,'141','CLOTHES-Bikini printed',1250,100,'none','0','0',0,0,0,0,8,1250,'empty'),
 (142,'142',142,'142','CLOTHES-Bikini fancy white',2000,100,'none','0','0',0,0,0,0,8,2000,'empty'),
 (143,'143',143,'143','RASH GUARDS-Zeeware',1120,100,'none','0','0',0,0,0,0,8,1120,'empty'),
 (144,'144',144,'144','RASH GUARDS-CS long sleeve',1050,100,'none','0','0',0,0,0,0,8,1050,'empty'),
 (145,'145',145,'145','RASH GUARDS-Body glove',1300,100,'none','0','0',0,0,0,0,8,1300,'empty'),
 (146,'146',146,'146','RASH GUARDS-Kids',800,100,'none','0','0',0,0,0,0,8,800,'empty'),
 (147,'147',147,'147','HOODED VEST-aqualung',1875,100,'none','0','0',0,0,0,0,8,1875,'empty'),
 (148,'148',148,'148','LIQUID STUFF-Dry bag',600,100,'none','0','0',0,0,0,0,8,600,'empty'),
 (149,'149',149,'149','LIQUID STUFF-Padded satchel',1000,100,'none','0','0',0,0,0,0,8,1000,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (150,'150',150,'150','LIQUID STUFF-Satchel',800,100,'none','0','0',0,0,0,0,8,800,'empty'),
 (151,'151',151,'151','LIQUID STUFF-Log book',150,100,'none','0','0',0,0,0,0,8,150,'empty'),
 (152,'152',152,'152','LIQUID STUFF-Stickers',10,100,'none','0','0',0,0,0,0,8,10,'empty'),
 (153,'153',153,'153','LIQUID STUFF-Course satchel',50,100,'none','0','0',0,0,0,0,8,50,'empty'),
 (154,'154',154,'154','LIQUID STUFF-Wooden diver',550,100,'none','0','0',0,0,0,0,8,550,'empty'),
 (155,'155',155,'155','LIQUID STUFF-Post cards',40,100,'none','0','0',0,0,0,0,8,40,'empty'),
 (156,'156',156,'156','LIQUID STUFF-Goggles',275,100,'none','0','0',0,0,0,0,8,275,'empty'),
 (157,'157',157,'157','LIQUID STUFF-Bracelets',75,100,'none','0','0',0,0,0,0,8,75,'empty'),
 (158,'158',158,'158','MISC-SMB',2350,100,'none','0','0',0,0,0,0,8,2350,'empty'),
 (159,'159',159,'159','MISC-Pointer w/lanyard',1050,100,'none','0','0',0,0,0,0,8,1050,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (160,'160',160,'160','MISC-Fin strap',195,100,'none','0','0',0,0,0,0,8,195,'empty'),
 (161,'161',161,'161','MISC-Wrist compass',3050,100,'none','0','0',0,0,0,0,8,3050,'empty'),
 (162,'162',162,'162','MISC-Seako dive knife',1100,100,'none','0','0',0,0,0,0,8,1100,'empty'),
 (163,'163',163,'163','MISC-Fish in a pocket guide',750,100,'none','0','0',0,0,0,0,8,750,'empty'),
 (164,'164',164,'164','MISC-Tank banger',250,100,'none','0','0',0,0,0,0,8,250,'empty'),
 (165,'165',165,'165','MISC-Finger spool 50',800,100,'none','0','0',0,0,0,0,8,800,'empty'),
 (166,'166',166,'166','MISC-Finger spool 65',950,100,'none','0','0',0,0,0,0,8,950,'empty'),
 (167,'167',167,'167','MISC-Finger spool 100',1050,100,'none','0','0',0,0,0,0,8,1050,'empty'),
 (168,'168',168,'168','MISC-Fin strap buckle',130,100,'none','0','0',0,0,0,0,8,130,'empty'),
 (169,'169',169,'169','MISC-Silicone mask strap',210,100,'none','0','0',0,0,0,0,8,210,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (170,'170',170,'170','MISC-Silicone mouthpiece',150,100,'none','0','0',0,0,0,0,8,150,'empty'),
 (171,'171',171,'171','MISC-Comfort mouthpiece',210,100,'none','0','0',0,0,0,0,8,210,'empty'),
 (172,'172',172,'172','MISC-Octopus holder',225,100,'none','0','0',0,0,0,0,8,225,'empty'),
 (173,'173',173,'173','MISC-Lanyard',100,100,'none','0','0',0,0,0,0,8,100,'empty'),
 (174,'174',174,'174','MISC-Silicone grease 10gms',200,100,'none','0','0',0,0,0,0,8,200,'empty'),
 (175,'175',175,'175','MISC-Watch strap compass',150,100,'none','0','0',0,0,0,0,8,150,'empty'),
 (176,'176',176,'176','MISC-Dive lights',700,100,'none','0','0',0,0,0,0,8,700,'empty'),
 (177,'177',177,'177','MISC-Dive slates',750,100,'none','0','0',0,0,0,0,8,750,'empty'),
 (178,'178',178,'178','Rexona deodorant man',60,100,'none','0','0',0,0,0,0,9,60,'empty'),
 (179,'179',179,'179','Rexona deodorant woman',105,100,'none','0','0',0,0,0,0,9,105,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (180,'180',180,'180','Wipes',25,100,'none','0','0',0,0,0,0,9,25,'empty'),
 (181,'181',181,'181','OFF kids',190,100,'none','0','0',0,0,0,0,9,190,'empty'),
 (182,'182',182,'182','OFF adult',190,100,'none','0','0',0,0,0,0,9,190,'empty'),
 (183,'183',183,'183','Aloe vera large',120,100,'none','0','0',0,0,0,0,9,120,'empty'),
 (184,'184',184,'184','Aloe vera small',25,100,'none','0','0',0,0,0,0,9,25,'empty'),
 (185,'185',185,'185','Razor lady',105,100,'none','0','0',0,0,0,0,9,105,'empty'),
 (186,'186',186,'186','Razor man',75,100,'none','0','0',0,0,0,0,9,75,'empty'),
 (187,'187',187,'187','Colgate',35,100,'none','0','0',0,0,0,0,9,35,'empty'),
 (188,'188',188,'188','Toothbrush',30,100,'none','0','0',0,0,0,0,9,30,'empty'),
 (189,'189',189,'189','Soap',25,100,'none','0','0',0,0,0,0,9,25,'empty'),
 (190,'190',190,'190','Ear buds',30,100,'none','0','0',0,0,0,0,9,30,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (191,'191',191,'191','Hand sanitizer',30,100,'none','0','0',0,0,0,0,9,30,'empty'),
 (192,'192',192,'192','Shampoo',40,100,'none','0','0',0,0,0,0,9,40,'empty'),
 (193,'193',193,'193','D cell batteries',90,100,'none','0','0',0,0,0,0,9,90,'empty'),
 (194,'194',194,'194','AA batteries',100,207,'none','0','0',0,0,0,0,9,100,'empty'),
 (195,'195',195,'195','AAA batteries',130,96,'none','0','0',0,0,0,0,9,130,'empty'),
 (196,'196',196,'196','Adaptor',50,100,'none','0','0',0,0,0,0,9,50,'empty'),
 (197,'197',197,'197','Playtex tampox box',195,100,'none','0','0',0,0,0,0,9,195,'empty'),
 (198,'198',198,'198','Tampax individual',25,100,'none','0','0',0,0,0,0,9,25,'empty'),
 (199,'199',199,'199','SMB',40,-151,'none','0','0',0,0,0,0,10,40,'empty'),
 (200,'200',200,'200','SML',45,-176,'none','0','0',0,0,0,0,10,45,'empty'),
 (201,'201',201,'201','Red Horse',55,-198,'none','0','0',0,0,0,0,10,55,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (202,'202',202,'202','Rum coke/sprite',50,-200,'none','0','0',0,0,0,0,10,50,'empty'),
 (203,'203',203,'203','Vodka coke/sprite',60,-192,'none','0','0',0,0,0,0,10,60,'empty'),
 (204,'204',204,'204','Gin and Tonic',70,-200,'none','0','0',0,0,0,0,10,70,'empty'),
 (205,'205',205,'205','Bottle of tonic water',50,-200,'none','0','0',0,0,0,0,10,50,'empty'),
 (206,'206',206,'206','Double rumcoke/sprite',70,-194,'none','0','0',0,0,0,0,10,70,'empty'),
 (207,'207',207,'207','Double vodka coke/sprite',80,-196,'none','0','0',0,0,0,0,10,80,'empty'),
 (208,'208',208,'208','Double gin and tonic',90,-196,'none','0','0',0,0,0,0,10,90,'empty'),
 (209,'209',209,'209','Cocktail',120,-200,'none','0','0',0,0,0,0,10,120,'empty'),
 (210,'210',210,'210','Rum shot',30,-200,'none','0','0',0,0,0,0,10,30,'empty'),
 (211,'211',211,'211','Vodka shot',35,-200,'none','0','0',0,0,0,0,10,35,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (212,'212',212,'212','Gin shot',40,-200,'none','0','0',0,0,0,0,10,40,'empty'),
 (213,'213',213,'213','Tequila shot',40,-200,'none','0','0',0,0,0,0,10,40,'empty'),
 (214,'214',214,'214','Liquid deco shot',60,-200,'none','0','0',0,0,0,0,10,60,'empty'),
 (215,'215',215,'215','House wine glass',100,-194,'none','0','0',0,0,0,0,10,100,'empty'),
 (216,'216',216,'216','House wine bottle',450,-200,'none','0','0',0,0,0,0,10,450,'empty'),
 (217,'217',217,'217','Coke, sprite, royal',30,-200,'none','0','0',0,0,0,0,10,30,'empty'),
 (218,'218',218,'218','Water',30,-200,'none','0','0',0,0,0,0,10,30,'empty'),
 (219,'219',219,'219','Water re-fill',20,-200,'none','0','0',0,0,0,0,10,20,'empty'),
 (220,'220',220,'220','Jug of juice',70,-200,'none','0','0',0,0,0,0,10,70,'empty'),
 (221,'221',221,'221','Jug of iced tea',80,-200,'none','0','0',0,0,0,0,10,80,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (222,'222',222,'222','Fruit smoothie',95,-200,'none','0','0',0,0,0,0,10,95,'empty'),
 (223,'223',223,'223','Bear Wine',475,-200,'none','0','0',0,0,0,0,10,475,'empty'),
 (224,'224',224,'224','Urban wine',495,-200,'none','0','0',0,0,0,0,10,495,'empty'),
 (225,'225',225,'225','La Marca wine',495,-200,'none','0','0',0,0,0,0,10,495,'empty'),
 (226,'226',226,'226','Lolita wine',475,-200,'none','0','0',0,0,0,0,10,475,'empty'),
 (227,'227',227,'227','Coke 1 liter',60,-200,'none','0','0',0,0,0,0,10,60,'empty'),
 (228,'228',228,'228','Diet coke',50,-200,'none','0','0',0,0,0,0,10,50,'empty'),
 (229,'229',229,'229','Tea',40,-200,'none','0','0',0,0,0,0,10,40,'empty'),
 (230,'230',230,'230','Green Tea',45,-200,'none','0','0',0,0,0,0,10,45,'empty'),
 (231,'231',231,'231','Coffee',50,-200,'none','0','0',0,0,0,0,10,50,'empty'),
 (232,'232',232,'232','Iced Coffee',50,-200,'none','0','0',0,0,0,0,10,50,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (233,'233',233,'233','Hot Choco',60,-200,'none','0','0',0,0,0,0,10,60,'empty'),
 (234,'234',234,'234','Piatos/Nova',50,-200,'none','0','0',0,0,0,0,10,50,'empty'),
 (235,'235',235,'235','Chicharron',60,-200,'none','0','0',0,0,0,0,10,60,'empty'),
 (236,'236',236,'236','Happy peanuts',70,-200,'none','0','0',0,0,0,0,10,70,'empty'),
 (237,'237',237,'237','Healthy you nut',100,-200,'none','0','0',0,0,0,0,10,100,'empty'),
 (238,'238',238,'238','Grower nut',100,-200,'none','0','0',0,0,0,0,10,100,'empty'),
 (239,'239',239,'239','Pringles',120,-200,'none','0','0',0,0,0,0,10,120,'empty'),
 (240,'240',240,'240','Dried Mango',100,-200,'none','0','0',0,0,0,0,10,100,'empty'),
 (241,'241',241,'241','Dried Pineapple',100,-200,'none','0','0',0,0,0,0,10,100,'empty'),
 (242,'242',242,'242','Marlboro ',50,-200,'none','0','0',0,0,0,0,10,50,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (243,'243',243,'243','Cornflakes with milk',80,-200,'none','0','0',0,0,0,0,10,80,'empty'),
 (244,'244',244,'244','Cornflakes with milk and fruit',120,-200,'none','0','0',0,0,0,0,10,120,'empty'),
 (245,'245',245,'245','Oatmeal with milk',80,-200,'none','0','0',0,0,0,0,10,80,'empty'),
 (246,'246',246,'246','Oatmeal with milk and fruit',120,-200,'none','0','0',0,0,0,0,10,120,'empty'),
 (247,'247',247,'247','Homemade muesli with milk and fruit',150,-201,'none','0','0',0,0,0,0,10,150,'empty'),
 (248,'248',248,'248','Toast with butter and jam',50,-200,'none','0','0',0,0,0,0,10,50,'empty'),
 (249,'249',249,'249','Seasonal fruit platter',70,-201,'none','0','0',0,0,0,0,10,70,'empty'),
 (250,'250',250,'250','The whole shebang',180,-200,'none','0','0',0,0,0,0,10,180,'empty'),
 (251,'251',251,'251','Lunch',150,-200,'none','0','0',0,0,0,0,10,150,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (252,'252',252,'252','Packed Lunch',125,-200,'none','0','0',0,0,0,0,10,125,'empty'),
 (253,'253',253,'253','Dinner',350,-200,'none','0','0',0,0,0,0,10,350,'empty'),
 (254,'254',254,'254','BBQ/Buffet',450,-200,'none','0','0',0,0,0,0,10,450,'empty'),
 (255,'255',255,'255','Special Dinner',550,-200,'none','0','0',0,0,0,0,10,550,'empty'),
 (256,'256',256,'256','Cottage',1200,100,'none','0','0',0,0,0,0,11,1200,'empty'),
 (257,'257',257,'257','Cottage @ 10% discount',1080,100,'none','0','0',0,0,0,0,11,1080,'empty'),
 (258,'258',258,'258','Cottage special rate 1',1000,100,'none','0','0',0,0,0,0,11,1000,'empty'),
 (259,'259',259,'259','Cottage special rate 2',900,100,'none','0','0',0,0,0,0,11,900,'empty'),
 (260,'260',260,'260','Extra bed',250,100,'none','0','0',0,0,0,0,11,250,'empty'),
 (261,'261',261,'261','Divemaster dorm room',350,100,'none','0','0',0,0,0,0,11,350,'empty');
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`) VALUES 
 (262,'262',262,'262','Divemaster dorm room long term',250,100,'none','0','0',0,0,0,0,11,250,'empty'),
 (264,NULL,263,'263','Assembly1',0,0,'FLOOR WAX','1','Yes',1,1,1,0,1,0,'empty'),
 (265,NULL,264,'265','Assembly2',0,0,'FLOOR WAX','1','Yes',2,1,1,0,1,0,'empty'),
 (266,NULL,265,'266','Sample Item',100,0,'FLOOR WAX','1','Yes',1,1,1,0,1,0,'empty');
/*!40000 ALTER TABLE `inventory2_stocks_left` ENABLE KEYS */;


--
-- Definition of table `inventory_dates`
--

DROP TABLE IF EXISTS `inventory_dates`;
CREATE TABLE `inventory_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_dates`
--

/*!40000 ALTER TABLE `inventory_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_dates` ENABLE KEYS */;


--
-- Definition of table `key_products`
--

DROP TABLE IF EXISTS `key_products`;
CREATE TABLE `key_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_number` int(11) DEFAULT NULL,
  `key_size` int(11) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `key_products`
--

/*!40000 ALTER TABLE `key_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `key_products` ENABLE KEYS */;


--
-- Definition of table `member_charges`
--

DROP TABLE IF EXISTS `member_charges`;
CREATE TABLE `member_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `is_payed` varchar(100) DEFAULT NULL,
  `date_payed` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_charges`
--

/*!40000 ALTER TABLE `member_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_charges` ENABLE KEYS */;


--
-- Definition of table `pending_order_detail_assembly`
--

DROP TABLE IF EXISTS `pending_order_detail_assembly`;
CREATE TABLE `pending_order_detail_assembly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pod_id` int(11) DEFAULT NULL,
  `prod_num` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_qty` double DEFAULT NULL,
  `ref_num` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_order_detail_assembly`
--

/*!40000 ALTER TABLE `pending_order_detail_assembly` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_order_detail_assembly` ENABLE KEYS */;


--
-- Definition of table `pending_order_details`
--

DROP TABLE IF EXISTS `pending_order_details`;
CREATE TABLE `pending_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pending_order_id` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_order_details`
--

/*!40000 ALTER TABLE `pending_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_order_details` ENABLE KEYS */;


--
-- Definition of table `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE `pending_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_name` (`customer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

/*!40000 ALTER TABLE `pending_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_orders` ENABLE KEYS */;


--
-- Definition of table `product_supplier`
--

DROP TABLE IF EXISTS `product_supplier`;
CREATE TABLE `product_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `rep` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_supplier`
--

/*!40000 ALTER TABLE `product_supplier` DISABLE KEYS */;
INSERT INTO `product_supplier` (`id`,`supplier_name`,`address`,`contact`,`rep`) VALUES 
 (1,'Lee Supper PLAZAa','adad','adad1',NULL),
 (2,'Synapse','adaad','23234243',NULL),
 (3,'adad','sdfas','adad',NULL);
/*!40000 ALTER TABLE `product_supplier` ENABLE KEYS */;


--
-- Definition of table `product_uom`
--

DROP TABLE IF EXISTS `product_uom`;
CREATE TABLE `product_uom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uom` varchar(100) DEFAULT NULL,
  `uom_amount` double DEFAULT NULL,
  `prod_num` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_uom`
--

/*!40000 ALTER TABLE `product_uom` DISABLE KEYS */;
INSERT INTO `product_uom` (`id`,`uom`,`uom_amount`,`prod_num`) VALUES 
 (8,'box',12,'1');
/*!40000 ALTER TABLE `product_uom` ENABLE KEYS */;


--
-- Definition of table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lookup_code` varchar(20) DEFAULT NULL,
  `prod_num` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty_per_head` double DEFAULT NULL,
  `product_qty` double DEFAULT NULL,
  `product_qty2` double DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `types_num` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_code` (`lookup_code`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


--
-- Definition of table `rates`
--

DROP TABLE IF EXISTS `rates`;
CREATE TABLE `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate_name` varchar(100) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` (`id`,`rate_name`,`rate`) VALUES 
 (1,'PATRONAGE',2.5);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;


--
-- Definition of table `receipt_discount`
--

DROP TABLE IF EXISTS `receipt_discount`;
CREATE TABLE `receipt_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `or_number` varchar(100) DEFAULT NULL,
  `disc_no` int(11) DEFAULT NULL,
  `disc_name` varchar(100) DEFAULT NULL,
  `disc_percent` double DEFAULT NULL,
  `disc_rate` double DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_no` varchar(100) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt_discount`
--

/*!40000 ALTER TABLE `receipt_discount` DISABLE KEYS */;
INSERT INTO `receipt_discount` (`id`,`or_number`,`disc_no`,`disc_name`,`disc_percent`,`disc_rate`,`cust_name`,`cust_no`,`cust_address`) VALUES 
 (1,'3',1,'Senior Citizen',6,70.2,'ronald Pascua','3452354345','bagacay'),
 (2,'4',1,'Senior Citizen',6,8.22,'ron','234234234234234','asdasd'),
 (3,'0',1,'Programmer',10,26.2,'ronald Pascua','2342','awdasdad'),
 (4,'0',1,'Senior Citizen',6,3.72,'ronald Pascua','23424','23423424'),
 (5,'0',1,'Senior Citizen',6,3.72,'ronald Pascua','23424','23423424'),
 (6,'0',1,'Senior Citizen',6,2.7,'Rond','34234','adda'),
 (7,'0',1,'Senior Citizen',6,2.76,'ron','F','D'),
 (8,'3',1,'Senior Citizen',6,42.6,'adadad','adad','adadad'),
 (9,'18',1,'Senior Citizen',6,8.52,'adad','adad','cadadad'),
 (10,'27',1,'Senior Citizen',6,16.2,'Ronald Pascua','asdasdasd','adadad');
/*!40000 ALTER TABLE `receipt_discount` ENABLE KEYS */;


--
-- Definition of table `receipt_items`
--

DROP TABLE IF EXISTS `receipt_items`;
CREATE TABLE `receipt_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_id` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `type_name` varchar(200) DEFAULT NULL,
  `cat_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt_items`
--

/*!40000 ALTER TABLE `receipt_items` DISABLE KEYS */;
INSERT INTO `receipt_items` (`id`,`receipt_id`,`product_name`,`unit_price`,`qty`,`type_name`,`cat_name`,`description`) VALUES 
 (1,'1','247',150,1,'type','bar and restaurant','Homemade muesli with milk and fruit'),
 (2,'1','249',70,1,'type','bar and restaurant','Seasonal fruit platter'),
 (3,'2','25',150,1,'type','snorkel day trip','Siquijor');
/*!40000 ALTER TABLE `receipt_items` ENABLE KEYS */;


--
-- Definition of table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
CREATE TABLE `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashier_session_id` int(11) DEFAULT NULL,
  `tendered` double DEFAULT NULL,
  `or_number` varchar(100) DEFAULT NULL,
  `receipt_status` int(11) DEFAULT '0',
  `receipt_date` datetime DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `approval_code` varchar(200) DEFAULT NULL,
  `member_id` varchar(100) DEFAULT NULL,
  `is_payed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipts`
--

/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` (`id`,`cashier_session_id`,`tendered`,`or_number`,`receipt_status`,`receipt_date`,`discount`,`credit`,`approval_code`,`member_id`,`is_payed`) VALUES 
 (1,7,220,'1',0,'2012-12-17 22:12:17',0,0,'','0','yes'),
 (2,4,950,'2',0,'2012-12-17 22:12:52',0,0,'','0','yes');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;


--
-- Definition of table `remitances`
--

DROP TABLE IF EXISTS `remitances`;
CREATE TABLE `remitances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_lvl` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `screen_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remitances`
--

/*!40000 ALTER TABLE `remitances` DISABLE KEYS */;
INSERT INTO `remitances` (`id`,`user_id`,`user_name`,`user_lvl`,`amount`,`date_added`,`screen_name`) VALUES 
 (1,'21','top','6',100,'2012-12-15 11:09:55','top'),
 (2,'24','top2','6',1000,'2012-12-15 11:10:12','top cashier2');
/*!40000 ALTER TABLE `remitances` ENABLE KEYS */;


--
-- Definition of table `room_guests`
--

DROP TABLE IF EXISTS `room_guests`;
CREATE TABLE `room_guests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rooom_id` int(11) DEFAULT NULL,
  `guest_id` varchar(100) DEFAULT NULL,
  `guest_name` varchar(200) DEFAULT NULL,
  `checkin_date` datetime DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `to_pay` double DEFAULT NULL,
  `paid` double DEFAULT NULL,
  `room_rate` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_guests`
--

/*!40000 ALTER TABLE `room_guests` DISABLE KEYS */;
INSERT INTO `room_guests` (`id`,`rooom_id`,`guest_id`,`guest_name`,`checkin_date`,`checkout_date`,`status`,`to_pay`,`paid`,`room_rate`) VALUES 
 (1,7,'00000001','Ronald c Pascua','2012-12-17 06:47:38','2012-12-17 06:47:38',0,1400,0,5000),
 (2,7,'00000002','Juan dela Cruz','2012-12-17 06:47:38','2012-12-17 06:47:38',1,150,0,5000),
 (3,6,'00000001','Ronald c Pascua','2012-12-17 06:47:58','2012-12-17 06:47:58',1,0,0,700),
 (4,5,'00000001','Ronald c Pascua','2012-12-17 06:55:37','2012-12-17 06:55:37',1,150,0,1600),
 (5,5,'00000002','Juan dela Cruz','2012-12-17 06:55:37','2012-12-17 06:55:37',0,0,0,1600),
 (6,1,'-1','Walk-In  ','2012-12-17 07:35:40','2012-12-17 07:35:40',1,13700,0,0),
 (7,2,'-1','Walk-In  ','2012-12-17 07:40:48','2012-12-17 07:40:48',1,2029350,0,0),
 (8,6,'00000001','Ronald c Pascua','2012-12-17 08:33:13','2012-12-17 08:33:13',0,0,0,700),
 (9,6,'00000002','Juan dela Cruz','2012-12-17 08:33:13','2012-12-17 08:33:13',0,0,0,700),
 (10,1,'-1','Walk-In  ','2012-12-17 09:36:15','2012-12-17 09:36:15',0,40,0,0),
 (11,2,'00000001','Ronald c Pascua','2012-12-17 09:58:14','2012-12-17 09:58:14',0,0,0,1000);
INSERT INTO `room_guests` (`id`,`rooom_id`,`guest_id`,`guest_name`,`checkin_date`,`checkout_date`,`status`,`to_pay`,`paid`,`room_rate`) VALUES 
 (12,2,'00000004','maria a lname','2012-12-17 09:58:32','2012-12-17 09:58:32',0,0,0,1000);
/*!40000 ALTER TABLE `room_guests` ENABLE KEYS */;


--
-- Definition of table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty_sold` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `cashierid` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `remitance` double DEFAULT NULL,
  `remit_cost` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=446 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (151,'373','CATSUP SACHET',3,11,'2012-08-06 03:42:29',1000,7,0,0,0),
 (152,'455','PATIS SACHET',2,1,'2012-08-06 03:43:22',1000,1,0,0,0),
 (153,'147','CHORIZO',8,18,'2012-08-06 03:43:37',1000,7,0,0,8),
 (154,'227','RICE',10,100,'2012-08-06 03:43:46',1000,7,0,0,35),
 (155,'151','LUNCHEON MEAT',10,10,'2012-08-06 03:43:55',1000,7,0,0,10),
 (156,'149','HOTDOG',10,12,'2012-08-06 03:44:15',1000,7,0,0,10),
 (157,'160','FISH FILLET',15,33,'2012-08-06 03:44:25',1000,7,0,0,15),
 (158,'349','BANANA',3,15,'2012-08-06 03:44:34',1000,7,0,0,3),
 (159,'157','FRIED CHICKEN',30,21,'2012-08-06 03:44:41',1000,7,0,0,30),
 (160,'186','TORTANG TALONG',15,6,'2012-08-06 03:44:58',1000,7,0,0,15),
 (161,'148','FRIED EGG',10,5,'2012-08-06 03:45:05',1000,7,0,0,10),
 (162,'154','SWEET HAM',10,8,'2012-08-06 03:45:14',1000,7,0,0,10),
 (163,'164','PANCIT GUISADO',15,10,'2012-08-06 03:45:21',1000,7,0,0,15),
 (164,'172','PORK WITH PECHAY',15,21,'2012-08-06 03:45:40',1000,7,0,0,15);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (165,'183','PINAKBET',15,8,'2012-08-06 03:45:50',1000,7,0,0,15),
 (166,'179','CHOPSUEY',15,8,'2012-08-06 03:45:59',1000,7,0,0,15),
 (167,'456','PORK CALDERETA',30,14,'2012-08-06 03:47:08',1000,1,0,0,0),
 (168,'457','EMBUTIDO',30,9,'2012-08-06 03:50:19',1000,1,0,0,0),
 (169,'170','PORK CUTLET',30,16,'2012-08-06 03:50:30',1000,7,0,0,30),
 (170,'458','GINATAANG GABI',15,4,'2012-08-06 03:50:37',1000,1,0,0,0),
 (171,'459','PORK WITH YOUNG CORN',15,3,'2012-08-06 03:51:26',1000,1,0,0,0),
 (172,'461','PORK STEAK',30,3,'2012-08-06 03:52:08',1000,1,0,0,0),
 (173,'460','CHICKEN HALANG-HALANG',30,14,'2012-08-06 03:52:21',1000,1,0,0,0),
 (174,'370','NESTLE CUPS',22,5,'2012-08-06 03:52:39',1000,8,0,0,0),
 (175,'114','KING SIZE',25,13,'2012-08-06 03:54:02',1000,4,0,0,24),
 (176,'381','BOND PAPER SHORT',0.75,14,'2012-08-06 11:20:44',1000,2,0,0,0.75),
 (177,'383','YELLOW PAD',25,2,'2012-08-06 11:21:11',1000,2,0,0,25);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (178,'381','BOND PAPER SHORT',0.75,15,'2012-08-06 11:21:44',1000,2,0,0,0.75),
 (179,'418','ILLUSTRATION BOARD 1/4',10,3,'2012-08-06 11:22:03',1000,2,0,0,10),
 (180,'400','DRAWING BOOK BIG',15,2,'2012-08-06 11:22:38',1000,2,0,0,15),
 (181,'36','INTERMEDIATE PAPER',20,1,'2012-08-06 11:22:51',1000,2,0,0,20),
 (182,'416','BONDPAPER LONG',1,50,'2012-08-06 11:23:32',1000,2,0,0,1),
 (183,'408','HBW BALLPEN ',7,5,'2012-08-06 11:24:22',1000,1,0,0,7),
 (184,'413','RETOUCH LIQUID ERASER',15,1,'2012-08-06 11:24:43',1000,2,0,0,15),
 (185,'408','HBW BALLPEN ',7,4,'2012-08-06 11:24:56',1000,1,0,0,7),
 (186,'39','MONGOL PENCIL',10,1,'2012-08-06 11:25:06',1000,2,0,0,10),
 (187,'408','HBW BALLPEN ',7,3,'2012-08-06 11:25:16',1000,1,0,0,7),
 (188,'418','ILLUSTRATION BOARD 1/4',10,1,'2012-08-06 11:25:29',1000,2,0,0,10),
 (189,'48','SHARPENER HAPPY',10,1,'2012-08-06 11:25:52',1000,2,0,0,10),
 (190,'407','PILOT BALLPEN',25,1,'2012-08-06 11:26:20',1000,2,0,0,25);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (191,'35','GRADE 1 PAD PAPER',15,1,'2012-08-06 11:26:29',1000,2,0,0,15),
 (192,'20','LONG SLIDING FOLDER',8,1,'2012-08-06 11:26:44',1000,2,0,0,8),
 (193,'408','HBW BALLPEN ',7,2,'2012-08-06 11:26:52',1000,1,0,0,7),
 (194,'39','MONGOL PENCIL',10,1,'2012-08-06 11:27:01',1000,2,0,0,10),
 (195,'206','GRADE 3 PAD PAPER',15,1,'2012-08-06 11:27:10',1000,2,0,0,15),
 (196,'384','MAGIC AID (BAND AID)',2,4,'2012-08-06 11:27:21',1000,1,0,0,2),
 (197,'392','TISSUE (FEMME)',10,3,'2012-08-06 11:27:49',1000,1,0,0,10),
 (198,'5','WHISPER W/O WINGS',7,1,'2012-08-06 11:28:00',1000,1,0,0,7),
 (199,'394','WHISPER W/ WINGS',7,2,'2012-08-06 11:28:09',1000,1,0,0,7),
 (200,'3','SAFEGUARD REG.',30,1,'2012-08-06 11:28:22',1000,1,0,0,30),
 (201,'197','COLGATE',8,1,'2012-08-06 11:28:32',1000,1,0,0,8),
 (202,'394','WHISPER W/ WINGS',7,2,'2012-08-06 11:28:52',1000,1,0,0,7),
 (203,'5','WHISPER W/O WINGS',7,1,'2012-08-06 11:28:58',1000,1,0,0,7);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (204,'387','FLOOR WAX',15,1,'2012-08-06 11:29:20',1000,1,0,0,15),
 (205,'462','FRENCH FRIES',25,34,'2012-08-06 03:02:29',1000,4,0,25,0),
 (206,'107','HALO-HALO',25,8,'2012-08-06 03:02:39',1000,5,0,0,25),
 (207,'216','SHAKE',20,28,'2012-08-06 03:02:47',1000,5,0,0,20),
 (208,'112','TEMPURA',5,242,'2012-08-06 03:02:58',1000,5,0,0,5),
 (209,'217','FRUIT MIX',10,104,'2012-08-06 03:03:52',1000,5,0,0,10),
 (210,'218','BANANA SPLIT',30,6,'2012-08-06 03:04:03',1000,5,0,0,30),
 (211,'463','KWEK KWEK (BIG)',10,30,'2012-08-06 03:05:23',1000,4,0,10,0),
 (212,'464','KWEK KWEK (SMALL)',5,100,'2012-08-06 03:05:28',1000,4,0,5,0),
 (213,'359','SNOW BEAR',1,20,'2012-08-06 03:07:12',16,1,0,0,1),
 (214,'58','KENDIMENT',1,9,'2012-08-06 03:08:37',16,1,0,0,1),
 (215,'70','WHITE RABBIT',1,7,'2012-08-06 03:08:55',16,1,0,0,1),
 (216,'105','HAPPY PEANUTS',1.5,29,'2012-08-06 03:09:17',16,1,0,0,1.5),
 (217,'65','MILKITA LOLLIPOP',6,9,'2012-08-06 03:09:55',16,1,0,0,6);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (218,'99','MAGIC CREAM CHOCOLATE',6,12,'2012-08-06 03:10:47',16,1,0,0,6),
 (219,'100','PRESTO CREAM',6,8,'2012-08-06 03:11:08',16,1,0,0,6),
 (220,'98','HIRO',6,10,'2012-08-06 03:11:26',16,1,0,0,6),
 (221,'103','VOICE CHOCOLATE',6,7,'2012-08-06 03:11:38',16,1,0,0,6),
 (222,'357','NISSIN STICK',6,6,'2012-08-06 03:12:16',16,1,0,0,6),
 (223,'96','GRAHAM',6,10,'2012-08-06 03:12:34',16,1,0,0,6),
 (224,'90','CREAM O BISCUIT',8,1,'2012-08-06 03:12:49',16,1,0,0,8),
 (225,'54','BIG BANG',8,2,'2012-08-06 03:13:07',16,1,0,0,8),
 (226,'358','CHOCO MUCHO',8,14,'2012-08-06 03:13:36',16,1,0,0,8),
 (227,'61','KRIMSTICK REFILL',1.5,23,'2012-08-06 03:13:48',16,1,0,0,1.5),
 (228,'85','CHOCO CRUNCHES',6,5,'2012-08-06 03:14:40',16,1,0,0,6),
 (229,'84','COOKIE CRUNCH',6,4,'2012-08-06 03:14:50',16,1,0,0,6),
 (230,'94','EXTREME REBISCO',8,3,'2012-08-06 03:15:02',16,1,0,0,8),
 (231,'95','FAST BREAK',6,2,'2012-08-06 03:15:37',16,1,0,0,6);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (232,'104','WAFER TIMES',5,11,'2012-08-06 03:15:51',16,1,0,0,5),
 (233,'97','HANSEL CHOCOLATE',6,10,'2012-08-06 03:16:07',16,1,0,0,6),
 (234,'55','FLAT TOPS',3,9,'2012-08-06 03:16:23',16,1,0,0,3),
 (235,'66','NIPS TIE',4,15,'2012-08-06 03:16:32',16,1,0,0,4),
 (236,'76','CHUBBY CHOCO CHOEY',2,10,'2012-08-06 03:16:43',16,1,0,0,2),
 (237,'439','SOFT CANDY',1,52,'2012-08-06 03:16:56',16,1,0,0,1),
 (238,'129','PREMIER  WATER500 ML',14,17,'2012-08-06 03:17:04',16,1,0,0,14),
 (239,'130','PREMIER WATER 350 ML',12,25,'2012-08-06 03:17:28',16,1,0,0,12),
 (240,'354','SOFTDRINKS IN CUPS',10,189,'2012-08-06 03:17:42',16,1,0,0,10),
 (241,'134','7-UP 500ML',24,19,'2012-08-06 03:17:53',16,1,0,0,24),
 (242,'139','MOUNTAIN DEW 500ML',24,3,'2012-08-06 03:18:04',16,1,0,0,24),
 (243,'353','GATORADE',37,5,'2012-08-06 03:18:12',16,1,0,0,37),
 (244,'140','PEPSI 8OZ',10,59,'2012-08-06 03:18:33',16,1,0,0,10),
 (245,'133','7-UP 8OZ',10,5,'2012-08-06 03:18:42',16,1,0,0,10);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (246,'138','MOUNTAIN DEW 12OZ',12,44,'2012-08-06 03:18:52',16,1,0,0,12),
 (247,'448','TROPICANA TWISTER ORANGE',24,3,'2012-08-06 03:19:01',16,1,0,0,24),
 (248,'115','LIPTON LEMON / RED 450ML',24,23,'2012-08-06 03:19:20',16,1,0,0,24),
 (249,'64','MILKITA CANDY',1,27,'2012-08-06 03:19:31',16,1,0,0,1),
 (250,'73','ZUPPER-ZUPPER',1,56,'2012-08-06 03:19:39',16,1,0,0,1),
 (251,'360','BUKO JUICE',10,44,'2012-08-06 03:19:50',16,1,66,0,10),
 (252,'296','TORTA',5,21,'2012-08-06 03:20:01',16,1,15.75,0,5),
 (253,'453','MOCHA CAKE SLICE',5,23,'2012-08-06 03:20:20',16,1,0,0,5),
 (254,'300','BURGER',20,20,'2012-08-06 03:20:31',16,4,0,0,20),
 (255,'301','SPAGHETTI',15,15,'2012-08-06 03:20:38',16,4,0,0,15),
 (256,'302','SPAGHETTI W/BREAD',15,2,'2012-08-06 03:20:47',16,4,0,0,15),
 (257,'306','TOCINO',10,25,'2012-08-06 03:21:33',16,4,0,0,10),
 (258,'307','SANDWICH',15,2,'2012-08-06 03:21:42',16,4,0,0,15),
 (259,'308','CHEESEBURGER',25,20,'2012-08-06 03:21:51',16,4,0,0,25);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (260,'309','HAM AND EGG',20,10,'2012-08-06 03:22:02',16,4,0,0,20),
 (261,'295','MAMMOON',3,55,'2012-08-06 03:22:12',16,10,24.75,0,3),
 (262,'312','PIZZA BREAD',10,60,'2012-08-06 03:22:24',16,10,90,0,10),
 (263,'299','SIOPAO',20,23,'2012-08-06 03:22:36',16,10,69,0,20),
 (264,'305','MEATBREAD',15,17,'2012-08-06 03:22:43',16,10,38.25,0,15),
 (265,'452','CHIFFON W/CHEESE',7,12,'2012-08-06 03:22:56',16,1,0,0,7),
 (266,'298','CHOCO MOIST CAKE SLICE',15,24,'2012-08-06 03:23:12',16,10,54,0,15),
 (267,'215','YEMAS',1,30,'2012-08-06 03:23:31',16,1,0,0,1),
 (268,'336','PEANUTS',5,10,'2012-08-06 03:23:38',16,1,0,0,5),
 (269,'310','CHAMPORADO',8,24,'2012-08-06 03:23:47',16,4,0,0,8),
 (270,'307','SANDWICH',15,2,'2012-08-06 03:23:55',9,4,0,0,15),
 (271,'300','BURGER',20,8,'2012-08-06 03:31:52',9,4,0,0,20),
 (272,'299','SIOPAO',20,3,'2012-08-06 03:32:00',9,10,9,0,20),
 (273,'301','SPAGHETTI',15,6,'2012-08-06 03:32:22',9,4,0,0,15);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (274,'99','MAGIC CREAM CHOCOLATE',6,2,'2012-08-06 03:32:40',9,1,0,0,6),
 (275,'100','PRESTO CREAM',6,3,'2012-08-06 03:32:59',9,1,0,0,6),
 (276,'103','VOICE CHOCOLATE',6,2,'2012-08-06 03:33:10',9,1,0,0,6),
 (277,'96','GRAHAM',6,1,'2012-08-06 03:33:19',9,1,0,0,6),
 (278,'97','HANSEL CHOCOLATE',6,7,'2012-08-06 03:33:31',9,1,0,0,6),
 (279,'98','HIRO',6,4,'2012-08-06 03:33:41',9,1,0,0,6),
 (280,'357','NISSIN STICK',6,7,'2012-08-06 03:33:54',9,1,0,0,6),
 (281,'90','CREAM O BISCUIT',8,5,'2012-08-06 03:34:02',9,1,0,0,8),
 (282,'54','BIG BANG',8,4,'2012-08-06 03:34:11',9,1,0,0,8),
 (283,'78','CLOUD 9',8,3,'2012-08-06 03:34:18',9,3,0,0,8),
 (284,'94','EXTREME REBISCO',8,4,'2012-08-06 03:34:27',9,1,0,0,8),
 (285,'85','CHOCO CRUNCHES',6,10,'2012-08-06 03:34:44',9,1,0,0,6),
 (286,'66','NIPS TIE',4,2,'2012-08-06 03:34:55',9,1,0,0,4),
 (287,'58','KENDIMENT',1,25,'2012-08-06 03:35:03',9,1,0,0,1),
 (288,'70','WHITE RABBIT',1,7,'2012-08-06 03:35:10',9,1,0,0,1);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (289,'59','KOPIKO CANDY',1,15,'2012-08-06 03:35:25',9,3,0,0,1),
 (290,'51','LUCKY ME SMALL',22,1,'2012-08-06 03:35:34',9,3,0,0,22),
 (291,'212','KOPIKO W/O HOT WATER',8,1,'2012-08-06 03:35:47',9,3,0,0,8),
 (292,'360','BUKO JUICE',10,22,'2012-08-06 03:36:08',9,1,33,0,10),
 (293,'358','CHOCO MUCHO',8,3,'2012-08-06 03:36:16',9,1,0,0,8),
 (294,'140','PEPSI 8OZ',10,16,'2012-08-06 03:36:25',9,1,0,0,10),
 (295,'135','MIRINDA 8OZ',10,5,'2012-08-06 03:36:37',9,1,0,0,10),
 (296,'133','7-UP 8OZ',10,4,'2012-08-06 03:36:51',9,1,0,0,10),
 (297,'138','MOUNTAIN DEW 12OZ',12,22,'2012-08-06 03:37:00',9,1,0,0,12),
 (298,'84','COOKIE CRUNCH',6,3,'2012-08-06 03:37:10',9,1,0,0,6),
 (299,'451','GOODY GULP CHOCO DRINK',22,1,'2012-08-06 03:37:34',9,1,0,0,22),
 (300,'93','DYNAMIC CHOCO',2,25,'2012-08-06 03:37:38',9,3,0,0,2),
 (301,'93','DYNAMIC CHOCO',2,10,'2012-08-06 03:38:18',9,3,0,0,2),
 (302,'215','YEMAS',1,97,'2012-08-06 03:38:32',9,1,0,0,1);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (303,'336','PEANUTS',5,24,'2012-08-06 03:38:46',9,1,0,0,5),
 (304,'350','SAFARI',8,1,'2012-08-06 03:38:56',9,3,0,0,8),
 (305,'354','SOFTDRINKS IN CUPS',10,124,'2012-08-06 03:39:07',9,1,0,0,10),
 (306,'222','PEPSI 500ML',24,11,'2012-08-06 03:39:18',9,6,0,0,24),
 (307,'134','7-UP 500ML',24,6,'2012-08-06 03:39:29',9,1,0,0,24),
 (308,'139','MOUNTAIN DEW 500ML',24,6,'2012-08-06 03:39:37',9,1,0,0,24),
 (309,'448','TROPICANA TWISTER ORANGE',24,1,'2012-08-06 03:39:45',9,1,0,0,24),
 (310,'130','PREMIER WATER 350 ML',12,19,'2012-08-06 03:40:04',9,1,0,0,12),
 (311,'129','PREMIER  WATER500 ML',14,24,'2012-08-06 03:40:14',9,1,0,0,14),
 (312,'353','GATORADE',37,2,'2012-08-06 03:40:20',9,1,0,0,37),
 (313,'302','SPAGHETTI W/BREAD',15,1,'2012-08-06 03:40:34',9,4,0,0,15),
 (314,'309','HAM AND EGG',20,3,'2012-08-06 03:40:47',9,4,0,0,20),
 (315,'308','CHEESEBURGER',25,7,'2012-08-06 03:41:01',9,4,0,0,25),
 (316,'306','TOCINO',10,24,'2012-08-06 03:41:11',9,4,0,0,10);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (317,'296','TORTA',5,12,'2012-08-06 03:41:19',9,1,9,0,5),
 (318,'295','MAMMOON',3,13,'2012-08-06 03:41:36',9,10,5.85,0,3),
 (319,'294','CINNAMON ROLL',3,10,'2012-08-06 03:41:51',9,10,4.5,0,3),
 (320,'305','MEATBREAD',15,8,'2012-08-06 03:41:59',9,10,18,0,15),
 (321,'312','PIZZA BREAD',10,19,'2012-08-06 03:42:08',9,10,28.5,0,10),
 (322,'342','EGG SANDWICH',10,7,'2012-08-06 03:42:18',9,4,0,0,10),
 (323,'369','COMBO',7,10,'2012-08-06 03:42:30',9,4,0,0,7),
 (324,'310','CHAMPORADO',8,6,'2012-08-06 03:42:37',9,4,0,0,8),
 (325,'115','LIPTON LEMON / RED 450ML',24,5,'2012-08-06 03:42:49',9,1,0,0,24),
 (326,'300','BURGER',20,9,'2012-08-06 03:42:58',13,4,0,0,20),
 (327,'307','SANDWICH',15,1,'2012-08-06 03:48:20',13,4,0,0,15),
 (328,'299','SIOPAO',20,2,'2012-08-06 03:48:24',13,10,6,0,20),
 (329,'301','SPAGHETTI',15,5,'2012-08-06 03:48:36',13,4,0,0,15),
 (330,'58','KENDIMENT',1,15,'2012-08-06 03:48:43',13,1,0,0,1);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (331,'59','KOPIKO CANDY',1,4,'2012-08-06 03:48:51',13,3,0,0,1),
 (332,'105','HAPPY PEANUTS',1.5,6,'2012-08-06 03:48:59',13,1,0,0,1.5),
 (333,'55','FLAT TOPS',3,2,'2012-08-06 03:49:09',13,1,0,0,3),
 (334,'357','NISSIN STICK',6,1,'2012-08-06 03:49:23',13,1,0,0,6),
 (335,'97','HANSEL CHOCOLATE',6,3,'2012-08-06 03:49:50',13,1,0,0,6),
 (336,'65','MILKITA LOLLIPOP',6,2,'2012-08-06 03:50:04',13,1,0,0,6),
 (337,'53','NESCAFE 3-IN-1 W/O HOT WATER',7,2,'2012-08-06 03:50:15',13,3,0,0,7),
 (338,'210','NESCAFE 3N1 W/HOT WATER',10,1,'2012-08-06 03:55:00',1000,3,0,0,10),
 (339,'354','SOFTDRINKS IN CUPS',10,57,'2012-08-06 03:52:32',13,1,0,0,10),
 (340,'130','PREMIER WATER 350 ML',12,9,'2012-08-06 03:56:00',13,1,0,0,12),
 (341,'129','PREMIER  WATER500 ML',14,17,'2012-08-06 03:56:10',13,1,0,0,14),
 (342,'360','BUKO JUICE',10,22,'2012-08-06 03:56:14',13,1,33,0,10),
 (343,'140','PEPSI 8OZ',10,18,'2012-08-06 03:56:27',13,1,0,0,10);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (344,'138','MOUNTAIN DEW 12OZ',12,7,'2012-08-06 03:56:53',13,1,0,0,12),
 (345,'49','LUCKY ME BIG',30,1,'2012-08-06 03:57:03',13,3,0,0,30),
 (346,'115','LIPTON LEMON / RED 450ML',24,1,'2012-08-06 03:57:50',13,1,0,0,24),
 (347,'139','MOUNTAIN DEW 500ML',24,3,'2012-08-06 03:58:46',13,1,0,0,24),
 (348,'134','7-UP 500ML',24,3,'2012-08-06 03:58:55',13,1,0,0,24),
 (349,'136','MIRINDA 500ML',24,2,'2012-08-06 03:59:04',13,1,0,0,24),
 (350,'78','CLOUD 9',8,4,'2012-08-06 03:59:14',13,3,0,0,8),
 (351,'359','SNOW BEAR',1,30,'2012-08-06 03:59:27',13,1,0,0,1),
 (352,'302','SPAGHETTI W/BREAD',15,1,'2012-08-06 03:59:39',13,4,0,0,15),
 (353,'309','HAM AND EGG',20,3,'2012-08-06 03:59:48',13,4,0,0,20),
 (354,'308','CHEESEBURGER',25,8,'2012-08-06 03:59:59',13,4,0,0,25),
 (355,'295','MAMMOON',3,15,'2012-08-06 04:00:09',13,10,6.75,0,3),
 (356,'294','CINNAMON ROLL',3,10,'2012-08-06 04:00:17',13,10,4.5,0,3),
 (357,'305','MEATBREAD',15,4,'2012-08-06 04:00:26',13,10,9,0,15);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (358,'454','CHIFFON W/ICING',10,15,'2012-08-06 04:00:33',13,1,0,0,10),
 (359,'306','TOCINO',10,15,'2012-08-06 04:00:54',13,4,0,0,10),
 (360,'312','PIZZA BREAD',10,10,'2012-08-06 04:01:11',13,10,15,0,10),
 (361,'452','CHIFFON W/CHEESE',7,6,'2012-08-06 04:01:24',13,1,0,0,7),
 (362,'342','EGG SANDWICH',10,6,'2012-08-06 04:01:35',13,4,0,0,10),
 (363,'310','CHAMPORADO',8,6,'2012-08-06 04:01:43',13,4,0,0,8),
 (364,'307','SANDWICH',15,2,'2012-08-06 04:27:13',14,4,0,0,15),
 (365,'300','BURGER',20,9,'2012-08-06 04:27:15',14,4,0,0,20),
 (366,'299','SIOPAO',20,14,'2012-08-06 04:27:21',14,10,42,0,20),
 (367,'301','SPAGHETTI',15,6,'2012-08-06 04:27:25',14,4,0,0,15),
 (368,'70','WHITE RABBIT',1,22,'2012-08-06 04:27:30',14,1,0,0,1),
 (369,'105','HAPPY PEANUTS',1.5,10,'2012-08-06 04:27:36',14,1,0,0,1.5),
 (370,'99','MAGIC CREAM CHOCOLATE',6,7,'2012-08-06 04:27:42',14,1,0,0,6),
 (371,'100','PRESTO CREAM',6,3,'2012-08-06 04:27:48',14,1,0,0,6);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (372,'78','CLOUD 9',8,4,'2012-08-06 04:27:54',14,3,0,0,8),
 (373,'54','BIG BANG',8,2,'2012-08-06 04:28:03',14,1,0,0,8),
 (374,'90','CREAM O BISCUIT',8,1,'2012-08-06 04:28:07',14,1,0,0,8),
 (375,'57','JELLY ACE',2,2,'2012-08-06 04:28:13',14,3,0,0,2),
 (376,'95','FAST BREAK',6,2,'2012-08-06 04:28:20',14,1,0,0,6),
 (377,'97','HANSEL CHOCOLATE',6,5,'2012-08-06 04:28:24',14,1,0,0,6),
 (378,'358','CHOCO MUCHO',8,5,'2012-08-06 04:28:31',14,1,0,0,8),
 (379,'55','FLAT TOPS',3,10,'2012-08-06 04:28:35',14,1,0,0,3),
 (380,'71','WHY NUTS MILK',2,2,'2012-08-06 04:28:40',14,3,0,0,2),
 (381,'93','DYNAMIC CHOCO',2,2,'2012-08-06 04:28:44',14,3,0,0,2),
 (382,'66','NIPS TIE',4,1,'2012-08-06 04:28:48',14,1,0,0,4),
 (383,'76','CHUBBY CHOCO CHOEY',2,4,'2012-08-06 04:28:51',14,1,0,0,2),
 (384,'439','SOFT CANDY',1,46,'2012-08-06 04:29:16',14,1,0,0,1),
 (385,'359','SNOW BEAR',1,36,'2012-08-06 04:30:14',14,1,0,0,1),
 (386,'85','CHOCO CRUNCHES',6,1,'2012-08-06 04:30:20',14,1,0,0,6);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (387,'140','PEPSI 8OZ',10,4,'2012-08-06 04:30:25',14,1,0,0,10),
 (388,'138','MOUNTAIN DEW 12OZ',12,15,'2012-08-06 04:30:30',14,1,0,0,12),
 (389,'451','GOODY GULP CHOCO DRINK',22,1,'2012-08-06 04:30:35',14,1,0,0,22),
 (390,'129','PREMIER  WATER500 ML',14,22,'2012-08-06 04:30:46',14,1,0,0,14),
 (391,'130','PREMIER WATER 350 ML',12,17,'2012-08-06 04:30:51',14,1,0,0,12),
 (392,'115','LIPTON LEMON / RED 450ML',24,2,'2012-08-06 04:30:57',14,1,0,0,24),
 (393,'139','MOUNTAIN DEW 500ML',24,7,'2012-08-06 04:32:10',14,1,0,0,24),
 (394,'134','7-UP 500ML',24,5,'2012-08-06 04:32:53',14,1,0,0,24),
 (395,'136','MIRINDA 500ML',24,4,'2012-08-06 04:33:02',14,1,0,0,24),
 (396,'448','TROPICANA TWISTER ORANGE',24,2,'2012-08-06 04:33:12',14,1,0,0,24),
 (397,'353','GATORADE',37,1,'2012-08-06 04:33:17',14,1,0,0,37),
 (398,'354','SOFTDRINKS IN CUPS',10,115,'2012-08-06 04:33:23',14,1,0,0,10),
 (400,'24','KOPIKO W/HOT WATER',10,2,'2012-08-06 04:35:26',1000,3,0,0,10);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (401,'302','SPAGHETTI W/BREAD',15,1,'2012-08-06 04:33:35',14,4,0,0,15),
 (402,'309','HAM AND EGG',20,3,'2012-08-06 04:35:57',14,4,0,0,20),
 (403,'308','CHEESEBURGER',25,8,'2012-08-06 04:36:02',14,4,0,0,25),
 (404,'305','MEATBREAD',15,8,'2012-08-06 04:36:06',14,10,18,0,15),
 (405,'294','CINNAMON ROLL',3,10,'2012-08-06 04:36:10',14,10,4.5,0,3),
 (406,'312','PIZZA BREAD',10,10,'2012-08-06 04:36:14',14,10,15,0,10),
 (407,'316','BANANA CAKE SLICE',6,4,'2012-08-06 04:36:35',14,10,3.6,0,6),
 (408,'336','PEANUTS',5,12,'2012-08-06 04:36:41',14,1,0,0,5),
 (409,'342','EGG SANDWICH',10,4,'2012-08-06 04:36:45',14,4,0,0,10),
 (410,'310','CHAMPORADO',8,7,'2012-08-06 04:36:48',14,4,0,0,8),
 (411,'115','LIPTON LEMON / RED 450ML',24,2,'2012-08-06 04:36:51',14,1,0,0,24),
 (412,'99','MAGIC CREAM CHOCOLATE',6,1,'2012-08-06 04:37:10',15,1,0,0,6),
 (413,'98','HIRO',6,1,'2012-08-06 04:39:04',15,1,0,0,6),
 (414,'90','CREAM O BISCUIT',8,4,'2012-08-06 04:39:08',15,1,0,0,8);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (415,'105','HAPPY PEANUTS',1.5,10,'2012-08-06 04:39:12',15,1,0,0,1.5),
 (416,'54','BIG BANG',8,1,'2012-08-06 04:39:16',15,1,0,0,8),
 (417,'100','PRESTO CREAM',6,3,'2012-08-06 04:39:21',15,1,0,0,6),
 (418,'359','SNOW BEAR',1,13,'2012-08-06 04:39:25',15,1,0,0,1),
 (419,'358','CHOCO MUCHO',8,1,'2012-08-06 04:39:31',15,1,0,0,8),
 (420,'97','HANSEL CHOCOLATE',6,4,'2012-08-06 04:39:34',15,1,0,0,6),
 (421,'140','PEPSI 8OZ',10,4,'2012-08-06 04:39:40',15,1,0,0,10),
 (422,'133','7-UP 8OZ',10,6,'2012-08-06 04:39:46',15,1,0,0,10),
 (423,'138','MOUNTAIN DEW 12OZ',12,5,'2012-08-06 04:39:51',15,1,0,0,12),
 (424,'129','PREMIER  WATER500 ML',14,14,'2012-08-06 04:39:55',15,1,0,0,14),
 (425,'220','CHOCOLAIT MILK 250ML',24,8,'2012-08-06 04:40:08',15,6,0,0,24),
 (426,'115','LIPTON LEMON / RED 450ML',24,6,'2012-08-06 04:40:15',15,1,0,0,24),
 (427,'55','FLAT TOPS',3,12,'2012-08-06 04:40:18',15,1,0,0,3),
 (428,'222','PEPSI 500ML',24,1,'2012-08-06 04:40:22',15,6,0,0,24);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (429,'134','7-UP 500ML',24,3,'2012-08-06 04:40:28',15,1,0,0,24),
 (430,'139','MOUNTAIN DEW 500ML',24,10,'2012-08-06 04:40:32',15,1,0,0,24),
 (431,'96','GRAHAM',6,5,'2012-08-06 04:40:37',15,1,0,0,6),
 (432,'439','SOFT CANDY',1,12,'2012-08-06 04:40:42',15,1,0,0,1),
 (433,'76','CHUBBY CHOCO CHOEY',2,3,'2012-08-06 04:40:46',15,1,0,0,2),
 (434,'59','KOPIKO CANDY',1,11,'2012-08-06 04:40:53',15,3,0,0,1),
 (435,'308','CHEESEBURGER',25,2,'2012-08-06 04:40:57',15,4,0,0,25),
 (436,'300','BURGER',20,3,'2012-08-06 04:41:04',15,4,0,0,20),
 (437,'302','SPAGHETTI W/BREAD',15,1,'2012-08-06 04:41:17',15,4,0,0,15),
 (438,'301','SPAGHETTI',15,3,'2012-08-06 04:41:21',15,4,0,0,15),
 (439,'307','SANDWICH',15,1,'2012-08-06 04:41:25',15,4,0,0,15),
 (440,'309','HAM AND EGG',20,1,'2012-08-06 04:41:30',15,4,0,0,20),
 (441,'294','CINNAMON ROLL',3,10,'2012-08-06 04:41:34',15,10,4.5,0,3),
 (442,'305','MEATBREAD',15,10,'2012-08-06 04:41:37',15,10,22.5,0,15);
INSERT INTO `sales` (`id`,`product_id`,`product_name`,`price`,`qty_sold`,`date_added`,`cashierid`,`cat_id`,`commission`,`remitance`,`remit_cost`) VALUES 
 (443,'299','SIOPAO',20,10,'2012-08-06 04:41:40',15,10,30,0,20),
 (444,'312','PIZZA BREAD',10,20,'2012-08-06 04:41:43',15,10,30,0,10),
 (445,'338','BANANA CUE',8,12,'2012-08-06 04:41:48',15,4,0,0,8);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;


--
-- Definition of table `stock_in`
--

DROP TABLE IF EXISTS `stock_in`;
CREATE TABLE `stock_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_num` varchar(200) DEFAULT NULL,
  `prod_name` varchar(200) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `cashier_name` varchar(100) DEFAULT NULL,
  `cashier_id` varchar(100) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` (`id`,`prod_num`,`prod_name`,`qty`,`amount`,`date_added`,`cashier_name`,`cashier_id`,`remarks`,`branch_id`,`branch`,`status`) VALUES 
 (1,'208','1/2 CROSSWISE',2,8,'2012-11-06 05:05:40','0','0','',0,'main',0),
 (2,'316','BANANA CAKE SLICE',2,6,'2012-11-06 05:05:40','0','0','',0,'main',0),
 (3,'381','BOND PAPER SHORT',2,0.75,'2012-11-06 05:05:40','0','0','',0,'main',0),
 (4,'431','B702 SHARPENER',2,15,'2012-11-06 05:05:40','0','0','',0,'main',0),
 (5,'194','AA batteries',2,100,'2012-12-17 01:08:44','0','0','',0,'main',0),
 (6,'24','Apo Island',3,950,'2012-12-17 01:08:44','0','0','',0,'main',0),
 (7,'13','camera-Apo Island',4,50,'2012-12-17 01:08:44','0','0','',0,'main',0),
 (8,'17','camera-Oslob',4,200,'2012-12-17 01:08:44','0','0','',0,'main',0),
 (9,'68','2nd Discover Scuba Dive Sea',5,2200,'2012-12-17 01:08:55','0','0','',0,'main',0),
 (10,'68','2nd Discover Scuba Dive Sea',2,2200,'2012-12-17 01:13:54','8','8','',0,'main',0),
 (11,'194','AA batteries',1000,100,'2012-12-17 09:44:14','8','8','',0,'main',0),
 (12,'194','AA batteries',100,100,'2012-12-17 09:49:41','8','8','',0,'main',0);
/*!40000 ALTER TABLE `stock_in` ENABLE KEYS */;


--
-- Definition of table `stock_in_main`
--

DROP TABLE IF EXISTS `stock_in_main`;
CREATE TABLE `stock_in_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(100) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL,
  `total_cost` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in_main`
--

/*!40000 ALTER TABLE `stock_in_main` DISABLE KEYS */;
INSERT INTO `stock_in_main` (`id`,`ref_no`,`item_count`,`total_cost`,`date_added`,`branch`,`branch_id`,`user_name`,`user_id`,`status`) VALUES 
 (1,'0000000002',4,59.5,'2012-11-06 05:05:40','main',0,'0',0,0),
 (2,'0000000003',4,4050,'2012-12-17 01:08:44','main',0,'0',0,0),
 (3,'0000000003',1,11000,'2012-12-17 01:08:55','main',0,'0',0,0),
 (4,'0000000004',1,4400,'2012-12-17 01:13:54','main',0,'8',8,0),
 (5,'0000000004',1,100000,'2012-12-17 09:44:14','main',0,'8',8,0),
 (6,'0000000005',1,10000,'2012-12-17 09:49:41','main',0,'8',8,0);
/*!40000 ALTER TABLE `stock_in_main` ENABLE KEYS */;


--
-- Definition of table `stock_out`
--

DROP TABLE IF EXISTS `stock_out`;
CREATE TABLE `stock_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_num` varchar(200) DEFAULT NULL,
  `prod_name` varchar(200) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `cashier_name` varchar(100) DEFAULT NULL,
  `cashier_id` varchar(100) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
INSERT INTO `stock_out` (`id`,`prod_num`,`prod_name`,`qty`,`amount`,`date_added`,`cashier_name`,`cashier_id`,`remarks`,`branch_id`,`branch`,`status`) VALUES 
 (1,'208','1/2 CROSSWISE',1,8,'2012-11-06 04:26:47','0','0','',NULL,NULL,0),
 (2,'436','1/8 ILLUSTRATION BOARD',5,7,'2012-11-06 04:26:47','0','0','',NULL,NULL,0),
 (3,'208','1/2 CROSSWISE',2,8,'2012-11-06 05:05:53','0','0','',0,'main',0),
 (4,'195','AAA batteries',4,130,'2012-12-17 01:09:07','0','0','',0,'main',0),
 (5,'68','2nd Discover Scuba Dive Sea',2,2200,'2012-12-17 09:45:24','8','8','',0,'main',0),
 (6,'194','AA batteries',1000,100,'2012-12-17 09:45:24','8','8','',0,'main',0);
/*!40000 ALTER TABLE `stock_out` ENABLE KEYS */;


--
-- Definition of table `stock_out_main`
--

DROP TABLE IF EXISTS `stock_out_main`;
CREATE TABLE `stock_out_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(100) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL,
  `total_cost` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out_main`
--

/*!40000 ALTER TABLE `stock_out_main` DISABLE KEYS */;
INSERT INTO `stock_out_main` (`id`,`ref_no`,`item_count`,`total_cost`,`date_added`,`branch`,`branch_id`,`user_name`,`user_id`,`status`) VALUES 
 (1,'0000000001',2,43,'2012-11-06 04:26:47','main',0,'0',0,0),
 (2,'0000000002',1,16,'2012-11-06 05:05:53','main',0,'0',0,0),
 (3,'0000000003',1,520,'2012-12-17 01:09:07','main',0,'0',0,0),
 (4,'0000000004',2,104400,'2012-12-17 09:45:24','main',0,'8',8,0);
/*!40000 ALTER TABLE `stock_out_main` ENABLE KEYS */;


--
-- Definition of table `system_date`
--

DROP TABLE IF EXISTS `system_date`;
CREATE TABLE `system_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_date`
--

/*!40000 ALTER TABLE `system_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_date` ENABLE KEYS */;


--
-- Definition of table `table_types`
--

DROP TABLE IF EXISTS `table_types`;
CREATE TABLE `table_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_type` varchar(100) DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_types`
--

/*!40000 ALTER TABLE `table_types` DISABLE KEYS */;
INSERT INTO `table_types` (`id`,`table_type`,`percentage`) VALUES 
 (1,'NORMAL',0),
 (3,'SPECIAL',10);
/*!40000 ALTER TABLE `table_types` ENABLE KEYS */;


--
-- Definition of table `tables`
--

DROP TABLE IF EXISTS `tables`;
CREATE TABLE `tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `rate_type` varchar(100) DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tables`
--

/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` (`id`,`table_name`,`rate`,`rate_type`,`percentage`) VALUES 
 (1,'1',1000,'NORMAL',0),
 (2,'2',1000,'NORMAL',0),
 (3,'3',1200,'NORMAL',0),
 (4,'4',1500,'NORMAL',0),
 (5,'5',1600,'NORMAL',0),
 (6,'6',700,'NORMAL',0),
 (7,'9',5000,'NORMAL',0);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;


--
-- Definition of table `uom`
--

DROP TABLE IF EXISTS `uom`;
CREATE TABLE `uom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uom` varchar(100) DEFAULT NULL,
  `uom_amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom`
--

/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` (`id`,`uom`,`uom_amount`) VALUES 
 (1,'box',11),
 (2,'pack',15);
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(20) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`user_code`,`user_name`,`password`,`user_level`,`remarks`,`created`,`modified`) VALUES 
 (8,'admin','admin','admin',1,NULL,'2012-07-03 17:09:17',NULL),
 (9,'Elma','elma','elma',0,NULL,'2012-07-03 17:09:17',NULL),
 (13,'Tata','tata','tata',0,NULL,'2012-07-10 13:34:44',NULL),
 (14,'Nila','nila','nila',0,NULL,'2012-07-10 13:34:59',NULL),
 (15,'Marilyn','marilyn','marilyn',0,NULL,'2012-07-10 13:35:39',NULL),
 (16,'BallField','mila','mila',0,NULL,'2012-07-10 13:35:54',NULL),
 (17,'Annie','annie','annie',0,NULL,'2012-07-16 10:32:02',NULL),
 (18,'cashier','cashier','cashier',0,NULL,'2012-08-21 09:01:57',NULL),
 (19,'front','front','front',5,NULL,'2012-10-29 20:23:37',NULL),
 (21,'top','top','top',6,NULL,'2012-10-29 20:27:33',NULL),
 (22,'Ronald Pascua','waiter','waiter',7,NULL,'2012-12-13 11:57:58',NULL),
 (23,'Juan Dela Cruz','waiter2','waiter2',7,NULL,'2012-12-13 12:43:35',NULL),
 (24,'top cashier2','top2','top2',6,NULL,'2012-12-14 11:41:12',NULL),
 (25,'Maria Marcidez','front2','front2',5,NULL,'2012-12-14 18:34:31',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Create schema db_bir
--

CREATE DATABASE IF NOT EXISTS db_bir;
USE db_bir;

--
-- Definition of table `bir_purchases_or_details`
--

DROP TABLE IF EXISTS `bir_purchases_or_details`;
CREATE TABLE `bir_purchases_or_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bir_purchases_or_id` int(11) DEFAULT NULL,
  `dscr` varchar(200) DEFAULT NULL,
  `lookup_code` varchar(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `prc` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `disc_type` int(11) DEFAULT '-1',
  `is_vat` tinyint(4) DEFAULT '1',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_purchases_or_details`
--

/*!40000 ALTER TABLE `bir_purchases_or_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bir_purchases_or_details` ENABLE KEYS */;


--
-- Definition of table `bir_purchases_ors`
--

DROP TABLE IF EXISTS `bir_purchases_ors`;
CREATE TABLE `bir_purchases_ors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bir_purchases_session_id` int(11) DEFAULT NULL,
  `issuance_refid` int(11) DEFAULT NULL,
  `orno` varchar(500) DEFAULT NULL,
  `trn` varchar(20) DEFAULT NULL,
  `leu_orno` varchar(20) DEFAULT NULL,
  `tendered` double DEFAULT NULL,
  `disc_by_total` double DEFAULT '0',
  `sc_id` varchar(20) DEFAULT '',
  `disc_type` int(11) DEFAULT NULL,
  `paymt_type` int(11) DEFAULT '0',
  `cust_addr` varchar(200) DEFAULT 'blank',
  `cust_tin` varchar(20) DEFAULT 'blank',
  `customer_name` varchar(100) DEFAULT 'cash',
  `clerk_name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orno` (`orno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_purchases_ors`
--

/*!40000 ALTER TABLE `bir_purchases_ors` DISABLE KEYS */;
/*!40000 ALTER TABLE `bir_purchases_ors` ENABLE KEYS */;


--
-- Definition of table `bir_purchases_sessions`
--

DROP TABLE IF EXISTS `bir_purchases_sessions`;
CREATE TABLE `bir_purchases_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchaser_id` int(11) DEFAULT NULL,
  `purchaser_alias` varchar(100) DEFAULT NULL,
  `purchaser_name` varchar(200) DEFAULT NULL,
  `entity_name` varchar(200) DEFAULT NULL,
  `cashcount` double DEFAULT '0',
  `addtl_cash` double DEFAULT '0',
  `logout` tinyint(4) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_purchases_sessions`
--

/*!40000 ALTER TABLE `bir_purchases_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bir_purchases_sessions` ENABLE KEYS */;


--
-- Definition of table `bir_sales_card_payments`
--

DROP TABLE IF EXISTS `bir_sales_card_payments`;
CREATE TABLE `bir_sales_card_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bir_sales_or_id` int(11) DEFAULT NULL,
  `supported_bank_refid` int(11) DEFAULT NULL,
  `supported_bank_name` varchar(100) DEFAULT NULL,
  `card_owner` varchar(100) DEFAULT NULL,
  `card_num` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `approval_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bir_sales_or_id` (`bir_sales_or_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_sales_card_payments`
--

/*!40000 ALTER TABLE `bir_sales_card_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bir_sales_card_payments` ENABLE KEYS */;


--
-- Definition of table `bir_sales_or_details`
--

DROP TABLE IF EXISTS `bir_sales_or_details`;
CREATE TABLE `bir_sales_or_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bir_sales_or_id` varchar(100) DEFAULT NULL,
  `issuance_detail_refid` int(11) DEFAULT NULL,
  `dscr` varchar(200) DEFAULT NULL,
  `lookup_code` varchar(20) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `generic` varchar(100) DEFAULT NULL,
  `catalog` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `prc` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `disc_type` int(11) DEFAULT '-1',
  `is_vat` tinyint(4) DEFAULT '1',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_sales_or_details`
--

/*!40000 ALTER TABLE `bir_sales_or_details` DISABLE KEYS */;
INSERT INTO `bir_sales_or_details` (`id`,`bir_sales_or_id`,`issuance_detail_refid`,`dscr`,`lookup_code`,`brand`,`generic`,`catalog`,`category`,`qty`,`prc`,`disc`,`disc_type`,`is_vat`,`status`) VALUES 
 (1,'1',1,'Homemade muesli with milk and fruit','247','','','','',1,150,0,-1,1,0),
 (2,'1',1,'Seasonal fruit platter','249','','','','',1,70,0,-1,1,0),
 (3,'2',2,'Siquijor','25','','','','',1,150,0,-1,1,0);
/*!40000 ALTER TABLE `bir_sales_or_details` ENABLE KEYS */;


--
-- Definition of table `bir_sales_ors`
--

DROP TABLE IF EXISTS `bir_sales_ors`;
CREATE TABLE `bir_sales_ors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issuance_refid` int(11) DEFAULT NULL,
  `orno` varchar(500) DEFAULT NULL,
  `trn` varchar(20) DEFAULT NULL,
  `leu_orno` varchar(20) DEFAULT NULL,
  `tendered` double DEFAULT NULL,
  `disc_by_total` double DEFAULT '0',
  `sc_id` varchar(20) DEFAULT '',
  `disc_type` int(11) DEFAULT NULL,
  `paymt_type` varchar(100) DEFAULT NULL,
  `cust_addr` varchar(200) DEFAULT 'blank',
  `cust_tin` varchar(20) DEFAULT 'blank',
  `customer_name` varchar(100) DEFAULT 'cash',
  `clerk_name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `terminal` varchar(100) DEFAULT NULL,
  `cashier_name` varchar(200) DEFAULT NULL,
  `entity_name` varchar(200) DEFAULT NULL,
  `check_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orno` (`orno`),
  UNIQUE KEY `trn` (`trn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_sales_ors`
--

/*!40000 ALTER TABLE `bir_sales_ors` DISABLE KEYS */;
INSERT INTO `bir_sales_ors` (`id`,`issuance_refid`,`orno`,`trn`,`leu_orno`,`tendered`,`disc_by_total`,`sc_id`,`disc_type`,`paymt_type`,`cust_addr`,`cust_tin`,`customer_name`,`clerk_name`,`status`,`created`,`modified`,`modified_by`,`terminal`,`cashier_name`,`entity_name`,`check_number`) VALUES 
 (1,0,'1','1','',220,0,'',-1,'','','','','',0,'2012-12-17 22:12:18','2012-12-17 22:12:18','','','top','Synapse Software  Technologies',''),
 (2,0,'2','2','',950,0,'',-1,'','','','','',0,'2012-12-17 22:12:52','2012-12-17 22:12:52','','','front','Synapse Software Technologies','');
/*!40000 ALTER TABLE `bir_sales_ors` ENABLE KEYS */;


--
-- Definition of table `bir_sales_transaction_logs`
--

DROP TABLE IF EXISTS `bir_sales_transaction_logs`;
CREATE TABLE `bir_sales_transaction_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_entity` varchar(200) DEFAULT NULL,
  `user_alias` varchar(100) DEFAULT NULL,
  `module_touched` varchar(100) DEFAULT NULL,
  `activity_performed` varchar(500) DEFAULT NULL,
  `terminal` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_sales_transaction_logs`
--

/*!40000 ALTER TABLE `bir_sales_transaction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bir_sales_transaction_logs` ENABLE KEYS */;


--
-- Definition of table `v_acct_details`
--

DROP TABLE IF EXISTS `v_acct_details`;
CREATE TABLE `v_acct_details` (
  `id` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `acct_masters_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(35) DEFAULT NULL,
  `amount` decimal(9,2) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `acct_master_name` varchar(306) DEFAULT NULL,
  `course_levels_id` int(11) DEFAULT NULL,
  `v_acct_masters_id` int(11) DEFAULT NULL,
  `school_years_id` int(11) DEFAULT NULL,
  `is_fixed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_acct_details`
--

/*!40000 ALTER TABLE `v_acct_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_acct_details` ENABLE KEYS */;


--
-- Definition of table `v_acct_masters`
--

DROP TABLE IF EXISTS `v_acct_masters`;
CREATE TABLE `v_acct_masters` (
  `id` int(11) DEFAULT NULL,
  `acct_types_id` int(11) DEFAULT NULL,
  `course_levels_id` int(11) DEFAULT NULL,
  `name` varchar(306) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_acct_masters`
--

/*!40000 ALTER TABLE `v_acct_masters` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_acct_masters` ENABLE KEYS */;


--
-- Definition of table `v_acct_types`
--

DROP TABLE IF EXISTS `v_acct_types`;
CREATE TABLE `v_acct_types` (
  `acct_classes_id` int(11) DEFAULT NULL,
  `acct_class_name` varchar(255) DEFAULT NULL,
  `acct_code` smallint(5) DEFAULT NULL,
  `acct_name` varchar(255) DEFAULT NULL,
  `short_name` varchar(35) DEFAULT NULL,
  `sort` smallint(1) DEFAULT NULL,
  `course_levels_id` int(11) DEFAULT NULL,
  `course_level_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_acct_types`
--

/*!40000 ALTER TABLE `v_acct_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_acct_types` ENABLE KEYS */;


--
-- Definition of table `v_all_student`
--

DROP TABLE IF EXISTS `v_all_student`;
CREATE TABLE `v_all_student` (
  `grd_level` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `suffix` varchar(5) DEFAULT NULL,
  `address_barangay` varchar(50) DEFAULT NULL,
  `address_city_town` varchar(50) DEFAULT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL,
  `guardian` varchar(150) DEFAULT NULL,
  `guardian_relation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_all_student`
--

/*!40000 ALTER TABLE `v_all_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_all_student` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
