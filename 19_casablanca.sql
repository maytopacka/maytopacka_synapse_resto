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
-- Create schema db_pos_casablanca
--

CREATE DATABASE IF NOT EXISTS db_pos_casablanca;
USE db_pos_casablanca;

--
-- Definition of table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_drawer`
--

/*!40000 ALTER TABLE `cash_drawer` DISABLE KEYS */;
INSERT INTO `cash_drawer` (`id`,`cashier_session_id`,`user_name`,`date_added`,`cash_in`,`cash_out`,`addtl_cash`) VALUES 
 (1,1,'cashier','2012-12-19 03:46:50',100,200,0),
 (2,2,'cashier','2012-12-19 00:00:00',100,NULL,NULL),
 (3,3,'cashier','2012-12-20 00:00:00',100,NULL,NULL),
 (4,4,'front','2012-12-20 00:00:00',1000,NULL,NULL),
 (5,5,'cashier','2012-12-21 00:00:00',200,NULL,NULL),
 (6,6,'cashier','2012-12-26 00:00:00',200,NULL,NULL);
/*!40000 ALTER TABLE `cash_drawer` ENABLE KEYS */;


--
-- Definition of table `cash_in`
--

DROP TABLE IF EXISTS `cash_in`;
CREATE TABLE `cash_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashier_name` varchar(100) DEFAULT NULL,
  `cashier_session_id` int(11) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `cash_count` double DEFAULT NULL,
  `additional_cash` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier_sessions`
--

/*!40000 ALTER TABLE `cashier_sessions` DISABLE KEYS */;
INSERT INTO `cashier_sessions` (`id`,`cashier_name`,`login_status`,`cash_count`,`additional_cash`,`created`,`modified`,`login_time`,`logout_time`,`user_level`) VALUES 
 (1,'cashier',0,0,0,'2012-12-19 00:00:00','2012-12-19 00:00:00','2012-12-19 03:46:43','2012-12-19 03:46:50',0),
 (2,'cashier',1,0,0,'2012-12-19 00:00:00','2012-12-19 00:00:00','2012-12-19 04:27:14',NULL,0),
 (3,'cashier',1,0,0,'2012-12-20 00:00:00','2012-12-20 00:00:00','2012-12-20 10:41:59',NULL,0),
 (4,'front',1,0,0,'2012-12-20 00:00:00','2012-12-20 00:00:00','2012-12-20 11:32:37',NULL,5),
 (5,'cashier',1,0,0,'2012-12-21 00:00:00','2012-12-21 00:00:00','2012-12-21 10:51:37',NULL,0),
 (6,'cashier',1,NULL,NULL,'2012-12-26 00:00:00','2012-12-26 00:00:00','2012-12-26 12:24:46',NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`,`cat_num`,`cat_name`,`img_path`) VALUES 
 (1,1,'Breakfast Meals','breakfast_meal.jpg'),
 (2,2,'Coffee & Tea','Coffee & Tea.jpg'),
 (3,3,'Fruit Juices & Shakes','Fruit Juices & Shakes.jpg'),
 (4,4,'Starters','Starters.jpg'),
 (5,5,'Snacks & Sandwiches','Snacks & Sandwiches.jpg'),
 (6,6,'Soups','Soups.jpg'),
 (7,7,'Salads','Salads.jpg'),
 (8,8,'Special Oven Potato Dishes','Special Oven Potato Dishes.jpg'),
 (9,9,'Texas-Mexican Cuisine','Texas-Mexican Cuisine.jpg'),
 (10,10,'Pasta','Pasta.jpg'),
 (11,11,'Vegetarian','Vegetarian.jpg'),
 (12,12,'Chicken','Chicken.jpg'),
 (13,13,'Seafood','Seafood.jpg'),
 (14,14,'Pork & Beef','Pork & Beef.jpg'),
 (16,16,'Filipino Favorites','Filipino Favorites.jpg'),
 (17,17,'Desserts','Desserts.jpg'),
 (18,18,'Softdrinks','Softdrinks.jpg'),
 (19,19,'Beers','Beers.jpg'),
 (20,20,'Liquors','Liquors.jpg'),
 (21,21,'Mixed Drinks','Mixed Drinks.jpg');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_type`
--

/*!40000 ALTER TABLE `category_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_type` ENABLE KEYS */;


--
-- Definition of table `ci_no`
--

DROP TABLE IF EXISTS `ci_no`;
CREATE TABLE `ci_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ci_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_no`
--

/*!40000 ALTER TABLE `ci_no` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `user_name` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `date_payed` datetime DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_charges`
--

/*!40000 ALTER TABLE `customer_charges` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table_details_assembly`
--

/*!40000 ALTER TABLE `customer_table_details_assembly` DISABLE KEYS */;
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
  `printing_assembly` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_tables_details`
--

/*!40000 ALTER TABLE `customer_tables_details` DISABLE KEYS */;
INSERT INTO `customer_tables_details` (`id`,`table_no_id`,`or_no`,`qty`,`product_name`,`description`,`price`,`img_path`,`status`,`guest_id`,`guest_name`,`cat_id`,`date_added`,`printing_assembly`) VALUES 
 (10,'3',NULL,1,'18','Belgian Pudding w/ Coffee',160,'empty ',1,'-1','Walk-in','2','2012-12-26 12:57:15',0),
 (11,'3',NULL,2,'804','Black & White Russian',250,'empty ',1,'-1','Walk-in','21','2012-12-26 12:57:15',0),
 (12,'3',NULL,5,'771','Casablanca House Wine',625,'empty ',1,'-1','Walk-in','20','2012-12-26 12:57:15',0),
 (13,'18',NULL,1,'764','Absolute Vodka w/ Soda',145,'empty ',0,'-1','Walk-in','20','2012-12-26 12:58:53',0),
 (14,'18',NULL,2,'768','Brandy Domecq 1820',130,'empty ',0,'-1','Walk-in','20','2012-12-26 12:58:53',0),
 (15,'18',NULL,3,'19','Brewed Coffee',225,'empty ',0,'-1','Walk-in','2','2012-12-26 12:58:53',0),
 (16,'18',NULL,1,'540','Alabama Steaks',595,'empty ',0,'-1','Walk-in','14','2012-12-26 12:58:53',0),
 (17,'63',NULL,1,'31','Apple Juice',95,'empty ',0,'-1','Walk-in','3','2012-12-26 01:01:42',0),
 (18,'63',NULL,2,'38','Box Peach Juice',300,'empty ',0,'-1','Walk-in','3','2012-12-26 01:01:42',0);
INSERT INTO `customer_tables_details` (`id`,`table_no_id`,`or_no`,`qty`,`product_name`,`description`,`price`,`img_path`,`status`,`guest_id`,`guest_name`,`cat_id`,`date_added`,`printing_assembly`) VALUES 
 (19,'8',NULL,1,'764','Absolute Vodka w/ Soda',145,'empty ',1,'-1','Walk-in','20','2012-12-26 01:07:18',0),
 (20,'8',NULL,2,'768','Brandy Domecq 1820',0,'empty ',1,'-1','Walk-in','20','2012-12-26 01:07:18',0),
 (21,'15',NULL,1,'764','Absolute Vodka w/ Soda',0,'empty ',0,'-1','Walk-in','20','2012-12-26 01:07:31',0),
 (22,'15',NULL,2,'768','Brandy Domecq 1820',130,'empty ',0,'-1','Walk-in','20','2012-12-26 01:07:31',0),
 (23,'8',NULL,1,'31','Apple Juice',95,'empty ',1,'-1','Walk-in','3','2012-12-26 01:33:58',0),
 (24,'8',NULL,2,'38','Box Peach Juice',300,'empty ',1,'-1','Walk-in','3','2012-12-26 01:33:58',0),
 (25,'8',NULL,3,'39','Buko Juice',0,'empty ',1,'-1','Walk-in','3','2012-12-26 01:33:58',0),
 (26,'59',NULL,1,'764','Absolute Vodka w/ Soda',0,'empty ',1,'-1','Walk-in','20','2012-12-26 01:51:43',0),
 (27,'59',NULL,2,'19','Brewed Coffee',0,'empty ',1,'-1','Walk-in','2','2012-12-26 01:51:43',0);
INSERT INTO `customer_tables_details` (`id`,`table_no_id`,`or_no`,`qty`,`product_name`,`description`,`price`,`img_path`,`status`,`guest_id`,`guest_name`,`cat_id`,`date_added`,`printing_assembly`) VALUES 
 (28,'59',NULL,1,'31','Apple Juice',95,'empty ',1,'-1','Walk-in','3','2012-12-26 01:51:59',0),
 (29,'59',NULL,2,'38','Box Peach Juice',300,'empty ',1,'-1','Walk-in','3','2012-12-26 01:51:59',0),
 (30,'59',NULL,3,'39','Buko Juice',285,'empty ',1,'-1','Walk-in','3','2012-12-26 01:51:59',0),
 (31,'59',NULL,4,'45','Chocolate Shake',420,'empty ',1,'-1','Walk-in','3','2012-12-26 01:51:59',0),
 (32,'59',NULL,5,'51','Fresh Fruit Juice',475,'empty ',1,'-1','Walk-in','3','2012-12-26 01:51:59',0),
 (33,'1',NULL,1,'736','0.3 Ltr. Draft Beer',50,'empty ',0,'-1','Walk-in','19','2012-12-26 01:54:15',3),
 (34,'1',NULL,1,'737','0.5 Ltr. Draft Beer',90,'empty ',0,'-1','Walk-in','19','2012-12-26 01:54:15',3);
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
  `sys_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=1180 DEFAULT CHARSET=latin1;

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
 (942,'126','TROPICANA FRUIT BURST',24,24,'2012-08-06 02:13:17',13,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
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
 (967,'100','PRESTO CREAM',10,7,'2012-08-06 02:42:58',9,''),
 (968,'103','VOICE CHOCOLATE',10,8,'2012-08-06 02:42:58',9,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
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
 (993,'451','GOODY GULP CHOCO DRINK',69,68,'2012-08-06 02:47:51',9,''),
 (994,'93','DYNAMIC CHOCO',59,24,'2012-08-06 02:47:51',9,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (995,'215','YEMAS',147,50,'2012-08-06 02:47:51',9,''),
 (996,'336','PEANUTS',25,1,'2012-08-06 02:47:51',9,''),
 (997,'350','SAFARI',5,4,'2012-08-06 02:47:51',9,''),
 (998,'354','SOFTDRINKS IN CUPS',194,70,'2012-08-06 02:47:51',9,''),
 (999,'222','PEPSI 500ML',24,13,'2012-08-06 02:47:51',9,''),
 (1000,'134','7-UP 500ML',24,18,'2012-08-06 02:47:51',9,''),
 (1001,'139','MOUNTAIN DEW 500ML',24,18,'2012-08-06 02:47:51',9,''),
 (1003,'448','TROPICANA TWISTER ORANGE',26,25,'2012-08-06 02:47:51',9,''),
 (1004,'130','PREMIER WATER 350 ML',48,29,'2012-08-06 02:47:51',9,''),
 (1006,'353','GATORADE',12,10,'2012-08-06 02:47:51',9,''),
 (1007,'136','MIRINDA 500ML',24,24,'2012-08-06 02:47:51',9,''),
 (1013,'295','MAMMOON',20,7,'2012-08-06 02:47:51',9,''),
 (1017,'342','EGG SANDWICH',8,1,'2012-08-06 02:47:51',9,''),
 (1020,'307','SANDWICH',2,0,'2012-08-06 03:11:37',14,''),
 (1021,'300','BURGER',9,0,'2012-08-06 03:11:37',14,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
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
 (1035,'54','BIG BANG',10,8,'2012-08-06 03:11:37',14,''),
 (1036,'90','CREAM O BISCUIT',15,14,'2012-08-06 03:11:37',14,''),
 (1037,'57','JELLY ACE',12,10,'2012-08-06 03:11:37',14,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
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
 (1050,'140','PEPSI 8OZ',30,26,'2012-08-06 03:27:15',14,''),
 (1051,'138','MOUNTAIN DEW 12OZ',24,9,'2012-08-06 03:27:15',14,''),
 (1052,'350','SAFARI',18,18,'2012-08-06 03:27:15',14,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1053,'451','GOODY GULP CHOCO DRINK',3,2,'2012-08-06 03:27:15',14,''),
 (1054,'220','CHOCOLAIT MILK 250ML',24,24,'2012-08-06 03:27:15',14,''),
 (1055,'129','PREMIER  WATER500 ML',24,2,'2012-08-06 03:27:15',14,''),
 (1056,'130','PREMIER WATER 350 ML',48,31,'2012-08-06 03:27:15',14,''),
 (1059,'139','MOUNTAIN DEW 500ML',24,17,'2012-08-06 03:27:15',14,''),
 (1060,'134','7-UP 500ML',24,19,'2012-08-06 03:27:15',14,''),
 (1061,'136','MIRINDA 500ML',24,20,'2012-08-06 03:27:15',14,''),
 (1062,'126','TROPICANA FRUIT BURST',13,13,'2012-08-06 03:27:15',14,''),
 (1063,'448','TROPICANA TWISTER ORANGE',24,22,'2012-08-06 03:27:15',14,''),
 (1064,'353','GATORADE',24,23,'2012-08-06 03:27:15',14,''),
 (1065,'354','SOFTDRINKS IN CUPS',191,76,'2012-08-06 03:27:15',14,''),
 (1066,'212','KOPIKO W/O HOT WATER',10,10,'2012-08-06 03:27:15',14,''),
 (1067,'302','SPAGHETTI W/BREAD',1,0,'2012-08-06 03:27:15',14,''),
 (1068,'309','HAM AND EGG',3,0,'2012-08-06 03:27:15',14,'');
INSERT INTO `endorsements` (`id`,`product_id`,`product_name`,`qty_endorsed`,`qty_left`,`date_added`,`cashier_id`,`remarks`) VALUES 
 (1069,'308','CHEESEBURGER',8,0,'2012-08-06 03:27:15',14,''),
 (1070,'305','MEATBREAD',8,0,'2012-08-06 03:27:15',14,''),
 (1071,'294','CINNAMON ROLL',10,0,'2012-08-06 03:27:15',14,''),
 (1072,'312','PIZZA BREAD',10,0,'2012-08-06 03:27:15',14,''),
 (1073,'316','BANANA CAKE SLICE',15,11,'2012-08-06 03:27:15',14,''),
 (1074,'336','PEANUTS',25,13,'2012-08-06 03:27:15',14,''),
 (1075,'342','EGG SANDWICH',8,4,'2012-08-06 03:27:15',14,''),
 (1076,'310','CHAMPORADO',8,1,'2012-08-06 03:27:15',14,''),
 (1077,'359','SNOW BEAR',240,220,'2012-08-06 12:17:34',16,''),
 (1078,'58','KENDIMENT',286,277,'2012-08-06 12:17:34',16,''),
 (1079,'70','WHITE RABBIT',260,253,'2012-08-06 12:17:34',16,''),
 (1080,'105','HAPPY PEANUTS',360,331,'2012-08-06 12:17:34',16,''),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_advance_payment`
--

/*!40000 ALTER TABLE `guest_advance_payment` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_charges`
--

/*!40000 ALTER TABLE `guest_charges` DISABLE KEYS */;
INSERT INTO `guest_charges` (`id`,`guest_id`,`guest_name`,`date_added`,`amount`,`status`,`table_no`) VALUES 
 (5,'-1','Walk-In  ','2012-12-26 12:57:15',0,1,'3'),
 (6,'-1','Walk-In  ','2012-12-26 12:58:53',0,0,'18'),
 (7,'-1','Walk-In  ','2012-12-26 01:01:42',0,0,'63'),
 (8,'-1','Walk-In  ','2012-12-26 01:07:18',0,1,'8'),
 (9,'-1','Walk-In  ','2012-12-26 01:07:31',0,0,'15'),
 (10,'-1','Walk-In  ','2012-12-26 01:51:43',0,1,'59'),
 (11,'-1','Walk-In  ','2012-12-26 01:54:15',0,0,'1');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guests`
--

/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` (`id`,`guest_id`,`fname`,`lname`,`mi`,`country`,`email_address`,`status`,`diver_cert_lvl`,`contact_no`,`emergency_contact_name`,`passport_no`,`remarks`,`how`,`newsletter`,`balance`,`credit_limit`,`address`,`contact`,`occupation`,`income`,`b_date`,`civil_status`,`is_male`,`groups`,`member_name`) VALUES 
 (1,'00000001','wew','wewe','','Afghanistan','',0,'','','','','','Friends?',1,0,0,'','','','','1500-01-01','0',0,'0','wew  wewe'),
 (2,'00000002','erer','','','Afghanistan','',0,'','','','','','Friends?',1,0,0,'','','','','1500-01-01','0',0,'0','erer  ');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `types_num` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `is_vat` tinyint(4) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory2`
--

/*!40000 ALTER TABLE `inventory2` DISABLE KEYS */;
INSERT INTO `inventory2` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`qty_per_head`,`product_qty`,`remarks`,`created`,`modified`,`types`,`types_num`,`updated_by`,`supplier_id`,`is_vat`,`cost`) VALUES 
 (1,NULL,736,'736','0.3 Ltr. Draft Beer',50,NULL,1,'','2012-12-26 14:13:22',NULL,'19','0',NULL,0,NULL,50),
 (2,NULL,737,'737','0.5 Ltr. Draft Beer',90,NULL,2,'','2012-12-26 14:13:22',NULL,'19','0',NULL,0,NULL,90),
 (3,NULL,198,'198','1/2 Flaedlesoup',85,NULL,3,'','2012-12-26 14:13:22',NULL,'6','0',NULL,0,NULL,85),
 (4,NULL,244,'244','1/2 German Sausage Salad',92.5,NULL,4,'','2012-12-26 14:13:22',NULL,'7','0',NULL,0,NULL,92.5),
 (5,NULL,365,'365','1/2 Homemade Pasta',98,NULL,5,'','2012-12-26 14:13:22',NULL,'10','0',NULL,0,NULL,98);
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
  `prod_assembly` int(11) DEFAULT NULL,
  `is_linient` tinyint(4) DEFAULT NULL,
  `w_commission` tinyint(4) DEFAULT NULL,
  `comm_amount` double DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `img_path` varchar(500) DEFAULT NULL,
  `printing_assembly` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory2_stocks_left`
--

/*!40000 ALTER TABLE `inventory2_stocks_left` DISABLE KEYS */;
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (1,'1',1,'1','American Breakfast',245,-5,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (2,'2',2,'2','Austrian Breakfast',195,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (3,'3',3,'3','Billionaire\'s Breakfast (L)',755,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (4,'4',4,'4','Billionaire\'s Breakfast (S)',455,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (5,'5',5,'5','Breakfast Buffet',380,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (6,'6',6,'6','Breakfast Burrito',195,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (7,'7',7,'7','Breakfast Coffee/Tea',0,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (8,'8',8,'8','Breakfast/Lunch Free Juice',0,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (9,'9',9,'9','Continental Breakfast',195,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (10,'10',10,'10','Diver\'S Breakfast',195,0,'none','0','0',0,1,0,0,1,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (11,'11',11,'11','English Breakfast',245,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (12,'12',12,'12','Italian Breakfast',245,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (13,'13',13,'13','Mexican Breakfast',195,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (14,'14',14,'14','Spanish Breakfast',195,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (15,'15',15,'15','Sunrise Breakfast',195,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (16,'16',16,'16','Visayan Breakfast',175,0,'none','0','0',0,1,0,0,1,0,'empty ',0),
 (17,'17',17,'17','Asortedcake w/ Coffee/ Vanilla',195,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (18,'18',18,'18','Belgian Pudding w/ Coffee',160,-1,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (19,'19',19,'19','Brewed Coffee',75,-2,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (20,'20',20,'20','Cookie Monster w/ Coffee',160,0,'none','0','0',0,1,0,0,2,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (21,'21',21,'21','Decaf Coffee',75,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (22,'22',22,'22','Homemade Iced Tea',45,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (23,'23',23,'23','Hot Tea',0,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (24,'24',24,'24','Ice Coffee',85,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (25,'25',25,'25','Ice Tea',55,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (26,'26',26,'26','Irish Coffee',185,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (27,'27',27,'27','Irish Coffee w/ Irish Whisky',145,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (28,'28',28,'28','Long Island Ice Tea',155,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (29,'29',29,'29','Marble Cake w/ Coffee',165,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (30,'30',30,'30','Sparkling Iced Tea/Soda',98,0,'none','0','0',0,1,0,0,2,0,'empty ',0),
 (31,'31',31,'31','Apple Juice',95,-2,'none','0','0',0,1,0,0,3,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (32,'32',32,'32','Apricot Juice',65,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (33,'33',33,'33','Avocado Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (34,'34',34,'34','Avocado Shake',95,0,'BALLPEN','6','0',1,1,0,0,3,0,'empty ',0),
 (35,'35',35,'35','Banana Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (36,'36',36,'36','Blueberry Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (37,'37',37,'37','Box Orange Juice',150,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (38,'38',38,'38','Box Peach Juice',150,-4,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (39,'39',39,'39','Buko Juice',95,-6,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (40,'40',40,'40','Buko Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (41,'41',41,'41','Calamansi Juice',55,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (42,'42',42,'42','Calamansi Shake',55,0,'none','0','0',0,1,0,0,3,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (43,'43',43,'43','California Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (44,'44',44,'44','Carrot Juice',75,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (45,'45',45,'45','Chocolate Shake',105,-4,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (46,'46',46,'46','Citrone Juice',45,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (47,'47',47,'47','Dalandan Juice',65,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (48,'48',48,'48','Dalandan Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (49,'49',49,'49','Dragon Fruit Juice',55,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (50,'50',50,'50','Dragon Fruit Shake',75,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (51,'51',51,'51','Fresh Fruit Juice',95,-5,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (52,'52',52,'52','Fresh Fruit Shake Banana',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (53,'53',53,'53','Fresh Fruit Shake Guava',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (54,'54',54,'54','Fresh Fruit Shake Mango',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (55,'55',55,'55','Fresh Fruit Shake Pineapple',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (56,'56',56,'56','Grape Juice',45,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (57,'57',57,'57','Grape-Mango Juice',65,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (58,'58',58,'58','Grenadine Juice',55,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (59,'59',59,'59','Guava Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (60,'60',60,'60','Guava Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (61,'61',61,'61','Guyabano Juice',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (62,'62',62,'62','Guyabano Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (63,'63',63,'63','Herbal Fitness Juice',120,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (64,'64',64,'64','Jack Fruit Juice',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (65,'65',65,'65','Jack Fruit Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (66,'66',66,'66','Jackfruit Juice',75,0,'FLOOR WAX','1','0',0,1,0,0,3,0,'empty ',0),
 (67,'67',67,'67','Jackfruit Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (68,'68',68,'68','Juice',55,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (69,'69',69,'69','Lemon Juice',55,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (70,'70',70,'70','Mango Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (71,'71',71,'71','Mango Peach Juice',65,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (72,'72',72,'72','Mango Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (73,'73',73,'73','Mango Shake (Green)',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (74,'74',74,'74','Mango Shake w/ Vanilla',125,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (75,'75',75,'75','Melon Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (76,'76',76,'76','Melon Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (77,'77',77,'77','Milk Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (78,'78',78,'78','Mixed Fruit Juice',105,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (79,'79',79,'79','Mixed Fruit Shake',110,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (80,'80',80,'80','Mixed Juice',105,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (81,'81',81,'81','Multivitamins Juice',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (82,'82',82,'82','Orange Juice',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (83,'83',83,'83','Orange Juice',0,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (84,'84',84,'84','Papaya Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (85,'85',85,'85','Papaya Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (86,'86',86,'86','Passion Fruit Juice',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (87,'87',87,'87','Passion Fruit Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (88,'88',88,'88','Passion Shake',75,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (89,'89',89,'89','Peach Mango Juice',45,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (90,'90',90,'90','Peach Nectar Juice',132,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (91,'91',91,'91','Pineapple Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (92,'92',92,'92','Pineapple Shake w/ Vanilla',155,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (93,'93',93,'93','Strawberry Juice',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (94,'94',94,'94','Strawberry Shake',105,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (95,'95',95,'95','Strawberry/Banana Shake',120,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (96,'96',96,'96','Tomato/Carrot Juice',85,0,'none','0','0',0,1,0,0,3,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (97,'97',97,'97','Tropical Fruit Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (98,'98',98,'98','Vanilla Shake',105,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (99,'99',99,'99','Water Melon Shake',95,0,'none','0','0',0,1,0,0,3,0,'empty ',0),
 (100,'100',100,'100','Beef Platter',195,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (101,'101',101,'101','Bruschetta Large',195,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (102,'102',102,'102','Bruschetta Misto',275,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (103,'103',103,'103','Bruschetta Small',125,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (104,'104',104,'104','Calamares Fritta',195,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (105,'105',105,'105','Canape Platter',275,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (106,'106',106,'106','Carpaccio',255,0,'none','0','0',0,1,0,0,4,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (107,'107',107,'107','Carpaccio from White Marlin',295,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (108,'108',108,'108','Cheese Platter',295,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (109,'109',109,'109','Coldcut Platter',245,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (110,'110',110,'110','Coldcut/Cheese Platter',800,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (111,'111',111,'111','Dessert Platter',225,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (112,'112',112,'112','Dragon Fruit Carpaccio',165,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (113,'113',113,'113','Fiesta Ham Platter',295,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (114,'114',114,'114','Fish Carpaccio',245,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (115,'115',115,'115','Fish Platter',395,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (116,'116',116,'116','Hunter\'S Platter',325,0,'none','0','0',0,1,0,0,4,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (117,'117',117,'117','Ika Sashimi',185,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (118,'118',118,'118','Italian Platter',485,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (119,'119',119,'119','Kani Sashimi',185,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (120,'120',120,'120','Kiwi Carpaccio',195,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (121,'121',121,'121','Melon w/ Salami',195,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (122,'122',122,'122','Mexican Bruschetta',275,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (123,'123',123,'123','Mexican Platter',450,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (124,'124',124,'124','Mixed Bruschetta',195,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (125,'125',125,'125','Mixed Fish Platter',495,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (126,'126',126,'126','Mixed Grilled Platter',195,0,'none','0','0',0,1,0,0,4,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (127,'127',127,'127','Mixed Sashimi',395,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (128,'128',128,'128','Mixed Sushi Platter',395,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (129,'129',129,'129','Mixed Sushi Sashimi Platter',395,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (130,'130',130,'130','Pan Seared Fish Fillet',325,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (131,'131',131,'131','Parma Ham Platter',275,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (132,'132',132,'132','Pasta Platter',245,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (133,'133',133,'133','Salami Cheese Patter',245,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (134,'134',134,'134','Salami Plate',225,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (135,'135',135,'135','Salmon Sashimi',285,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (136,'136',136,'136','Salsa Platter w/ 3 Diff. Salsas',165,0,'none','0','0',0,1,0,0,4,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (137,'137',137,'137','Sashimi',0,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (138,'138',138,'138','Sashimi Platter',330,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (139,'139',139,'139','Sausage Platter',245,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (140,'140',140,'140','Seared Tuna Pepper',225,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (141,'141',141,'141','Sesame Seared Tuna',285,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (142,'142',142,'142','Smoked Tuna Carpaccio',295,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (143,'143',143,'143','Sunrise Platter',195,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (144,'144',144,'144','Sushi Platter',495,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (145,'145',145,'145','Tafelspitz Carpaccio',275,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (146,'146',146,'146','Tamago Sashimi',120,0,'none','0','0',0,1,0,0,4,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (147,'147',147,'147','Tuna Sashimi',235,0,'none','0','0',0,1,0,0,4,0,'empty ',0),
 (148,'148',148,'148','American Sausage Sandwich',225,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (149,'149',149,'149','Beef Meatballs Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (150,'150',150,'150','Blt Sandwich',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (151,'151',151,'151','Bratkartoffeln',95,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (152,'152',152,'152','Bratwurst ( Classic Sausage)',125,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (153,'153',153,'153','Bratwurst Sandwich',225,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (154,'154',154,'154','Bratwurst w/ Fried Potato',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (155,'155',155,'155','Bratwurst With Potato Salad',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (156,'156',156,'156','Burger Steak Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (157,'157',157,'157','Cheese And Sausage Sandwich',275,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (158,'158',158,'158','Cheese Sandwich',175,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (159,'159',159,'159','Cheese Sausage Sandwich',275,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (160,'160',160,'160','Chicken Barbecue Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (161,'161',161,'161','Chicken Fajitas Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (162,'162',162,'162','Chicken Sandwich',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (163,'163',163,'163','Coldcut Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (164,'164',164,'164','Curry Chicken Sandwich',175,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (165,'165',165,'165','Fat Austrian Sandwich',395,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (166,'166',166,'166','Fish Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (167,'167',167,'167','Foot Long Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (168,'168',168,'168','Footlong Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (169,'169',169,'169','French Burger Sandwich',325,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (170,'170',170,'170','Greek Sandwich',225,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (171,'171',171,'171','Grilled Chicken Sandwich',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (172,'172',172,'172','Ham & Cheese Sandwich',275,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (173,'173',173,'173','Ham And Bacon Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (174,'174',174,'174','Ham Sandwich',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (175,'175',175,'175','Hawaiian Sandwich',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (176,'176',176,'176','Hunter Sandwich',265,0,'none','0','0',0,1,0,0,5,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (177,'177',177,'177','Lyoner Sandwich',155,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (178,'178',178,'178','Meatballs Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (179,'179',179,'179','Mexican Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (180,'180',180,'180','Pastrami Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (181,'181',181,'181','Roast Beef Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (182,'182',182,'182','Roast Pork Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (183,'183',183,'183','Rye Bread Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (184,'184',184,'184','Salami Cheese Sandwich',275,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (185,'185',185,'185','Salami Sandwich',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (186,'186',186,'186','Salmon Sandwich',249,0,'none','0','0',0,1,0,0,5,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (187,'187',187,'187','Sandwich Ala King',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (188,'188',188,'188','Sauerbraten w/ Spatzle',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (189,'189',189,'189','Schnitzel Sandwich',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (190,'190',190,'190','Shrimp Sandwich',275,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (191,'191',191,'191','Snacks & Sandwiches',0,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (192,'192',192,'192','Steak Sandwich',275,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (193,'193',193,'193','Stefhanie Bratten',195,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (194,'194',194,'194','Swiss Bratwurst w/ Mash Pot.',295,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (195,'195',195,'195','Tuna Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (196,'196',196,'196','Turkey Sandwich',245,0,'none','0','0',0,1,0,0,5,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (197,'197',197,'197','Veal Or Reg Bratwurst 1Kl',425,0,'none','0','0',0,1,0,0,5,0,'empty ',0),
 (198,'198',198,'198','1/2 Flaedlesoup',85,1,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (199,'199',199,'199','Asparagus Cream Soup',165,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (200,'200',200,'200','Barley Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (201,'201',201,'201','Bavarian Potato Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (202,'202',202,'202','Broccoli Cream Soup',155,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (203,'203',203,'203','Carrot Soup',165,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (204,'204',204,'204','Cauliflower Soup',145,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (205,'205',205,'205','Celery Cream Soup',165,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (206,'206',206,'206','Cheese Creme Soup',185,0,'none','0','0',0,1,0,0,6,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (207,'207',207,'207','Chicken Ginger Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (208,'208',208,'208','Chicken Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (209,'209',209,'209','Chowder Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (210,'210',210,'210','Corn Soup',85,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (211,'211',211,'211','Couliflower Soup w/ Bread',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (212,'212',212,'212','Couliflower Soup w/ Bread',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (213,'213',213,'213','Egg Soup',95,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (214,'214',214,'214','Extra Soup',65,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (215,'215',215,'215','Flaedlesoup',85,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (216,'216',216,'216','French Onion Soup',145,0,'none','0','0',0,1,0,0,6,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (217,'217',217,'217','Fresh Herbal Cream Soup',145,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (218,'218',218,'218','Garlic Cream Soup',145,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (219,'219',219,'219','German Pea Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (220,'220',220,'220','Gorgonzola Cheese Soup',165,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (221,'221',221,'221','Goulash Soup',245,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (222,'222',222,'222','Green Peas Soup',245,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (223,'223',223,'223','Jalapeno Cream Soup',145,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (224,'224',224,'224','Leek Cheese Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (225,'225',225,'225','Liver Dumpling Soup',165,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (226,'226',226,'226','Miso Soup',135,0,'none','0','0',0,1,0,0,6,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (227,'227',227,'227','Mushrooom Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (228,'228',228,'228','Noodle Soup',145,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (229,'229',229,'229','Potato Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (230,'230',230,'230','Pumpkin Soup',155,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (231,'231',231,'231','Solhangka Soup',245,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (232,'232',232,'232','Soup Bouliabase',245,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (233,'233',233,'233','Spicy Asian Potato Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (234,'234',234,'234','Spinach Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (235,'235',235,'235','Sweet Chilli Chicken Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (236,'236',236,'236','Sweet Potato Soup',135,0,'none','0','0',0,1,0,0,6,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (237,'237',237,'237','Texmex Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (238,'238',238,'238','Thai Chicken Soup',175,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (239,'239',239,'239','Thai Spicy Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (240,'240',240,'240','Tom Yam Soup',195,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (241,'241',241,'241','Tomato Creme Soup',155,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (242,'242',242,'242','Tomato Soup',155,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (243,'243',243,'243','Vegetable Soup',155,0,'none','0','0',0,1,0,0,6,0,'empty ',0),
 (244,'244',244,'244','1/2 German Sausage Salad',92.5,4,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (245,'245',245,'245','Anti Pasti Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (246,'246',246,'246','Aragula Beef Salad',175,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (247,'247',247,'247','Asparagus Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (248,'248',248,'248','Austrian Chix. Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (249,'249',249,'249','Beef Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (250,'250',250,'250','Blue Marlin Medallions Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (251,'251',251,'251','Bread Dumplings Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (252,'252',252,'252','Burger Steak w/ Potato Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (253,'253',253,'253','Cabbage Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (254,'254',254,'254','Caesar Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (255,'255',255,'255','Casablanca Tuna Salad',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (256,'256',256,'256','Cheese Cake On Salad',295,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (257,'257',257,'257','Chef`S Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (258,'258',258,'258','Cherry Tomato Salad w/ Feta',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (259,'259',259,'259','Chicken Fingers On Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (260,'260',260,'260','Chicken Patty w/ Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (261,'261',261,'261','Chips/Kaspatzle w/ Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (262,'262',262,'262','Coleslaw Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (263,'263',263,'263','Dalupapa Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (264,'264',264,'264','Devil Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (265,'265',265,'265','Eggplant Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (266,'266',266,'266','Extra German Sausage Salad',45,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (267,'267',267,'267','Farmer Salad w/ Bacon,Egg',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (268,'268',268,'268','Fish Tacos w/ Guacamole Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (269,'269',269,'269','Fish Tirrene On A Bed Of Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (270,'270',270,'270','Fitness Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (271,'271',271,'271','Fried Meatloaf w/ Potato Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (272,'272',272,'272','Fruit Salad',155,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (273,'273',273,'273','Garden Salad w/ Grilled Fish',250,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (274,'274',274,'274','German Sausage Salad',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (275,'275',275,'275','Goat Steak w/ Potato Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (276,'276',276,'276','Greek Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (277,'277',277,'277','Grilled Veg. Salad',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (278,'278',278,'278','Grilled Veg. Salad w/Cheese',295,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (279,'279',279,'279','Guacamole Salad w/ Chips',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (280,'280',280,'280','Half Chicken w/ Potato Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (281,'281',281,'281','Italian Pasta w/ Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (282,'282',282,'282','Italian Vegetable Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (283,'283',283,'283','Japanese Horse Raddish Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (284,'284',284,'284','Jelly Fruit Salad',135,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (285,'285',285,'285','Kani Salad',130,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (286,'286',286,'286','Kartoffelsalat(Potato Salad)',95,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (287,'287',287,'287','Lettuce & Blue Cheese Salad',165,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (288,'288',288,'288','Liver Pattee Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (289,'289',289,'289','Mango Salad',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (290,'290',290,'290','Mexicanspring Rollw/Mix Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (291,'291',291,'291','Mixecan Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (292,'292',292,'292','Mixed Carton Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (293,'293',293,'293','Mixed Salad',125,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (294,'294',294,'294','Mixed Salad w/ Tuna',255,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (295,'295',295,'295','Mushroom Salad',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (296,'296',296,'296','New Year Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (297,'297',297,'297','Octopus Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (298,'298',298,'298','Parma Salad',175,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (299,'299',299,'299','Parma Salad w/ Bacon & Breadcrust',175,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (300,'300',300,'300','Pork Ham w/ Potato Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (301,'301',301,'301','Pork Ribs w/ Potato Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (302,'302',302,'302','Potato Salad With Bread',95,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (303,'303',303,'303','Prawns w/ Garden Salad',280,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (304,'304',304,'304','Risotto Alfunghi w/Gardensalad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (305,'305',305,'305','Roast Duck w/ Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (306,'306',306,'306','Roast Goat w/ Potato Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (307,'307',307,'307','Roast Pork w/ Potato Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (308,'308',308,'308','Salad & Soup',0,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (309,'309',309,'309','Salad Buffet',175,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (310,'310',310,'310','Salad Casablanca',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (311,'311',311,'311','Salad Gms',75,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (312,'312',312,'312','Salad Nicoise',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (313,'313',313,'313','Salad Nicoise w/ Tuna & Mango',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (314,'314',314,'314','Salad Saigon',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (315,'315',315,'315','Salad w/ Potato Basil Dressing',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (316,'316',316,'316','Salad w/ Smoked Ham',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (317,'317',317,'317','Sausage w/Potato Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (318,'318',318,'318','Seafood Salad',255,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (319,'319',319,'319','Sour Beef Salad',295,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (320,'320',320,'320','Spare Ribs w/Grilled Veg.Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (321,'321',321,'321','Spareribs w/ Cole Slaw Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (322,'322',322,'322','Spicy Roast Turkey Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (323,'323',323,'323','Spicy Tuna Salad',180,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (324,'324',324,'324','Spinach Salad w/ Feta Cheese',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (325,'325',325,'325','Spinach w/ Guacamole Salad',135,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (326,'326',326,'326','Sprout Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (327,'327',327,'327','Steamed Dorado On Bed Of Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (328,'328',328,'328','Stuffed Chicken w/ P-Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (329,'329',329,'329','Tacos Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (330,'330',330,'330','Tafel Spitz w/ Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (331,'331',331,'331','Tomato Salad',95,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (332,'332',332,'332','Tomato Salad w/ Feta Cheese',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (333,'333',333,'333','Tomato Salad w/ Goat Cheese',255,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (334,'334',334,'334','Tomato Salad With Feta Cheese',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (335,'335',335,'335','Tomato Tuna Salad w/ Onions',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (336,'336',336,'336','Tomato, Cheese And Egg Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (337,'337',337,'337','Tuffils Spits Salad',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (338,'338',338,'338','Tuna Medallions On Salad',285,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (339,'339',339,'339','Tuna Salad',180,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (340,'340',340,'340','Tuna Steak w/ A Salad',195,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (341,'341',341,'341','Turkey Salad',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (342,'342',342,'342','Ve.Getable Salad w/ Pangasius',295,0,'none','0','0',0,1,0,0,7,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (343,'343',343,'343','Vegetable Salad',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (344,'344',344,'344','Vegetable Salad w/ Feta',225,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (345,'345',345,'345','Vegetables Salad With Tuna',245,0,'none','0','0',0,1,0,0,7,0,'empty ',0),
 (346,'346',346,'346','Oven Potato Curry Chicken',195,0,'none','0','0',0,1,0,0,8,0,'empty ',0),
 (347,'347',347,'347','Oven Potato w/ Blue Cheese',195,0,'none','0','0',0,1,0,0,8,0,'empty ',0),
 (348,'348',348,'348','Oven Potato w/ Kinilaw',195,0,'none','0','0',0,1,0,0,8,0,'empty ',0),
 (349,'349',349,'349','Oven Potato w/ Truffle Cream',195,0,'none','0','0',0,1,0,0,8,0,'empty ',0),
 (350,'350',350,'350','Bean Burrito',245,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (351,'351',351,'351','Beef Enchilada w/ Guacamole',245,0,'none','0','0',0,1,0,0,9,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (352,'352',352,'352','Beef Fajitas',225,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (353,'353',353,'353','Chicken Enchiladas',225,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (354,'354',354,'354','Chicken Fajitas',225,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (355,'355',355,'355','Chicken Quesadillas',195,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (356,'356',356,'356','Fish Taco',245,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (357,'357',357,'357','Green Tabasco Chicken',295,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (358,'358',358,'358','Hard Taco Shells Beef 1 Pc',65,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (359,'359',359,'359','Lamb Tacos',245,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (360,'360',360,'360','Papaya Chicken Burrito',245,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (361,'361',361,'361','Pork Enchiladas',235,0,'none','0','0',0,1,0,0,9,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (362,'362',362,'362','Pork Fajitas',245,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (363,'363',363,'363','Tacos',195,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (364,'364',364,'364','Vegetable Enchilada',245,0,'none','0','0',0,1,0,0,9,0,'empty ',0),
 (365,'365',365,'365','1/2 Homemade Pasta',98,2,'none','0','0',0,1,0,0,10,0,'empty ',3),
 (366,'366',366,'366','1/2 Penne Pasta',98,0,'none','0','0',0,1,0,0,10,0,'empty ',4),
 (367,'367',367,'367','3 Pasta Plate',295,-4,'none','0','0',0,1,0,0,10,0,'empty ',3),
 (368,'368',368,'368','Aglio Olio Pasta',195,0,'none','0','0',0,1,0,0,10,0,'empty ',3),
 (369,'369',369,'369','Angelhair Carbonara',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (370,'370',370,'370','Black Pasta w/ Salami',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (371,'371',371,'371','Carbonara w/ Tuna',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (372,'372',372,'372','Chicken Parmigiano w/ Pasta',325,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (373,'373',373,'373','Chicken Pasta',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (374,'374',374,'374','Farfalloni Pasta',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (375,'375',375,'375','Fettucini Carbonara',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (376,'376',376,'376','Fettucini Carbonara Reg.',135,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (377,'377',377,'377','Fish Parisienne On Pasta',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (378,'378',378,'378','Green Pasta w/ Hunters Sauce',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (379,'379',379,'379','Grilled Chicken w/Pasta',295,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (380,'380',380,'380','Homade Pasta In Blue Cheese',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (381,'381',381,'381','Homemade Pasta',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (382,'382',382,'382','Homemade Pasta Alla Vongole',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (383,'383',383,'383','Homemade Pasta Carbonara',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (384,'384',384,'384','Homemade Pasta Carbonara',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (385,'385',385,'385','Homemade Pasta In Eggplant',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (386,'386',386,'386','Homemade Pasta In Tuna Flakes',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (387,'387',387,'387','Homemade Pasta In Tuna Spinach',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (388,'388',388,'388','Homemade Pasta Marinara',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (389,'389',389,'389','Homemade Pasta Mushroom Sauce',250,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (390,'390',390,'390','Homemade Pasta On Truffle',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (391,'391',391,'391','Homemade Pasta Primavera',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (392,'392',392,'392','Homemade Pasta w/ Anchovies',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (393,'393',393,'393','Homemade Pasta w/ Bacon',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (394,'394',394,'394','Homemade Pasta w/ Basil',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (395,'395',395,'395','Homemade Pasta w/ Bolognese',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (396,'396',396,'396','Homemade Pasta w/ Chicken',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (397,'397',397,'397','Homemade Pasta w/ Green Peas',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (398,'398',398,'398','Homemade Pasta w/ Marlin Cream',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (399,'399',399,'399','Homemade Pasta w/ Salami',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (400,'400',400,'400','Homemade Pasta w/ Salami',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (401,'401',401,'401','Homemade Pasta w/ Salami',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (402,'402',402,'402','Homemade Pasta w/ Tuna',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (403,'403',403,'403','Homemade White Pasta',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (404,'404',404,'404','Homemade White Pasta',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (405,'405',405,'405','Homemadepasta w/ Chix Strips',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (406,'406',406,'406','Mexican Pasta',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (407,'407',407,'407','Papa Deli Pasta',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (408,'408',408,'408','Papadeli Pasta',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (409,'409',409,'409','Pasta Aldente',95,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (410,'410',410,'410','Pasta Amatriciana',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (411,'411',411,'411','Pasta Cannelloni',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (412,'412',412,'412','Pasta Carbonara Reg',135,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (413,'413',413,'413','Pasta Duo',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (414,'414',414,'414','Pasta In Blue Cheese',225,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (415,'415',415,'415','Pasta In Cream Sauce w/Spinach',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (416,'416',416,'416','Pasta Ravioli',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (417,'417',417,'417','Pasta Verdura',185,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (418,'418',418,'418','Pasta Vonggole',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (419,'419',419,'419','Pasta Vongole',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (420,'420',420,'420','Pasta w/ Meatballs',198,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (421,'421',421,'421','Pasta w/ Sausage',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (422,'422',422,'422','Pasta w/ Seafoods',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (423,'423',423,'423','Pene Arabiata',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (424,'424',424,'424','Penne Carbonara',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (425,'425',425,'425','Penne Pasta Al Pomodore',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (426,'426',426,'426','Penne Pasta Carbonara',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (427,'427',427,'427','Penne Pasta In Blue Cheese',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (428,'428',428,'428','Penne Pasta w/ Dried Tomato',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (429,'429',429,'429','Penne Pasta w/ Salami',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (430,'430',430,'430','Penne Pasta w/ Sundried',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (431,'431',431,'431','Penne Pasta w/Pork Strips',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (432,'432',432,'432','Plain Pasta',100,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (433,'433',433,'433','Prawns Spaghetti',395,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (434,'434',434,'434','Rigati Pasta',79,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (435,'435',435,'435','Rigatoni Pasta w/Beef Strips',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (436,'436',436,'436','Salmon Pasta',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (437,'437',437,'437','Shells Pasta w/ Tomato Sauce',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (438,'438',438,'438','Smoked Fish Pasta',225,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (439,'439',439,'439','Spaghetti Al Pesto',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (440,'440',440,'440','Spaghetti Al Ragout',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (441,'441',441,'441','Spaghetti Al Ragout Regular',155,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (442,'442',442,'442','Spaghetti Ala Nonna',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (443,'443',443,'443','Spaghetti Ala Vongole',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (444,'444',444,'444','Spaghetti Amatriciana',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (445,'445',445,'445','Spaghetti Bacon N Tomato Sauce',225,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (446,'446',446,'446','Spaghetti Bolognese',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (447,'447',447,'447','Spaghetti Casablanca Large',225,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (448,'448',448,'448','Spaghetti Casablanca Regular',145,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (449,'449',449,'449','Spaghetti In Tuna Flakes',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (450,'450',450,'450','Spaghetti In Tuna Spinach',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (451,'451',451,'451','Spaghetti Marinara',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (452,'452',452,'452','Spaghetti Putanesca',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (453,'453',453,'453','Spaghetti Royale Large',295,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (454,'454',454,'454','Spaghetti Salami',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (455,'455',455,'455','Spaghetti w/ Blue Cheese',295,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (456,'456',456,'456','Spaghetti w/ Brocolli & Bacon',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (457,'457',457,'457','Spaghetti w/ Dried Tomato',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (458,'458',458,'458','Spaghetti w/ Parmesan Cheese',145,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (459,'459',459,'459','Spaghetti w/ Pesto Sauce',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (460,'460',460,'460','Spaghetti w/ Roasted Tomato',195,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (461,'461',461,'461','Spaghetti w/ Tuna Flakes',225,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (462,'462',462,'462','Spaghetti w/ Tuna In Tomato',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (463,'463',463,'463','Spahhetti Ala Colomba',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (464,'464',464,'464','Special Pasta',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (465,'465',465,'465','Spirali Pasta',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (466,'466',466,'466','Tagliatelle Pasta w/ Bacon',255,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (467,'467',467,'467','Three Color Pasta',245,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (468,'468',468,'468','Triology Pasta',275,0,'none','0','0',0,1,0,0,10,0,'empty ',0),
 (469,'469',469,'469','Banana Vegetable Curry',185,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (470,'470',470,'470','Chicken Stir Fried Vegetables',245,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (471,'471',471,'471','Chicken Vegetable Wok',245,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (472,'472',472,'472','Extra Vegetables',65,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (473,'473',473,'473','Mushroom Risotto',295,0,'none','0','0',0,1,0,0,11,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (474,'474',474,'474','Pork Vegetable Aspik',245,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (475,'475',475,'475','Risotto Al Gamberetti',275,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (476,'476',476,'476','Risotto Genovese',245,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (477,'477',477,'477','Seafood Risotto',375,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (478,'478',478,'478','Tomato Risotto',245,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (479,'479',479,'479','Vegetable Chopsuey w/ Rice',245,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (480,'480',480,'480','Vegetable Curry w/ Rice',195,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (481,'481',481,'481','Vegetable Groschdl',195,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (482,'482',482,'482','Vegetable Omelette',195,0,'none','0','0',0,1,0,0,11,0,'empty ',0),
 (483,'483',483,'483','Chicken Adobo w/ Rice & Veg.',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (484,'484',484,'484','Chicken Asian Style',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (485,'485',485,'485','Chicken Basket',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (486,'486',486,'486','Chicken Bicol Express',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (487,'487',487,'487','Chicken Blanquette w/ Rice',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (488,'488',488,'488','Chicken Brocolli',295,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (489,'489',489,'489','Chicken Buffalo Wings',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (490,'490',490,'490','Chicken Cacciatore',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (491,'491',491,'491','Chicken Casablanca',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (492,'492',492,'492','Chicken Chopsuey',295,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (493,'493',493,'493','Chicken Cordon Bleu',325,0,'none','0','0',0,1,0,0,12,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (494,'494',494,'494','Chicken Curry w/ Rice',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (495,'495',495,'495','Chicken Fillet Adobo w/ Rice',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (496,'496',496,'496','Chicken Fried Visayan Style',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (497,'497',497,'497','Chicken Frikasse',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (498,'498',498,'498','Chicken Gyros w/ Tzatziki',285,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (499,'499',499,'499','Chicken Hoi Sin Sauce',295,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (500,'500',500,'500','Chicken In Bellpepper Sauce',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (501,'501',501,'501','Chicken In Bread Crust',225,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (502,'502',502,'502','Chicken In Sesame Crust',225,0,'none','0','0',0,1,0,0,12,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (503,'503',503,'503','Chicken Legs w/ Rice',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (504,'504',504,'504','Chicken Parisian w/Tomato Rice',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (505,'505',505,'505','Chicken Parmigiano On Rissoto',325,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (506,'506',506,'506','Chicken Ragout',298,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (507,'507',507,'507','Chicken Rollane',295,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (508,'508',508,'508','Chicken Sesame w/ Spinach',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (509,'509',509,'509','Chicken Strip w/Rice And Veg.',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (510,'510',510,'510','Chicken Tepanyaki',200,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (511,'511',511,'511','Chicken Tocino',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (512,'512',512,'512','Chicken Toscana w/ Garlic Rice',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (513,'513',513,'513','Chicken Wings In Barbecue',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (514,'514',514,'514','Cinnamon Curry Chicken',295,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (515,'515',515,'515','Coq Au Vin (Chicken In Wine)',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (516,'516',516,'516','Fried Chicken W Brown Sauce',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (517,'517',517,'517','Fried Chicken w/ Fries',285,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (518,'518',518,'518','Fried Chicken w/Rice',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (519,'519',519,'519','Grilled Chicken Breast Italian',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (520,'520',520,'520','Grilled Chicken In A Curry',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (521,'521',521,'521','Grilled Chicken Legs',255,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (522,'522',522,'522','Grilled Chicken On Truffle',295,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (523,'523',523,'523','Grilled Chicken w/ Baked',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (524,'524',524,'524','Indian Chicken',295,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (525,'525',525,'525','Indian Chicken Curry w/ Rice',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (526,'526',526,'526','Oriental Chicken Curry',275,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (527,'527',527,'527','Roast Chicken',245,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (528,'528',528,'528','Roast Chicken',295,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (529,'529',529,'529','Rosemary Chicken',325,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (530,'530',530,'530','Taragon Chicken',225,0,'none','0','0',0,1,0,0,12,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (531,'531',531,'531','Thai Chicken Curry',175,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (532,'532',532,'532','Thai Chicken Curry w/ Rice',195,0,'none','0','0',0,1,0,0,12,0,'empty ',0),
 (533,'533',533,'533','Casablanca Fish Pot',325,0,'none','0','0',0,1,0,0,13,0,'empty ',0),
 (534,'534',534,'534','Fritto Misto Al Mare',295,0,'none','0','0',0,1,0,0,13,0,'empty ',0),
 (535,'535',535,'535','Fritto Misto De Mare',245,0,'none','0','0',0,1,0,0,13,0,'empty ',0),
 (536,'536',536,'536','Seafood Caserole',295,0,'none','0','0',0,1,0,0,13,0,'empty ',0),
 (537,'537',537,'537','Seafood Curry w/ Rice',325,0,'none','0','0',0,1,0,0,13,0,'empty ',0),
 (538,'538',538,'538','Seafood Penne In Tomato Sauce',245,0,'none','0','0',0,1,0,0,13,0,'empty ',0),
 (539,'539',539,'539','Seafood Teppanyaki',350,0,'none','0','0',0,1,0,0,13,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (540,'540',540,'540','Alabama Steaks',595,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (541,'541',541,'541','Angus Burger Steak (250g)',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (542,'542',542,'542','Angus Rump Steak (250g)',655,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (543,'543',543,'543','Arkansas Steaks',255,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (544,'544',544,'544','Bacon Angus Burger Steak',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (545,'545',545,'545','Baracuda Steak',225,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (546,'546',546,'546','Barbecue Pork',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (547,'547',547,'547','Beef Afritada',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (548,'548',548,'548','Beef Bourguignon',345,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (549,'549',549,'549','Beef Brocolli',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (550,'550',550,'550','Beef Carnitas',285,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (551,'551',551,'551','Beef Curry',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (552,'552',552,'552','Beef Enchaladas',225,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (553,'553',553,'553','Beef Florentine',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (554,'554',554,'554','Beef Green Asparagus',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (555,'555',555,'555','Beef Lengua',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (556,'556',556,'556','Beef Ribs',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (557,'557',557,'557','Beef Rollitini',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (558,'558',558,'558','Beef Rollitini w/ Veg. & Rice',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (559,'559',559,'559','Beef Steak Tagalog w/ Rice',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (560,'560',560,'560','Beef Stew w/Rice & Veg.',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (561,'561',561,'561','Beef Stir Fried w/ Rice',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (562,'562',562,'562','Beef Strips w/ Mashed Potato',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (563,'563',563,'563','Beef Stroganof',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (564,'564',564,'564','Beef Tapa',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (565,'565',565,'565','Beef Tepanyaki',420,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (566,'566',566,'566','Beef Tournedos',495,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (567,'567',567,'567','Bellpepper Stuffed w/ Pork',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (568,'568',568,'568','Blue Marlin Medallions',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (569,'569',569,'569','Blue Marlin Steak',475,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (570,'570',570,'570','Blue Marlin Steak',385,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (571,'571',571,'571','Bone In Steak',395,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (572,'572',572,'572','Brazilian Beef Steak',595,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (573,'573',573,'573','Brazilian Beef Tenderloin',595,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (574,'574',574,'574','Breaded Pork, Egg, Potato',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (575,'575',575,'575','Eggplant Schnitzel',225,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (576,'576',576,'576','Fitness Steak,Rump Steak(200G)',395,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (577,'577',577,'577','Flank Steak 700 Grms',1190,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (578,'578',578,'578','Florentine Medallions',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (579,'579',579,'579','Florida Steaks',275,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (580,'580',580,'580','Georgia Steaks',175,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (581,'581',581,'581','Goulash Fiaker Style',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (582,'582',582,'582','Grilled Pork Fillet',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (583,'583',583,'583','Grilled Tuna Steak',490,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (584,'584',584,'584','Grilled Veg. w/ Roast Beef',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (585,'585',585,'585','Half Goulash',85,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (586,'586',586,'586','Holzfaellersteak',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (587,'587',587,'587','Hungarian Goulash',375,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (588,'588',588,'588','Hungarian Szegediner Goulash',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (589,'589',589,'589','Hunter Schnitzel',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (590,'590',590,'590','Imported Beef Tenderloin 250G',595,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (591,'591',591,'591','Jagerschnitzel w/ Red Cabbage',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (592,'592',592,'592','Kentucky Steaks',445,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (593,'593',593,'593','Kinilaw And Griled Pork',390,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (594,'594',594,'594','Kobe Steak',795,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (595,'595',595,'595','Louisiana Steaks',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (596,'596',596,'596','Lumberjack Steak',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (597,'597',597,'597','Mary Pork Jeans',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (598,'598',598,'598','Missouri Steaks',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (599,'599',599,'599','Mulwarra Beef (150G)',495,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (600,'600',600,'600','Mulwarra Steak',895,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (601,'601',601,'601','Mushroom Goulash',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (602,'602',602,'602','Paprika Schnitzel',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (603,'603',603,'603','Parisian Schnitzel w/ Rice',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (604,'604',604,'604','Pork Adobo (L)',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (605,'605',605,'605','Pork Adobo (S)',120,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (606,'606',606,'606','Pork Bicol Express',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (607,'607',607,'607','Pork Breast w/ Rice & Veg',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (608,'608',608,'608','Pork Brisket',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (609,'609',609,'609','Pork Brocolli',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (610,'610',610,'610','Pork Carnitas',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (611,'611',611,'611','Pork Chopsuey With Rice',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (612,'612',612,'612','Pork Cordon Bleu',345,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (613,'613',613,'613','Pork Curry w/ Rice',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (614,'614',614,'614','Pork Fillet On Blue Cheese',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (615,'615',615,'615','Pork Fillet Steak (200g)',345,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (616,'616',616,'616','Pork Fillet Steak Bbq Sauce',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (617,'617',617,'617','Pork Goulash w/ Spatzle',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (618,'618',618,'618','Pork Knuckles',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (619,'619',619,'619','Pork Lechon',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (620,'620',620,'620','Pork Liver Stew',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (621,'621',621,'621','Pork Liver Venecian Style',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (622,'622',622,'622','Pork Loin 250G',355,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (623,'623',623,'623','Pork Meatballs w/ Sweet & Sour',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (624,'624',624,'624','Pork Medallions',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (625,'625',625,'625','Pork Nuckles',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (626,'626',626,'626','Pork Parriesien w/Rice',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (627,'627',627,'627','Pork Ragout In Mustard Sauce',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (628,'628',628,'628','Pork Rollade w/ Potato',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (629,'629',629,'629','Pork Rollitini Michel Angelo',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (630,'630',630,'630','Pork Rollitini w/ Rice & Veg.',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (631,'631',631,'631','Pork Shanghai w/ Garlic Rice',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (632,'632',632,'632','Pork Steak',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (633,'633',633,'633','Pork Steak In Herbal Butter',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (634,'634',634,'634','Pork Steak N Garlic Sauce',375,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (635,'635',635,'635','Pork Steak w/ Rice & Veg',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (636,'636',636,'636','Pork Stir Fried Veg. w/ Rice',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (637,'637',637,'637','Pork Stroganoff',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (638,'638',638,'638','Pork Stroganoff w/ Rice',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (639,'639',639,'639','Pork Suelze',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (640,'640',640,'640','Pork Suvlaki w/ Garlic Rice',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (641,'641',641,'641','Pork Tenderloin w/ Pan',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (642,'642',642,'642','Pork Tocino',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (643,'643',643,'643','Pork w/ Mashed Potato',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (644,'644',644,'644','Redwine Stew From Beef & Pork',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (645,'645',645,'645','Rib Eye Steak',450,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (646,'646',646,'646','Roast Pork',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (647,'647',647,'647','Roast Pork Belly',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (648,'648',648,'648','Roast Pork Belly w/Potato/Gratin',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (649,'649',649,'649','Roast Pork Knuckles',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (650,'650',650,'650','Roast Pork w/ Rice & Veg',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (651,'651',651,'651','Roast Pork w/ Rice & Veg.',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (652,'652',652,'652','Rump Steak 250G',590,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (653,'653',653,'653','Salmon Steak',595,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (654,'654',654,'654','Salsbury Burger Steak',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (655,'655',655,'655','Smoked Beef',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (656,'656',656,'656','Steak Casablanca',595,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (657,'657',657,'657','Stuffed Roast Pork',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (658,'658',658,'658','Surf `N`Turf Mulwarra Steak',595,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (659,'659',659,'659','Szegediner Goulash',195,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (660,'660',660,'660','Szegediner Goulash',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (661,'661',661,'661','Tanguigue Steak',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (662,'662',662,'662','Tanguigue Steak',395,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (663,'663',663,'663','Tenderloin Steak',465,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (664,'664',664,'664','Tennessee Steaks',225,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (665,'665',665,'665','Texas Pork Steak',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (666,'666',666,'666','Thai Beef Curry',325,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (667,'667',667,'667','Thai Pork Curry',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (668,'668',668,'668','Tuna Medallions',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (669,'669',669,'669','Tuna Steak',490,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (670,'670',670,'670','Turkey Cordon Bleu',395,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (671,'671',671,'671','Turkey Steak',395,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (672,'672',672,'672','Veal Steak 200G',595,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (673,'673',673,'673','Vienna Schnitzel',295,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (674,'674',674,'674','Vienna Schnitzel w/ Rice',245,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (675,'675',675,'675','Wagyo Steak',895,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (676,'676',676,'676','White Marlin Steak',430,0,'none','0','0',0,1,0,0,14,0,'empty ',0),
 (677,'677',677,'677','White Marlin Steak w/ Wasabi',385,0,'none','0','0',0,1,0,0,14,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (678,'678',678,'678','Chichen Adobo w/ Rice & Veg.',195,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (679,'679',679,'679','Fish Bicol Express',195,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (680,'680',680,'680','Fish Bicol Express',195,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (681,'681',681,'681','Fish Bicol Express',295,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (682,'682',682,'682','Goat Adobo',245,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (683,'683',683,'683','Kinilaw',185,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (684,'684',684,'684','Kinilaw w/ Rice',195,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (685,'685',685,'685','Malasugi Bicol Style',345,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (686,'686',686,'686','Pork Sinigang',245,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (687,'687',687,'687','Shrimp Bicol Express',355,0,'none','0','0',0,1,0,0,15,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (688,'688',688,'688','Sinigang Na Baboy',195,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (689,'689',689,'689','Sinigang Na Hipon',295,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (690,'690',690,'690','Sinigang Na Isda',245,0,'none','0','0',0,1,0,0,15,0,'empty ',0),
 (691,'691',691,'691','Aliluyah w/ Ice Cream',195,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (692,'692',692,'692','Apple Cake w/ Aice Cream',225,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (693,'693',693,'693','Banana Rama',155,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (694,'694',694,'694','Banana Rama',78,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (695,'695',695,'695','Berliner w/ Ice Cream',185,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (696,'696',696,'696','Brioche w/ Ice Cream',195,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (697,'697',697,'697','Crepe Schunbrunn',175,0,'none','0','0',0,1,0,0,16,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (698,'698',698,'698','Crepe Suchard',175,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (699,'699',699,'699','Crepes w/ Mango Parfait',295,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (700,'700',700,'700','Cup Cake w/ Ice Cream',145,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (701,'701',701,'701','Dragon Fruit w/ Ice Cream',185,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (702,'702',702,'702','Germancake w/ Ice Cream',195,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (703,'703',703,'703','Homemade Parfait',155,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (704,'704',704,'704','Honey Vanilla Parfait',155,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (705,'705',705,'705','Ice Cream Cu Danmark',125,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (706,'706',706,'706','Ice Cream Cu Monaco',175,0,'none','0','0',0,1,0,0,16,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (707,'707',707,'707','Marble Cake w/ Ice Cream',195,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (708,'708',708,'708','Pineapple On Ice Cream',195,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (709,'709',709,'709','Strawberry Crepe',295,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (710,'710',710,'710','Strawberry Diabolo',195,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (711,'711',711,'711','Ube Ice Cream',75,0,'none','0','0',0,1,0,0,16,0,'empty ',0),
 (712,'712',712,'712','Caf - Nescafe',35,0,'none','0','0',0,1,0,0,17,0,'empty ',0),
 (713,'713',713,'713','Cafe Coretto w/ Grappa',145,0,'none','0','0',0,1,0,0,17,0,'empty ',0),
 (714,'714',714,'714','Cafe Latte',0,0,'none','0','0',0,1,0,0,17,0,'empty ',0),
 (715,'715',715,'715','Cappuccino',85,0,'none','0','0',0,1,0,0,17,0,'empty ',0),
 (716,'716',716,'716','Espresso',55,0,'none','0','0',0,1,0,0,17,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (717,'717',717,'717','Apple Schorle',95,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (718,'718',718,'718','Calamansi Schorle',95,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (719,'719',719,'719','Coke & Royal',50,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (720,'720',720,'720','Coke Light',39,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (721,'721',721,'721','Coke Reg Can ',60,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (722,'722',722,'722','Coke Reg. Bottle',39,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (723,'723',723,'723','Coke Zero Bottle',39,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (724,'724',724,'724','Coke Zero Can ',60,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (725,'725',725,'725','Half Appleschorle',42.5,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (726,'726',726,'726','Lime Schorle',85,0,'none','0','0',0,1,0,0,18,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (727,'727',727,'727','Mango Schorle',120,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (728,'728',728,'728','Mineral Water (500Ml)',39,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (729,'729',729,'729','Pellegrino ( Sparkling Water )',95,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (730,'730',730,'730','Sparkling San Pellegrino 500Ml',125,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (731,'731',731,'731','Sprite (275ml)',39,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (732,'732',732,'732','Sprite Can',55,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (733,'733',733,'733','Tamarind Schorle',0,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (734,'734',734,'734','Tonic Water',55,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (735,'735',735,'735','White Wine w/ Soda Water',155,0,'none','0','0',0,1,0,0,18,0,'empty ',0),
 (736,'736',736,'736','0.3 Ltr. Draft Beer',50,1,'none','0','0',0,1,0,0,19,0,'empty ',3);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (737,'737',737,'737','0.5 Ltr. Draft Beer',90,2,'none','0','0',0,1,0,0,19,0,'empty ',3),
 (738,'738',738,'738','1L Draft Beer',170,0,'none','0','0',0,1,0,0,19,0,'empty ',4),
 (739,'739',739,'739','Andecks Beer',195,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (740,'740',740,'740','Astra Pilsen Beer',45,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (741,'741',741,'741','Bank\'S Beer',178,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (742,'742',742,'742','Becks Beer',125,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (743,'743',743,'743','Beer Butter Dorado',265,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (744,'744',744,'744','Beers',0,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (745,'745',745,'745','Bogarts-Draft Beer',1730,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (746,'746',746,'746','Carling Beer',125,0,'none','0','0',0,1,0,0,19,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (747,'747',747,'747','Draft Beer 0.3 Classic / Dark',85,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (748,'748',748,'748','Draft Beer 0.5 Classic / Dark',125,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (749,'749',749,'749','Dunkles Dark Beer0.5L',145,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (750,'750',750,'750','Grolsch Beer',175,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (751,'751',751,'751','Heineken',125,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (752,'752',752,'752','Kirin Beer',130,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (753,'753',753,'753','Konig Ludwig Dunkel',195,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (754,'754',754,'754','Kostribeer',195,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (755,'755',755,'755','Oettinger Wheat Beer',155,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (756,'756',756,'756','Original German Wheat Beer',225,0,'none','0','0',0,1,0,0,19,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (757,'757',757,'757','Paulaner Bottle',195,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (758,'758',758,'758','Paulaner Can',145,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (759,'759',759,'759','Pivo Praha (Dark/Weizen)',125,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (760,'760',760,'760','Radler',95,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (761,'761',761,'761','Weizen 0.3L',125,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (762,'762',762,'762','Weizen 0.5L',195,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (763,'763',763,'763','Weizen Pretsen',125,0,'none','0','0',0,1,0,0,19,0,'empty ',0),
 (764,'764',764,'764','Absolute Vodka w/ Soda',145,-2,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (765,'765',765,'765','Amaretto',95,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (766,'766',766,'766','Bottle Jonnie Walker Red',1390,0,'none','0','0',0,1,0,0,20,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (767,'767',767,'767','Box Cooking White Wine',130,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (768,'768',768,'768','Brandy Domecq 1820',65,-2,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (769,'769',769,'769','Carafe Red Wine',380,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (770,'770',770,'770','Carafe White Wine',380,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (771,'771',771,'771','Casablanca House Wine',125,-5,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (772,'772',772,'772','Castilliano Rosato Wine',695,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (773,'773',773,'773','Chivas Regal',195,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (774,'774',774,'774','Finladia Vodka w/ Orange',145,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (775,'775',775,'775','Finlandia Vodka',125,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (776,'776',776,'776','Gilbey\'S Vodka',55,0,'none','0','0',0,1,0,0,20,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (777,'777',777,'777','Glass Sparkling Wine',145,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (778,'778',778,'778','Godeva Red Wine',1950,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (779,'779',779,'779','Jack Daniels',125,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (780,'780',780,'780','Jack Daniels w/ Coke',145,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (781,'781',781,'781','Jagermaister',1090,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (782,'782',782,'782','Jhonnie Walker (Black)',125,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (783,'783',783,'783','Jhonnie Walker (Green)',195,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (784,'784',784,'784','Johnnie Walker (Red)',125,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (785,'785',785,'785','Kahlua',125,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (786,'786',786,'786','Mas De Cadenet Rose Wine',595,0,'none','0','0',0,1,0,0,20,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (787,'787',787,'787','Napoleon Brandy',125,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (788,'788',788,'788','Norderd Vodka',155,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (789,'789',789,'789','Obstler',95,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (790,'790',790,'790','Port Wine Glass',180,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (791,'791',791,'791','Red Bull Vodka',145,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (792,'792',792,'792','Red Vodka',175,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (793,'793',793,'793','Red Wine',125,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (794,'794',794,'794','Ripaso Red Wine',1400,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (795,'795',795,'795','Rotkaeppchen Sparkling Wine',1095,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (796,'796',796,'796','Rupes White Wine',1190,0,'none','0','0',0,1,0,0,20,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (797,'797',797,'797','Sky Vodka/ Soda',155,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (798,'798',798,'798','Special Wine Gms',1100,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (799,'799',799,'799','Stolichnaya Vodka',95,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (800,'800',800,'800','Vodka/Coke',65,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (801,'801',801,'801','Vodka/Tonic',95,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (802,'802',802,'802','White Wine',125,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (803,'803',803,'803','Wine Charge Reisling',500,0,'none','0','0',0,1,0,0,20,0,'empty ',0),
 (804,'804',804,'804','Black & White Russian',125,-2,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (805,'805',805,'805','Fresh Fruits Daiquiri',125,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (806,'806',806,'806','Frozen Margarita Regular',95,0,'none','0','0',0,1,0,0,21,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (807,'807',807,'807','Frozen Margarita Special',145,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (808,'808',808,'808','Gin Soda',95,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (809,'809',809,'809','Peach Mango w/ Soda',95,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (810,'810',810,'810','Rum & Calamansi',65,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (811,'811',811,'811','Rum & Coke Double',55,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (812,'812',812,'812','Rum & Coke Single',45,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (813,'813',813,'813','Rum & Coke Triple',65,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (814,'814',814,'814','Screwdriver',85,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (815,'815',815,'815','Single Rum',25,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (816,'816',816,'816','Strawberry Daiquirri',85,0,'none','0','0',0,1,0,0,21,0,'empty ',0);
INSERT INTO `inventory2_stocks_left` (`id`,`lookup_code`,`prod_num`,`product_name`,`description`,`price`,`product_qty`,`types`,`types_num`,`is_vat`,`prod_assembly`,`is_linient`,`w_commission`,`comm_amount`,`cat_id`,`cost`,`img_path`,`printing_assembly`) VALUES 
 (817,'817',817,'817','Tanduay Rhum Shot',45,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (818,'818',818,'818','Tequila Hombre',55,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (819,'819',819,'819','Tequila Jose Cuervo',125,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (820,'820',820,'820','Tequila Sunrise',125,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (821,'821',821,'821','Tequila Tabay',65,0,'none','0','0',0,1,0,0,21,0,'empty ',0),
 (822,'822',822,'822','Whiskey & Coke',145,0,'none','0','0',0,1,0,0,21,0,'empty ',0);
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
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

/*!40000 ALTER TABLE `pending_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_orders` ENABLE KEYS */;


--
-- Definition of table `printing_assembly`
--

DROP TABLE IF EXISTS `printing_assembly`;
CREATE TABLE `printing_assembly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_assembly`
--

/*!40000 ALTER TABLE `printing_assembly` DISABLE KEYS */;
INSERT INTO `printing_assembly` (`id`,`place`) VALUES 
 (3,'Bar and Resto'),
 (4,'Kitchen');
/*!40000 ALTER TABLE `printing_assembly` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `types_num` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt_discount`
--

/*!40000 ALTER TABLE `receipt_discount` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt_items`
--

/*!40000 ALTER TABLE `receipt_items` DISABLE KEYS */;
INSERT INTO `receipt_items` (`id`,`receipt_id`,`product_name`,`unit_price`,`qty`,`type_name`,`cat_name`,`description`) VALUES 
 (1,'1','35',1550,1,'type','Dive packages','Single Person-1 dive w/ EANX'),
 (2,'1','32',9600,2,'type','Dive packages','Single Person-4 dive w/o EANX'),
 (3,'1','39',20250,3,'type','Dive packages','Single Person-5 dive w/ EANX'),
 (4,'2','35',1550,1,'type','Dive packages','Single Person-1 dive w/ EANX'),
 (5,'2','39',20250,3,'type','Diving day trip','Single Person-5 dive w/ EANX'),
 (6,'2','254',900,2,'type','bar and restaurant','BBQ/Buffet'),
 (7,'2','223',950,2,'type','bar and restaurant','Bear Wine'),
 (8,'2','205',100,2,'type','bar and restaurant','Bottle of tonic water'),
 (9,'3','764',145,1,'type','Liquors','Absolute Vodka w/ Soda'),
 (10,'3','768',0,2,'type','Liquors','Brandy Domecq 1820'),
 (11,'3','31',95,1,'type','Fruit Juices & Shakes','Apple Juice'),
 (12,'3','38',300,2,'type','Fruit Juices & Shakes','Box Peach Juice'),
 (13,'3','39',0,3,'type','Fruit Juices & Shakes','Buko Juice'),
 (14,'4','18',160,1,'type','Coffee & Tea','Belgian Pudding w/ Coffee');
INSERT INTO `receipt_items` (`id`,`receipt_id`,`product_name`,`unit_price`,`qty`,`type_name`,`cat_name`,`description`) VALUES 
 (15,'4','804',250,2,'type','Mixed Drinks','Black & White Russian'),
 (16,'4','771',625,5,'type','Liquors','Casablanca House Wine'),
 (17,'9','764',0,1,'type','Liquors','Absolute Vodka w/ Soda'),
 (18,'9','19',0,2,'type','Coffee & Tea','Brewed Coffee'),
 (19,'9','31',95,1,'type','Fruit Juices & Shakes','Apple Juice'),
 (20,'9','38',300,2,'type','Fruit Juices & Shakes','Box Peach Juice'),
 (21,'9','39',285,3,'type','Fruit Juices & Shakes','Buko Juice'),
 (22,'9','45',420,4,'type','Fruit Juices & Shakes','Chocolate Shake'),
 (23,'9','51',475,5,'type','Fruit Juices & Shakes','Fresh Fruit Juice');
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
  `receipt_status` int(11) DEFAULT NULL,
  `receipt_date` datetime DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `approval_code` varchar(200) DEFAULT NULL,
  `member_id` varchar(100) DEFAULT NULL,
  `is_payed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipts`
--

/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` (`id`,`cashier_session_id`,`tendered`,`or_number`,`receipt_status`,`receipt_date`,`discount`,`credit`,`approval_code`,`member_id`,`is_payed`) VALUES 
 (1,3,81500,'1',0,'2012-12-20 13:43:03',0,0,'','0','yes'),
 (2,5,66200,'2',0,'2012-12-21 14:23:28',0,0,'','0','yes'),
 (3,6,840,'3',NULL,'2012-12-26 13:44:29',0,0,'','0','yes'),
 (4,6,3785,'4',NULL,'2012-12-26 13:51:23',0,0,'','0','yes'),
 (5,6,5605,'9',NULL,'2012-12-26 13:52:07',0,0,'','0','yes');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remitances`
--

/*!40000 ALTER TABLE `remitances` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_guests`
--

/*!40000 ALTER TABLE `room_guests` DISABLE KEYS */;
INSERT INTO `room_guests` (`id`,`rooom_id`,`guest_id`,`guest_name`,`checkin_date`,`checkout_date`,`status`,`to_pay`,`paid`,`room_rate`) VALUES 
 (4,3,'-1','Walk-In  ','2012-12-26 12:57:15','2012-12-26 12:57:15',1,3785,0,0),
 (5,18,'-1','Walk-In  ','2012-12-26 12:58:53','2012-12-26 12:58:53',0,1675,0,0),
 (6,63,'-1','Walk-In  ','2012-12-26 01:01:42','2012-12-26 01:01:42',0,695,0,0),
 (7,8,'-1','Walk-In  ','2012-12-26 01:07:18','2012-12-26 01:07:18',1,840,0,0),
 (8,15,'-1','Walk-In  ','2012-12-26 01:07:31','2012-12-26 01:07:31',0,260,0,0),
 (9,59,'-1','Walk-In  ','2012-12-26 01:51:43','2012-12-26 01:51:43',1,5605,0,0),
 (10,1,'-1','Walk-In  ','2012-12-26 01:54:15','2012-12-26 01:54:15',0,140,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=446 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
INSERT INTO `stock_in` (`id`,`prod_num`,`prod_name`,`qty`,`amount`,`date_added`,`cashier_name`,`cashier_id`,`remarks`,`branch_id`,`branch`,`status`) VALUES 
 (13,'736','0.3 Ltr. Draft Beer',1,50,'2012-12-26 02:13:22','8','8','',0,'main',0),
 (14,'737','0.5 Ltr. Draft Beer',2,90,'2012-12-26 02:13:22','8','8','',0,'main',0),
 (15,'198','1/2 Flaedlesoup',3,85,'2012-12-26 02:13:22','8','8','',0,'main',0),
 (16,'244','1/2 German Sausage Salad',4,92.5,'2012-12-26 02:13:22','8','8','',0,'main',0),
 (17,'365','1/2 Homemade Pasta',5,98,'2012-12-26 02:13:22','8','8','',0,'main',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
 (6,'0000000005',1,10000,'2012-12-17 09:49:41','main',0,'8',8,0),
 (7,'0000000005',5,1345,'2012-12-26 02:13:22','main',0,'8',8,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
INSERT INTO `stock_out` (`id`,`prod_num`,`prod_name`,`qty`,`amount`,`date_added`,`cashier_name`,`cashier_id`,`remarks`,`branch_id`,`branch`,`status`) VALUES 
 (1,'198','1/2 Flaedlesoup',2,85,'2012-12-26 02:18:46','8','8','',0,'main',0),
 (2,'198','1/2 Flaedlesoup',2,85,'2012-12-26 02:18:46','admin','8','6',NULL,NULL,NULL),
 (3,'365','1/2 Homemade Pasta',3,98,'2012-12-26 02:18:46','8','8','',0,'main',0),
 (4,'365','1/2 Homemade Pasta',3,98,'2012-12-26 02:18:46','admin','8','10',NULL,NULL,NULL),
 (5,'367','3 Pasta Plate',4,295,'2012-12-26 02:18:46','8','8','',0,'main',0),
 (6,'367','3 Pasta Plate',4,295,'2012-12-26 02:18:46','admin','8','10',NULL,NULL,NULL),
 (7,'1','American Breakfast',5,245,'2012-12-26 02:18:46','8','8','',0,'main',0),
 (8,'1','American Breakfast',5,245,'2012-12-26 02:18:46','admin','8','1',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out_main`
--

/*!40000 ALTER TABLE `stock_out_main` DISABLE KEYS */;
INSERT INTO `stock_out_main` (`id`,`ref_no`,`item_count`,`total_cost`,`date_added`,`branch`,`branch_id`,`user_name`,`user_id`,`status`) VALUES 
 (1,'0000000001',2,43,'2012-11-06 04:26:47','main',0,'0',0,0),
 (2,'0000000002',1,16,'2012-11-06 05:05:53','main',0,'0',0,0),
 (3,'0000000003',1,520,'2012-12-17 01:09:07','main',0,'0',0,0),
 (4,'0000000004',2,104400,'2012-12-17 09:45:24','main',0,'8',8,0),
 (5,'0000000005',4,2869,'2012-12-26 02:18:46','main',0,'8',8,0);
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
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tables`
--

/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` (`id`,`table_name`,`rate`,`rate_type`,`percentage`,`status`) VALUES 
 (1,'1',0,'NORMAL',0,0),
 (2,'2',0,'NORMAL',0,0),
 (3,'3',0,'NORMAL',0,0),
 (4,'4',0,'NORMAL',0,1),
 (5,'5',0,'NORMAL',0,0),
 (6,'6',0,'NORMAL',0,1),
 (7,'7',0,'NORMAL',0,0),
 (8,'8',0,'NORMAL',0,0),
 (9,'9',0,'NORMAL',0,1),
 (10,'10',0,'NORMAL',0,0),
 (11,'11-A',0,'NORMAL',0,0),
 (12,'12',0,'NORMAL',0,0),
 (13,'13',0,'NORMAL',0,0),
 (14,'14',0,'NORMAL',0,0),
 (15,'15',0,'NORMAL',0,0),
 (16,'VIP 1',0,'NORMAL',0,0),
 (17,'VIP 2',0,'NORMAL',0,0),
 (18,'9B',0,'NORMAL',0,0),
 (19,'9C',0,'NORMAL',0,0),
 (20,'Rubie/Mark Taes',0,'NORMAL',0,0),
 (21,'joerk friend miki',0,'NORMAL',0,0),
 (22,'16',0,'NORMAL',0,0),
 (32,'17',0,'NORMAL',0,0),
 (36,'11-B',0,'NORMAL',0,0),
 (43,'GMS',0,'NORMAL',0,0),
 (44,'Marcel',0,'NORMAL',0,0),
 (45,'Klaus',0,'NORMAL',0,0),
 (46,'Heinz',0,'NORMAL',0,0),
 (47,'Juergen Sealman',0,'NORMAL',0,0),
 (48,'chef carlo',0,'NORMAL',0,0),
 (49,'Lief',0,'NORMAL',0,0),
 (50,'BURCHARD',0,'NORMAL',0,0),
 (51,'GERALD',0,'NORMAL',0,0);
INSERT INTO `tables` (`id`,`table_name`,`rate`,`rate_type`,`percentage`,`status`) VALUES 
 (52,'MIKKI',0,'NORMAL',0,0),
 (53,'TUBIE',0,'NORMAL',0,0),
 (54,'DACA',0,'NORMAL',0,0),
 (55,'Chef Denver',0,'NORMAL',0,0),
 (56,'Prof. Markus',0,'NORMAL',0,0),
 (57,'Chef Mick',0,'NORMAL',0,0),
 (58,'TOM',0,'NORMAL',0,0),
 (59,'GEORGE',0,'NORMAL',0,0),
 (60,'CHINESE ROOM',0,'NORMAL',0,0),
 (61,'EUROPIAN ROOM',0,'NORMAL',0,0),
 (62,'0',0,'NORMAL',0,0),
 (63,'Sir Alfons Taes',0,'NORMAL',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_sales_or_details`
--

/*!40000 ALTER TABLE `bir_sales_or_details` DISABLE KEYS */;
INSERT INTO `bir_sales_or_details` (`id`,`bir_sales_or_id`,`issuance_detail_refid`,`dscr`,`lookup_code`,`brand`,`generic`,`catalog`,`category`,`qty`,`prc`,`disc`,`disc_type`,`is_vat`,`status`) VALUES 
 (1,'1',1,'Homemade muesli with milk and fruit','247','','','','',1,150,0,-1,1,0),
 (2,'1',1,'Seasonal fruit platter','249','','','','',1,70,0,-1,1,0),
 (3,'2',2,'Siquijor','25','','','','',1,150,0,-1,1,0),
 (4,'3',3,'Single Person-2 dive w/ EANX','36','','','','',3,0,0,-1,1,0),
 (5,'3',3,'Single Person-3 dive w/ EANX','37','','','','',4,17400,0,-1,1,0),
 (6,'3',3,'Single Person-4 dive w/ EANX','38','','','','',5,29000,0,-1,1,0),
 (7,'4',4,'Siquijor','25','','','','',4,600,0,-1,1,0),
 (8,'4',4,'Sumilon','26','','','','',5,4750,0,-1,1,0),
 (9,'5',5,'Siquijor','25','','','','',1,150,0,-1,1,0),
 (10,'5',5,'Sumilon','26','','','','',1,950,0,-1,1,0),
 (11,'7',7,'diving-Dauin Coast','1','','','','',1,150,0,-1,1,0),
 (12,'7',7,'snorkeling-Siquijor','8','','','','',2,100,0,-1,1,0),
 (13,'7',7,'snorkeling-Sumilon','9','','','','',3,600,0,-1,1,0),
 (14,'8',8,'Single Person-2 dive w/ EANX','36','','','','',1,3100,0,-1,1,0);
INSERT INTO `bir_sales_or_details` (`id`,`bir_sales_or_id`,`issuance_detail_refid`,`dscr`,`lookup_code`,`brand`,`generic`,`catalog`,`category`,`qty`,`prc`,`disc`,`disc_type`,`is_vat`,`status`) VALUES 
 (15,'8',8,'Single Person-3 dive w/ EANX','37','','','','',2,8700,0,-1,1,0),
 (16,'8',8,'Siquijor','25','','','','',3,450,0,-1,1,0),
 (17,'8',8,'Dauin ','44','','','','',3,1500,0,-1,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_sales_ors`
--

/*!40000 ALTER TABLE `bir_sales_ors` DISABLE KEYS */;
INSERT INTO `bir_sales_ors` (`id`,`issuance_refid`,`orno`,`trn`,`leu_orno`,`tendered`,`disc_by_total`,`sc_id`,`disc_type`,`paymt_type`,`cust_addr`,`cust_tin`,`customer_name`,`clerk_name`,`status`,`created`,`modified`,`modified_by`,`terminal`,`cashier_name`,`entity_name`,`check_number`) VALUES 
 (1,0,'1','1','',220,0,'',-1,'','','','','',0,'2012-12-17 22:12:18','2012-12-17 22:12:18','','','top','Synapse Software  Technologies',''),
 (2,0,'2','2','',950,0,'',-1,'','','','','',0,'2012-12-17 22:12:52','2012-12-17 22:12:52','','','front','Synapse Software Technologies',''),
 (3,0,'3','3','',214600,0,'',-1,'','','','','',0,'2012-12-18 09:10:28','2012-12-18 09:10:28','','','','Synapse Software  Technologies',''),
 (4,0,'4','4','',26150,0,'',-1,'','','','','',0,'2012-12-18 10:18:42','2012-12-18 10:18:42','','','cashier','Synapse Software  Technologies',''),
 (5,0,'5','5','',2700,0,'',-1,'','','','','',0,'2012-12-18 10:23:59','2012-12-18 10:23:59','','','front','Synapse Software  Technologies',''),
 (6,0,'6','6','',800,0,'',-1,'','','','','',0,'2012-12-18 10:24:11','2012-12-18 10:24:11','','','front','Synapse Software Technologies','');
INSERT INTO `bir_sales_ors` (`id`,`issuance_refid`,`orno`,`trn`,`leu_orno`,`tendered`,`disc_by_total`,`sc_id`,`disc_type`,`paymt_type`,`cust_addr`,`cust_tin`,`customer_name`,`clerk_name`,`status`,`created`,`modified`,`modified_by`,`terminal`,`cashier_name`,`entity_name`,`check_number`) VALUES 
 (7,0,'7','7','',2150,0,'',-1,'','','','','',0,'2012-12-18 10:55:52','2012-12-18 10:55:52','','','cashier','Synapse Software  Technologies',''),
 (8,0,'8','8','',26350,0,'',-1,'','','','Rangaig Mona Lisa','',0,'2012-12-18 11:08:45','2012-12-18 11:08:45','','','cashier','Synapse Software  Technologies','');
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

--
-- Create schema pb_bir
--

CREATE DATABASE IF NOT EXISTS pb_bir;
USE pb_bir;

--
-- Definition of procedure `p_display_bir_sales_or_details`
--

DROP PROCEDURE IF EXISTS `p_display_bir_sales_or_details`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_display_bir_sales_or_details`(
 a_bir_sales_or_id int
)
r1: begin

  select
    pod.id
   ,pod.bir_sales_or_id
   ,pod.issuance_detail_refid 
   ,pod.qty 
   ,pod.dscr 
   ,pod.prc 
   ,pod.lookup_code 

   ,pod.brand
   ,pod.generic
   ,pod.catalog
   ,pod.category

   ,pod.is_vat 
   ,pod.status 
  from 
    db_bir.bir_sales_or_details pod 
  where 
    pod.bir_sales_or_id = a_bir_sales_or_id; 

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_display_bir_sales_transaction_logs`
--

DROP PROCEDURE IF EXISTS `p_display_bir_sales_transaction_logs`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_display_bir_sales_transaction_logs`(
  a_dt_from datetime
 ,a_dt_to datetime
 ,a_username varchar(50)
)
r1: begin

  select
    tl.id
   ,tl.user_name
   ,tl.user_alias
   ,tl.module_touched
   ,tl.activity_performed 
   ,tl.terminal
   ,tl.status
   ,tl.created            
  from
    db_bir.bir_sales_transaction_logs tl
  where
    date(tl.created) between a_dt_from and adddate( a_dt_to, 0)
    and tl.user_name like a_username
  order by tl.created;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_get_bir_sales_or`
--

DROP PROCEDURE IF EXISTS `p_get_bir_sales_or`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_get_bir_sales_or`( a_orno varchar(20) )
r1: begin








  set @c_orno=a_orno;
  if( @c_orno is not null ) then
      select 
        po.id as po_id 
       ,po.issuance_refid
       ,po.orno as or_number 
       ,po.trn 
       ,po.leu_orno 
       ,po.tendered 
       ,po.disc_by_total
       ,po.sc_id 
       ,po.disc_type
       ,po.paymt_type
       ,po.cust_addr
       ,po.cust_tin
       ,po.customer_name
       ,po.clerk_name
       ,po.status 
       ,po.created as or_date 
       ,po.modified
       ,po.modified_by
       ,po.terminal
       ,po.cashier_name
       ,po.entity_name
       ,sum(pod.qty * pod.prc) as or_amount 
       ,sum(pod.disc) as disc_amount 
       ,(select 
           sum(if(pod.is_vat, ((pod.qty * pod.prc) 
             - ((pod.qty * pod.prc) / 1.12)), 0)) as vat 
         from 
           db_bir.bir_sales_or_details pod 
         where 
           pod.bir_sales_or_id = po.id) as vat_amount 
       ,po.paymt_type 
       ,if(po.paymt_type like 'cash', '', (select 
                                  pcp.approval_code 
                                from 
                                  db_bir.bir_sales_card_payments pcp 
                                where 
                                  pcp.bir_sales_or_id = po.id)) as card_approval 
       ,po.cust_addr 
       ,po.cust_tin 
       ,po.check_number
      from db_bir.bir_sales_ors po 
        join db_bir.bir_sales_or_details pod 
        on po.id = pod.bir_sales_or_id 
      where po.orno like @c_orno limit 1;
      
  end if;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_get_bir_sales_ors`
--

DROP PROCEDURE IF EXISTS `p_get_bir_sales_ors`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_get_bir_sales_ors`()
r1: begin

  select 
    po.id as po_id 
   ,po.issuance_refid
   ,po.orno as or_number 
   ,po.created as or_date 
   ,sum(pod.qty * pod.prc) as or_amount 
   ,po.cashier_name
   ,po.status 
   ,po.orno 
   ,po.tendered 
   ,po.sc_id 
   ,po.trn 
   ,po.customer_name
   ,po.clerk_name 
   ,po.leu_orno 
   ,sum(pod.disc) as disc_amount 
   ,(select 
       sum(if(pod.is_vat, ((pod.qty * pod.prc) 
         - ((pod.qty * pod.prc) / 1.12)), 0)) as vat 
     from 
       db_bir.bir_sales_or_details pod 
     where 
       pod.bir_sales_or_id = po.id) as vat_amount 
   ,po.paymt_type 
   ,if(po.paymt_type = 'cash', '', (select 
                              pcp.approval_code 
                            from 
                              db_bir.bir_sales_card_payments pcp 
                            where 
                              pcp.bir_sales_or_id = po.id)) as card_approval 
   ,po.cust_addr 
   ,po.cust_tin 
   ,po.check_number
  from db_bir.bir_sales_ors po 
    join db_bir.bir_sales_or_details pod 
    on po.id = pod.bir_sales_or_id 
  group by 
    po.orno; 

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_get_bir_sales_ors_by_date`
--

DROP PROCEDURE IF EXISTS `p_get_bir_sales_ors_by_date`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_get_bir_sales_ors_by_date`(
  a_cashier_name varchar(100)
 ,a_dt_from datetime
 ,a_dt_to datetime
)
r1: begin

  set @sel = 'select 
      po.id as po_id 
     ,po.issuance_refid
     ,po.orno as or_number 
     ,po.created as or_date 
     ,sum(pod.qty * pod.prc) as or_amount 
     ,po.cashier_name 
     ,po.status 
     ,po.orno 
     ,po.tendered 
     ,po.sc_id 
     ,po.trn 
     ,po.customer_name 
     ,po.clerk_name
     ,po.leu_orno 
     ,sum(pod.disc) as disc_amount 
     ,(select 
         sum(if(pod.is_vat, ((pod.qty * pod.prc) 
           - ((pod.qty * pod.prc) / 1.12)), 0)) as vat 
       from 
         db_bir.bir_sales_or_details pod 
       where 
         pod.bir_sales_or_id = po.id) as vat_amount 
     ,po.paymt_type 
     ,if(po.paymt_type = "cash", "", (select 
                              pcp.approval_code 
                            from 
                              db_bir.bir_sales_card_payments pcp 
                            where 
                              pcp.bir_sales_or_id = po.id)) as card_approval 
     ,po.cust_addr 
     ,po.cust_tin 
     ,po.check_number
    from db_bir.bir_sales_ors po 
      join db_bir.bir_sales_or_details pod 
      on po.id = pod.bir_sales_or_id ';
  
  set @whr = concat(' where 
    date(po.created) between "', a_dt_from, '" and adddate( "', a_dt_to, '", 0) ');

  set @grp = ' group by 
    po.orno; ';

  if( a_cashier_name is not null ) then
    set @ad = concat(' and po.cashier_name like "', a_cashier_name, '"' );
    set @stmt = concat(@sel, @whr, @ad, @grp);
  else 
    set @stmt = concat(@sel, @whr, @grp);
  end if;

  


  prepare ex from @stmt;
  execute ex;
  deallocate prepare ex;

  


end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_get_bir_sales_ors_by_status`
--

DROP PROCEDURE IF EXISTS `p_get_bir_sales_ors_by_status`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_get_bir_sales_ors_by_status`(
  a_status int
)
r1: begin

  select 
    po.id as po_id 
   ,po.issuance_refid
   ,po.orno as or_number 
   ,po.created as or_date 
   ,sum(pod.qty * pod.prc) as or_amount 
   ,po.cashier_name
   ,po.status 
   ,po.orno 
   ,po.tendered 
   ,po.sc_id 
   ,po.trn 
   ,po.customer_name
   ,po.clerk_name 
   ,po.leu_orno 
   ,sum(pod.disc) as disc_amount 
   ,(select 
       sum(if(pod.is_vat, ((pod.qty * pod.prc) 
         - ((pod.qty * pod.prc) / 1.12)), 0)) as vat 
     from 
       db_bir.bir_sales_or_details pod 
     where 
       pod.bir_sales_or_id = po.id) as vat_amount 
   ,po.paymt_type 
   ,if(po.paymt_type like 'cash', '', (select 
                              pcp.approval_code 
                            from 
                              db_bir.bir_sales_card_payments pcp 
                            where 
                              pcp.bir_sales_or_id = po.id)) as card_approval 
   ,po.cust_addr 
   ,po.cust_tin 
   ,po.check_number
  from db_bir.bir_sales_ors po 
    join db_bir.bir_sales_or_details pod 
    on po.id = pod.bir_sales_or_id 
  where 
    po.status = a_status
  group by 
    po.orno; 

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_get_bir_sales_ors_by_status_and_date`
--

DROP PROCEDURE IF EXISTS `p_get_bir_sales_ors_by_status_and_date`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_get_bir_sales_ors_by_status_and_date`(
  a_cashier_name varchar(200)
 ,a_dt_from datetime
 ,a_dt_to datetime
 ,a_status int
)
r1: begin

  set @sel = 'select 
      po.id as po_id 
     ,po.issuance_refid
     ,po.orno as or_number 
     ,po.created as or_date 
     ,sum(pod.qty * pod.prc) as or_amount 
     ,po.cashier_name
     ,po.status 
     ,po.orno 
     ,po.tendered 
     ,po.sc_id 
     ,po.trn 
     ,po.customer_name 
     ,po.clerk_name
     ,po.leu_orno 
     ,sum(pod.disc) as disc_amount 
     ,(select 
         sum(if(pod.is_vat, ((pod.qty * pod.prc) 
           - ((pod.qty * pod.prc) / 1.12)), 0)) as vat 
       from 
         db_bir.bir_sales_or_details pod 
       where 
         pod.bir_sales_or_id = po.id) as vat_amount 
     ,po.paymt_type 
     ,if(po.paymt_type = "cash", "", (select 
                              pcp.approval_code 
                            from 
                              db_bir.bir_sales_card_payments pcp 
                            where 
                              pcp.bir_sales_or_id = po.id)) as card_approval 
     ,po.cust_addr 
     ,po.cust_tin 
     ,po.check_number
    from db_bir.bir_sales_ors po 
      join db_bir.bir_sales_or_details pod 
      on po.id = pod.bir_sales_or_id ';
  
  set @whr = concat(' where 
    date(po.created) between "', a_dt_from, '" and adddate( "', a_dt_to, '", 0) 
    and po.status = ', a_status, ' ');

  set @grp = ' group by 
    po.orno; ';

  if( a_cashier_name is not null ) then
    set @ad = concat(' and po.cashier_name like "', a_cashier_name, '" ' );
    set @stmt = concat(@sel, @whr, @ad, @grp);
  else 
    set @stmt = concat(@sel, @whr, @grp);
  end if;

  

  prepare ex from @stmt;
  execute ex;
  deallocate prepare ex;
  


end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_get_bir_sales_or_by_trn`
--

DROP PROCEDURE IF EXISTS `p_get_bir_sales_or_by_trn`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_get_bir_sales_or_by_trn`( a_trn varchar(20) )
r1: begin

  set @c_orno = (
    select bso.orno 
    from db_bir.bir_sales_ors bso
      join db_bir.bir_sales_or_details pod 
      on bso.id = pod.bir_sales_or_id 
    where bso.trn like a_trn
    group by bso.id
  );
  
  if( @c_orno is not null ) then
      select 
        po.id as po_id 
       ,po.issuance_refid
       ,po.orno as or_number 
       ,po.created as or_date 
       ,sum(pod.qty * pod.prc) as or_amount 
       ,po.cashier_name
       ,po.status 
       ,po.orno 
       ,po.tendered 
       ,po.sc_id 
       ,po.trn 
       ,po.customer_name
       ,po.clerk_name 
       ,po.leu_orno 
       ,sum(pod.disc) as disc_amount 
       ,(select 
           sum(if(pod.is_vat, ((pod.qty * pod.prc) 
             - ((pod.qty * pod.prc) / 1.12)), 0)) as vat 
         from 
           db_bir.bir_sales_or_details pod 
         where 
           pod.bir_sales_or_id = po.id) as vat_amount 
       ,po.paymt_type 
       ,if(po.paymt_type = 'cash', '', (select 
                                  pcp.approval_code 
                                from 
                                  db_bir.bir_sales_card_payments pcp 
                                where 
                                  pcp.bir_sales_or_id = po.id)) as card_approval 
       ,po.cust_addr 
       ,po.cust_tin 
       ,po.check_number
      from db_bir.bir_sales_ors po 
        join db_bir.bir_sales_or_details pod 
        on po.id = pod.bir_sales_or_id 
      where po.orno like @c_orno;
  end if;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_get_cashiers`
--

DROP PROCEDURE IF EXISTS `p_get_cashiers`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_get_cashiers`()
r1: begin

  select po.cashier_name
  from db_bir.bir_sales_ors po 
  group by po.cashier_name; 

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_get_lastest_or_num`
--

DROP PROCEDURE IF EXISTS `p_get_lastest_or_num`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_get_lastest_or_num`()
r1: begin

  select 
    po.id 
   ,substring(po.orno from locate('-', po.orno) + 1) as sor_no 
  from 
    db_bir.bir_sales_ors po 
  order by po.id desc limit 1; 

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_has_still_unlogged_bir_sales_session`
--

DROP PROCEDURE IF EXISTS `p_has_still_unlogged_bir_sales_session`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_has_still_unlogged_bir_sales_session`()
r1: begin

  select 
    bs.id
   ,bs.cashier_id
   ,bs.cashier_alias
   ,bs.cashier_name
   ,bs.entity_name
   ,bs.cashcount
   ,bs.addtl_cash
   ,bs.logout
   ,bs.created
   ,bs.modified
  from db_bir.bir_sales_sessions bs
  where bs.logout = false;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_insert_bir_sales_card_payment`
--

DROP PROCEDURE IF EXISTS `p_insert_bir_sales_card_payment`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insert_bir_sales_card_payment`(
  a_bir_sales_or_id int
 ,a_supported_bank_refid int
 ,a_supported_bank_name varchar(100)
 ,a_card_owner varchar(100)
 ,a_card_num varchar(10) 
 ,a_approval_code varchar(10) 
 ,a_amount double
)
r1: begin

  insert into db_bir.bir_sales_card_payments ( 
    bir_sales_or_id 
   ,supported_bank_refid 
   ,supported_bank_name 
   ,card_owner 
   ,card_num 
   ,approval_code 
   ,amount 
  ) 
  values ( 
    a_bir_sales_or_id 
   ,a_supported_bank_refid 
   ,a_supported_bank_name 
   ,a_card_owner 
   ,a_card_num 
   ,a_approval_code 
   ,a_amount 
  ); 

  set @c_id = last_insert_id();

  select
    cp.id
   ,cp.bir_sales_or_id
   ,cp.supported_bank_refid
   ,cp.supported_bank_name
   ,cp.card_owner
   ,cp.card_num
   ,cp.approval_code
   ,cp.amount
   ,cp.created
  from db_bir.bir_sales_card_payments cp
  where cp.id = @c_id;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_insert_bir_sales_or`
--

DROP PROCEDURE IF EXISTS `p_insert_bir_sales_or`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insert_bir_sales_or`(
  a_issuance_refid int
 ,a_orno varchar(20)
 ,a_trn varchar(20)
 ,a_leu_orno varchar(100)
 ,a_tendered double
 ,a_disc_by_total double
 ,a_sc_id varchar(20)
 ,a_disc_type int
 ,a_customer_name varchar(100)
 ,a_clerk_name varchar(100)
 ,a_paymt_type  varchar(100)
 ,a_cust_addr varchar(200)
 ,a_cust_tin varchar(20)
 ,a_modified datetime
 ,a_modified_by varchar(100)
 ,a_terminal varchar(100)
 ,a_cashier_name varchar(200)
 ,a_entity_name varchar(200)
 ,a_check_number varchar(100)
)
r1: begin

  insert into db_bir.bir_sales_ors ( 
    issuance_refid 
   ,orno 
   ,trn 
   ,leu_orno
   ,tendered 
   ,disc_by_total 
   ,sc_id 
   ,disc_type 
   ,customer_name 
   ,clerk_name 
   ,paymt_type 
   ,cust_addr 
   ,cust_tin 
   ,modified
   ,modified_by
   ,terminal
   ,cashier_name
   ,entity_name
   ,check_number
  ) values ( 
    a_issuance_refid 
   ,a_orno 
   ,a_trn 
   ,a_leu_orno
   ,a_tendered 
   ,a_disc_by_total 
   ,a_sc_id 
   ,a_disc_type 
   ,a_customer_name 
   ,a_clerk_name
   ,a_paymt_type 
   ,a_cust_addr 
   ,a_cust_tin 
   ,a_modified
   ,a_modified_by
   ,a_terminal
   ,a_cashier_name
   ,a_entity_name
   ,a_check_number
  ); 

  set @c_id = last_insert_id();

  select 
    bo.id
   ,bo.issuance_refid
   ,bo.orno
   ,bo.trn
   ,bo.leu_orno
   ,bo.tendered
   ,bo.disc_by_total
   ,bo.sc_id
   ,bo.disc_type
   ,bo.paymt_type
   ,bo.cust_addr
   ,bo.cust_tin
   ,bo.customer_name
   ,bo.clerk_name
   ,bo.status
   ,bo.created
   ,bo.modified
   ,bo.modified_by
   ,bo.terminal
   ,bo.cashier_name
   ,bo.entity_name
   ,bo.check_number
  from db_bir.bir_sales_ors bo
  where bo.id = @c_id;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_insert_bir_sales_or_detail`
--

DROP PROCEDURE IF EXISTS `p_insert_bir_sales_or_detail`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insert_bir_sales_or_detail`(
  a_bir_sales_or_id int
 ,a_issuance_detail_refid int
 ,a_dscr varchar(200)
 ,a_lookup_code varchar(20)

 ,a_brand varchar(100)
 ,a_generic varchar(100)
 ,a_catalog varchar(100)
 ,a_category varchar(100)

 ,a_qty double
 ,a_prc double
 ,a_disc double
 ,a_disc_type int
 ,a_is_vat tinyint
)
r1: begin

  insert into db_bir.bir_sales_or_details ( 
    bir_sales_or_id 
   ,issuance_detail_refid
   ,dscr 
   ,lookup_code 

   ,brand 
   ,generic
   ,catalog 
   ,category 

   ,qty 
   ,prc 
   ,disc 
   ,disc_type 
   ,is_vat 
  ) 
  values ( 
    a_bir_sales_or_id 
   ,a_issuance_detail_refid
   ,a_dscr 
   ,a_lookup_code 

   ,a_brand 
   ,a_generic
   ,a_catalog 
   ,a_category 

   ,a_qty 
   ,a_prc 
   ,a_disc 
   ,a_disc_type 
   ,a_is_vat 
  ); 
  
  set @c_id = last_insert_id();

  select
    id
   ,bir_sales_or_id 
   ,issuance_detail_refid
   ,dscr 
   ,lookup_code 

   ,brand 
   ,generic
   ,catalog 
   ,category 

   ,qty 
   ,prc 
   ,disc 
   ,disc_type 
   ,is_vat 
   ,status 
  from db_bir.bir_sales_or_details od
  where od.id = @c_id;


end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_insert_bir_sales_or_leu`
--

DROP PROCEDURE IF EXISTS `p_insert_bir_sales_or_leu`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insert_bir_sales_or_leu`(
  a_issuance_refid int
 ,a_orno varchar(20)
 ,a_trn varchar(20)
 ,a_tendered double
 ,a_disc_by_total double
 ,a_sc_id varchar(20)
 ,a_disc_type int
 ,a_customer_name varchar(100)
 ,a_clerk_name varchar(100)
 ,a_paymt_type  int
 ,a_cust_addr varchar(200)
 ,a_cust_tin varchar(20)
 ,a_modified datetime
 ,a_modified_by varchar(100)
 ,a_terminal varchar(100)
 ,a_cashier_name varchar(200)
 ,a_entity_name varchar(200)
)
r1: begin

  insert into db_bir.bir_sales_ors ( 
    issuance_refid 
   ,orno 
   ,trn 
   ,tendered 
   ,disc_by_total 
   ,sc_id 
   ,disc_type 
   ,customer_name 
   ,clerk_name 
   ,paymt_type 
   ,cust_addr 
   ,cust_tin 
   ,modified
   ,modified_by
   ,terminal
   ,cashier_name
   ,entity_name
  ) values ( 
    a_issuance_refid 
   ,a_orno 
   ,a_trn 
   ,a_tendered 
   ,a_disc_by_total 
   ,a_sc_id 
   ,a_disc_type 
   ,a_customer_name 
   ,a_clerk_name
   ,a_paymt_type 
   ,a_cust_addr 
   ,a_cust_tin 
   ,a_modified
   ,a_modified_by
   ,a_terminal
   ,a_cashier_name
   ,a_entity_name
  ); 

  set @c_id = last_insert_id();

  select 
    bo.id
   ,bo.issuance_refid
   ,bo.orno
   ,bo.trn
   ,bo.leu_orno
   ,bo.tendered
   ,bo.disc_by_total
   ,bo.sc_id
   ,bo.disc_type
   ,bo.paymt_type
   ,bo.cust_addr
   ,bo.cust_tin
   ,bo.customer_name
   ,bo.clerk_name
   ,bo.status
   ,bo.created
   ,bo.modified
   ,bo.modified_by
   ,bo.terminal
   ,bo.cashier_name
   ,bo.entity_name
  from db_bir.bir_sales_ors bo
  where bo.id = @c_id;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_insert_bir_sales_transaction_log`
--

DROP PROCEDURE IF EXISTS `p_insert_bir_sales_transaction_log`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insert_bir_sales_transaction_log`(
  a_user_name varchar(100)
 ,a_user_alias varchar(100)
 ,a_module_touched varchar(100)
 ,a_activity_performed varchar(200)
 ,a_terminal varchar(100)
 ,a_status int
)
begin

  insert into db_bir.bir_sales_transaction_logs (
    user_name
   ,user_alias
   ,module_touched
   ,activity_performed
   ,terminal
   ,status
  ) values (
    a_user_name
   ,a_user_alias
   ,a_module_touched
   ,a_activity_performed
   ,a_terminal
   ,a_status
  );

  set @c_id = last_insert_id();

  select
    tl.id
   ,tl.user_name
   ,tl.user_alias
   ,tl.module_touched
   ,tl.activity_performed
   ,tl.terminal
   ,tl.status
   ,tl.created
  from db_bir.bir_sales_transaction_logs tl
  where tl.id = @c_id;

end $$

DELIMITER ;

--
-- Definition of procedure `p_login_bir_sales_session`
--

DROP PROCEDURE IF EXISTS `p_login_bir_sales_session`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_login_bir_sales_session`(
  a_cashier_id int
 ,a_cashier_alias varchar(100)
 ,a_cashier_name varchar(200)
 ,a_entity_name varchar(200)
)
r1: begin

  insert into db_bir.bir_sales_sessions ( 
    cashier_id 
   ,cashier_alias 
   ,cashier_name
   ,entity_name
   ,modified 
  ) values ( 
    a_cashier_id 
   ,a_cashier_alias 
   ,a_cashier_name
   ,a_entity_name
   ,current_timestamp 
  ); 

  set @c_id = last_insert_id();

  select 
    bs.id
   ,bs.cashier_id
   ,bs.cashier_alias
   ,bs.cashier_name
   ,bs.entity_name
   ,bs.cashcount
   ,bs.addtl_cash
   ,bs.logout
   ,bs.created
   ,bs.modified
  from db_bir.bir_sales_sessions bs
  where bs.id = @c_id;
    
end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_logout_bir_sales_session`
--

DROP PROCEDURE IF EXISTS `p_logout_bir_sales_session`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_logout_bir_sales_session`(
  a_cashier_id int
 ,a_cashcount double
 ,a_addtl_cash double
)
r1: begin

  update db_bir.bir_sales_sessions p 
  set p.logout = true 
     ,p.cashcount = a_cashcount 
     ,p.addtl_cash = a_addtl_cash 
     ,p.modified = current_timestamp 
  where 
    p.cashier_id = a_cashier_id 
    and p.logout = false; 

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_replace_bir_sales_or`
--

DROP PROCEDURE IF EXISTS `p_replace_bir_sales_or`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_replace_bir_sales_or`(
  a_issuance_refid int
 ,a_orno_new varchar(20)
 ,a_trn varchar(20)
 ,a_tendered double
 ,a_disc_by_total double
 ,a_sc_id varchar(20)
 ,a_disc_type int 
 ,a_customer_name  varchar(100)
 ,a_leu_orno varchar(20)
 ,a_modified_by varchar(100)
 ,a_terminal varchar(100)
 ,a_cashier_name varchar(200)
 ,a_entity_name varchar(200)
)
r1: begin

  insert into db_bir.bir_sales_ors ( 
    issuance_refid
   ,orno 
   ,trn 
   ,tendered 
   ,disc_by_total 
   ,sc_id 
   ,disc_type 
   ,customer_name 
   ,leu_orno 
   ,modified_by
   ,terminal
   ,cashier_name
   ,entity_name
  ) values ( 
    a_issuance_refid 
   ,a_orno_new 
   ,a_trn 
   ,a_tendered 
   ,a_disc_by_total 
   ,a_sc_id 
   ,a_disc_type 
   ,a_customer_name 
   ,a_leu_orno 
   ,a_modified_by
   ,a_terminal
   ,a_cashier_name
   ,a_entity_name
   
  ); 

  set @c_id = last_insert_id();

  update db_bir.bir_sales_ors po 
  set po.status = 1 
     ,po.modified_by = a_modified_by
  where po.orno like a_leu_orno; 

  select 
    bo.id
   ,bo.issuance_refid
   ,bo.orno
   ,bo.trn
   ,bo.leu_orno
   ,bo.tendered
   ,bo.disc_by_total
   ,bo.sc_id
   ,bo.disc_type
   ,bo.paymt_type
   ,bo.cust_addr
   ,bo.cust_tin
   ,bo.customer_name
   ,bo.status
   ,bo.created
   ,bo.modified_by
   ,bo.terminal
   ,bo.cashier_name
   ,bo.entity_name
   ,bo.check_number
  from db_bir.bir_sales_ors bo
  where bo.id = @c_id; 
  


end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_reset_sales_ors`
--

DROP PROCEDURE IF EXISTS `p_reset_sales_ors`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_reset_sales_ors`()
r1: begin

  delete from db_bir.bir_sales_transaction_logs;
  delete from db_bir.bir_sales_card_payments;
  delete from db_bir.bir_sales_sessions;
  delete from db_bir.bir_sales_or_details;
  delete from db_bir.bir_sales_ors;


end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_r_sales_report`
--

DROP PROCEDURE IF EXISTS `p_r_sales_report`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_r_sales_report`(
  a_tenant_id varchar(20)
 ,a_pos_terml varchar(20)
 ,a_date_mdyr datetime
)
r1: begin


        select
          a_tenant_id as tenant_id
         ,a_pos_terml as pos_terml
         ,ifnull(sum(ifnull(al.all_sales, 0)),0) as grs_sales
         ,ifnull(sum(ifnull(v.vat, 0)),0) as vat_compu
         ,ifnull(sum(ifnull(vd.void_sales, 0)),0) as vod_sales 
         ,ifnull((select count(po.id)
                  from db_bir.bir_sales_ors po
                  where date(po.created) = date(xpo.created)
                    and po.status = 1
                  group by date(po.created)), 0) as vod_trans
         ,ifnull(sum(ifnull(v.disc, 0)) - sum(ifnull(v.sc_disc, 0)),0) as dis_regul
         ,ifnull((select count(po.id)
                  from db_bir.bir_sales_ors po
                  where date(po.created) = date(xpo.created)
                    and po.status = 0
                    and po.disc_type = 0
                  group by date(po.created)), 0) as dis_ntran
         ,0 as refund_am
         ,0 as refund_tr
         ,ifnull(sum(ifnull(v.sc_disc, 0)),0) as s_citizen
         ,ifnull((select count(po.id)
                  from db_bir.bir_sales_ors po
                  where date(po.created) = date(xpo.created)
                    and po.status = 0
                    and po.disc_type = 1
                  group by date(po.created)), 0) as s_citiz_n
         ,0 as srv_charg
         ,ifnull((select sum(pod.qty * pod.prc)
                  from db_bir.bir_sales_ors po
                    join db_bir.bir_sales_or_details pod
                    on po.id = pod.bir_sales_or_id
                  where date(po.created) = (select date(ipo.created)
                     from db_bir.bir_sales_ors ipo
                     where date(ipo.created) < date(a_date_mdyr)
                     order by ipo.created desc limit 1)
                  and po.status = 0
                  group by date(po.created)), 0) as eod_previ
         ,ifnull((select sum(pod.qty * pod.prc)
                  from db_bir.bir_sales_ors po
                    join db_bir.bir_sales_or_details pod
                    on po.id = pod.bir_sales_or_id
                  where date(po.created) <= (select date(ipo.created)
                     from db_bir.bir_sales_ors ipo
                     where date(ipo.created) < date(a_date_mdyr)
                     order by ipo.created desc limit 1)
                  and po.status = 0 ), 0) as grt_previ
         ,ifnull((select sum(pod.qty * pod.prc)
                  from db_bir.bir_sales_ors po
                    join db_bir.bir_sales_or_details pod
                    on po.id = pod.bir_sales_or_id
                  where date(po.created) = date(a_date_mdyr) 
                    and po.status = 0
                    group by date(po.created)), 0) as eod_curre
         ,ifnull((select sum(pod.qty * pod.prc)
                  from db_bir.bir_sales_ors po
                    join db_bir.bir_sales_or_details pod
                    on po.id = pod.bir_sales_or_id
                  where date(po.created) <= date(a_date_mdyr) 
                    and po.status = 0), 0) as grt_curre 
         ,date(a_date_mdyr) as date_mdyr 
         ,0 as nvty_sale
         ,0 as misc_sale
         ,0 as local_tax
         ,ifnull(sum(ifnull(cs.credit_sales, 0)),0) as crd_sales 
         ,ifnull(sum(ifnull(cs.vat_on_crds, 0)),0) as vat_ochsl
         ,ifnull(sum(ifnull(v.nvat_sales, 0)),0) as nvat_sale 
        from
          db_bir.bir_sales_ors xpo
          join db_bir.bir_sales_or_details xpod
          on xpo.id = xpod.bir_sales_or_id
          left join (select 
                       if(pod.is_vat, ((((pod.qty * pod.prc) / 1.12) * 0.12)), 0) as vat
                      ,if(pod.is_vat, (pod.qty * pod.prc), 0 ) as vat_sales
                      ,if(not pod.is_vat, (pod.qty * pod.prc), 0 ) as nvat_sales
                      ,pod.disc
                      ,pod.qty
                      ,case when (pod.is_vat 
                         and pod.disc_type = 1 
                         and (select 
                                pr.with_sc_disc
                              from
                                overall_pos_db.product p
                                join overall_pos_db.product_rqcp pr
                                on p.product_id = pr.product_id
                              where 
                                p.lookup_code = pod.lookup_code
                              )) 
                        then (((pod.qty * pod.prc) / 1.12) * 0.2)
                              when (not pod.is_vat 
                          and pod.disc_type = 1 
                          and (select 
                                 pr.with_sc_disc
                               from
                                 overall_pos_db.product p
                                 join overall_pos_db.product_rqcp pr
                                 on p.product_id = pr.product_id
                               where 
                                 p.lookup_code = pod.lookup_code
                                ))
                        then ((pod.qty * pod.prc) * 0.2) 
                        else 0 
                          end as sc_disc
                      ,pod.id
                     from 
                       db_bir.bir_sales_or_details pod
                       join db_bir.bir_sales_ors po
                       on po.id = pod.bir_sales_or_id
                     where
                       po.status = 0
          ) v
          on xpod.id = v.id
          left join (select
            pod.id
           ,(pod.qty * pod.prc) as void_sales
          from
            db_bir.bir_sales_or_details pod
            join db_bir.bir_sales_ors po
            on po.id = pod.bir_sales_or_id
          where
            po.status = 1) vd
          on xpod.id = vd.id
          left join (select
                       pod.id
                      ,(pod.qty * pod.prc) as all_sales
                     from
                       db_bir.bir_sales_or_details pod
                       join db_bir.bir_sales_ors po
                       on po.id = pod.bir_sales_or_id) al
           on xpod.id = al.id
           left join (select
                       pod.id
                      ,if(pod.is_vat, ((((pod.qty * pod.prc) / 1.12) * 0.12)), 0) as vat_on_crds
                      ,(pod.qty * pod.prc) as credit_sales
                     from
                       db_bir.bir_sales_or_details pod
                       join db_bir.bir_sales_ors po
                       on po.id = pod.bir_sales_or_id
                     where 
                       po.status = 0
                       and po.paymt_type = 1) cs
           on xpod.id = cs.id
        where
          date(xpo.created) = date(a_date_mdyr);

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_update_bir_sales_or_detail_status`
--

DROP PROCEDURE IF EXISTS `p_update_bir_sales_or_detail_status`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_update_bir_sales_or_detail_status`(
  a_bir_sales_or_detail_id int
 ,a_status int
)
r1: begin

  update db_bir.bir_sales_or_details bsod
    set bsod.status = a_status
  where bsod.id = a_bir_sales_or_detail_id;

  select
    od.id
   ,od.issuance_detail_refid
   ,od.bir_sales_or_id 
   ,od.dscr 
   ,od.lookup_code 

   ,od.brand 
   ,od.generic
   ,od.catalog 
   ,od.category 

   ,od.qty 
   ,od.prc 
   ,od.disc 
   ,od.disc_type 
   ,od.is_vat 
   ,od.status 
  from db_bir.bir_sales_or_details od
  where od.id = a_bir_sales_or_detail_id;


end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_update_bir_sales_or_detail_status_by_refid`
--

DROP PROCEDURE IF EXISTS `p_update_bir_sales_or_detail_status_by_refid`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_update_bir_sales_or_detail_status_by_refid`(
  a_issuance_detail_refid int
 ,a_status int
)
r1: begin

  update db_bir.bir_sales_or_details bsod
    set bsod.status = a_status
  where bsod.issuance_detail_refid = a_issuance_detail_refid;

  select
    od.id
   ,od.issuance_detail_refid
   ,od.bir_sales_or_id 
   ,od.dscr 
   ,od.lookup_code 

   ,od.brand 
   ,od.generic
   ,od.catalog 
   ,od.category 

   ,od.qty 
   ,od.prc 
   ,od.disc 
   ,od.disc_type 
   ,od.is_vat 
   ,od.status 
  from db_bir.bir_sales_or_details od
  where od.issuance_detail_refid = a_issuance_detail_refid limit 1;


end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_update_bir_sales_or_status`
--

DROP PROCEDURE IF EXISTS `p_update_bir_sales_or_status`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_update_bir_sales_or_status`(
  a_orno varchar(20)
 ,a_status int
 ,a_modified_by varchar(100)
)
r1: begin

  update db_bir.bir_sales_ors bso
    set bso.status = a_status
       ,bso.modified = current_timestamp
       ,bso.modified_by = a_modified_by
  where bso.orno = a_orno;


  select 
    bo.id
   ,bo.issuance_refid
   ,bo.orno
   ,bo.trn
   ,bo.leu_orno
   ,bo.tendered
   ,bo.disc_by_total
   ,bo.sc_id
   ,bo.disc_type
   ,bo.paymt_type
   ,bo.cust_addr
   ,bo.cust_tin
   ,bo.customer_name
   ,bo.clerk_name
   ,bo.status
   ,bo.created
   ,bo.modified
   ,bo.modified_by
   ,bo.terminal
   ,bo.cashier_name
   ,bo.entity_name
   ,bo.check_number
  from db_bir.bir_sales_ors bo
  where bo.orno = a_orno;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_update_bir_sales_trn_status`
--

DROP PROCEDURE IF EXISTS `p_update_bir_sales_trn_status`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_update_bir_sales_trn_status`(
  a_trn varchar(20)
 ,a_status int
 ,a_modified_by varchar(100)
)
r1: begin

  update db_bir.bir_sales_ors bso
    set bso.status = a_status
       ,bso.modified = current_timestamp
       ,bso.modified_by = a_modified_by
  where bso.trn = a_trn;


  select 
    bo.id
   ,bo.issuance_refid
   ,bo.orno
   ,bo.trn
   ,bo.leu_orno
   ,bo.tendered
   ,bo.disc_by_total
   ,bo.sc_id
   ,bo.disc_type
   ,bo.paymt_type
   ,bo.cust_addr
   ,bo.cust_tin
   ,bo.customer_name
   ,bo.clerk_name
   ,bo.status
   ,bo.created
   ,bo.modified
   ,bo.modified_by
   ,bo.terminal
   ,bo.cashier_name
   ,bo.entity_name
   ,bo.check_number
  from db_bir.bir_sales_ors bo
  where bo.trn = a_trn;

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_x_sales_report`
--

DROP PROCEDURE IF EXISTS `p_x_sales_report`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_x_sales_report`(
  a_dt_from datetime
 ,a_dt_to datetime
)
r1: begin
  set @sel = 
         'set @is_zero = (select
            count(po.id)
          from db_bir.bir_sales_ors po
            join db_bir.bir_sales_or_details sod
            on po.id = sod.bir_sales_or_id
          where ';
  set @whr = concat(' date(po.created) between "', a_dt_from , '" and adddate( "', a_dt_to, '", 0) '); 
  set @stmt = concat(@sel, @whr, ')');

  

  prepare ex from @stmt;
  execute ex;
  set @is_zero = (select @is_zero);
  deallocate prepare ex;
    
  if( @is_zero <= 0 ) then

    select 
      a_dt_from as tx_date
     ,0.0 as total_gross_sales
     ,0.0 as total_discs
     ,0.0 as total_vat
     ,0.0 as total_vat_sales
     ,0.0 as total_nvat_sales
     ,0.0 as total_void_sales
     ,0.0 as total_provisionary_sales
     ,0.0 as total_sc_disc
     ,0.0 as total_reg_disc
     ,0.0 as total_qty_sold
     ,0 as total_tx
     ,0 as total_notvoid_tx
     ,0 as total_void_tx
     ,0 as total_provisionary_tx
     ,0 as total_reg_disc_tx
     ,0 as total_sc_disc_tx
     ,0 as total_no_disc_tx;

  else 
    

          set @sel = 
                 'select
                    date(xpo.created) as tx_date
                   ,xps.cashier_name 
                   ,sum(xpod.qty * xpod.prc) as total_gross_sales
                   ,sum(ifnull(v.disc, 0)) as total_discs
                   ,sum(ifnull(v.vat, 0)) as total_vat
                   ,sum(ifnull(v.vat_sales, 0)) as total_vat_sales
                   ,sum(ifnull(v.nvat_sales, 0)) as total_nvat_sales
                   ,sum(ifnull(vd.void_sales, 0)) as total_void_sales
                   ,sum(ifnull(pd.provisionary_sales, 0)) as total_provisionary_sales
                   ,sum(ifnull(v.sc_disc, 0)) as total_sc_disc
                   ,(sum(ifnull(v.disc, 0)) - sum(ifnull(v.sc_disc, 0))) as total_reg_disc
                   ,sum(ifnull(v.qty, 0)) as total_qty_sold
                   ,(select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                     group by date(po.created)) as total_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 0
                     group by date(po.created)), 0) as total_notvoid_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 1
                     group by date(po.created)), 0) as total_void_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 2
                     group by date(po.created)), 0) as total_provisionary_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 0
                       and po.disc_type = 0
                     group by date(po.created)), 0) as total_reg_disc_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 0
                       and po.disc_type = 1
                     group by date(po.created)), 0) as total_sc_disc_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 0
                       and po.disc_type = -1
                     group by date(po.created)), 0) as total_no_disc_tx

                  from
                    db_bir.bir_sales_ors xpo
                    join db_bir.bir_sales_or_details xpod
                    on xpo.id = xpod.bir_sales_or_id
                      and xpod.status = 0
                    left join (select 
                       if(pod.is_vat, ((((pod.qty * pod.prc) / 1.12) * 0.12)), 0) as vat
                      ,if(pod.is_vat, (pod.qty * pod.prc), 0 ) as vat_sales
                      ,if(not pod.is_vat, (pod.qty * pod.prc), 0 ) as nvat_sales
                      ,pod.disc
                      ,pod.qty
                      ,case when (pod.is_vat 
                               and pod.disc_type = 1 
                               and (
                                 select 
                                   pr.with_sc_disc
                                 from
                                   overall_pos_db.product p
                                   join overall_pos_db.product_rqcp pr
                                   on p.product_id = pr.product_id
                                 where 
                                   p.lookup_code = pod.lookup_code
                                )) 
                           then (((pod.qty * pod.prc) / 1.12) * 0.2)
                         when (not pod.is_vat 
                               and pod.disc_type = 1 
                               and (
                                 select 
                                   pr.with_sc_disc
                                 from
                                   overall_pos_db.product p
                                   join overall_pos_db.product_rqcp pr
                                   on p.product_id = pr.product_id
                                 where 
                                   p.lookup_code = pod.lookup_code
                                ))
                           then ((pod.qty * pod.prc) * 0.2) 
                         else 0 
                         end as sc_disc
                      ,pod.id
                     from 
                       db_bir.bir_sales_or_details pod
                       join db_bir.bir_sales_ors po
                       on po.id = pod.bir_sales_or_id
                     where
                       po.status = 0
                    ) v
                    on xpod.id = v.id
                    left join (select
                       pod.id
                      ,(pod.qty * pod.prc) void_sales
                     from
                       db_bir.bir_sales_or_details pod
                       join db_bir.bir_sales_ors po
                       on po.id = pod.bir_sales_or_id
                     where
                       po.status = 1) vd
                     on xpod.id = vd.id
                    left join (select
                       pod.id
                      ,(pod.qty * pod.prc) provisionary_sales
                     from
                       db_bir.bir_sales_or_details pod
                       join db_bir.bir_sales_ors po
                       on po.id = pod.bir_sales_or_id
                     where
                       po.status = 2) pd
                     on xpod.id = pd.id
                  where
                    
            ';

            set @whr = concat(' date(xpo.created) between "', a_dt_from ,'" and adddate( "', a_dt_to, '", 0) ');

            set @grp = '
                group by date(xpo.created)
                order by date(xpo.created), xpo.cashier_name ';
         
            set @stmt = concat(@sel, @whr, @grp);

            
            

            prepare ex from @stmt;
            execute ex;
            deallocate prepare ex;

  end if;

   

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_x_sales_report_per_cashier`
--

DROP PROCEDURE IF EXISTS `p_x_sales_report_per_cashier`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_x_sales_report_per_cashier`(
  a_dt_from datetime
 ,a_dt_to datetime
 ,a_cashier_name varchar(200)
)
r1: begin
  set @sel = 
         'set @is_zero = (select
            count(po.id)
          from db_bir.bir_sales_ors po
            join db_bir.bir_sales_or_details sod
            on po.id = sod.bir_sales_or_id
          where ';
  set @whr = concat(' date(po.created) between "', a_dt_from , '" and adddate( "', a_dt_to, '", 0) ');
  if( a_cashier_name is not null ) then
        set @ad = concat(' and po.cashier_name like "', a_cashier_name, '" ');
        set @stmt = concat(@sel, @whr, @ad, ')');
  else 
       set @stmt = concat(@sel, @whr, ')');
  end if;

  

  prepare ex from @stmt;
  execute ex;
  set @is_zero = (select @is_zero);
  deallocate prepare ex;
    
  if( @is_zero <= 0 ) then

    select 
      a_dt_from as tx_date
     ,null as cashier_name
     ,0.0 as total_gross_sales
     ,0.0 as total_discs
     ,0.0 as total_vat
     ,0.0 as total_vat_sales
     ,0.0 as total_nvat_sales
     ,0.0 as total_void_sales
     ,0.0 as total_sc_disc
     ,0.0 as total_reg_disc
     ,0.0 as total_qty_sold
     ,0 as total_tx
     ,0 as total_notvoid_tx
     ,0 as total_void_tx
     ,0 as total_reg_disc_tx
     ,0 as total_sc_disc_tx
     ,0 as total_no_disc_tx;

  else 
    

          set @sel = 
                 'select
                    date(xpo.created) as tx_date
                   ,xpo.cashier_name
                   ,sum(xpod.qty * xpod.prc) as total_gross_sales
                   ,sum(ifnull(v.disc, 0)) as total_discs
                   ,sum(ifnull(v.vat, 0)) as total_vat
                   ,sum(ifnull(v.vat_sales, 0)) as total_vat_sales
                   ,sum(ifnull(v.nvat_sales, 0)) as total_nvat_sales
                   ,sum(ifnull(vd.void_sales, 0)) as total_void_sales
                   ,sum(ifnull(v.sc_disc, 0)) as total_sc_disc
                   ,(sum(ifnull(v.disc, 0)) - sum(ifnull(v.sc_disc, 0))) as total_reg_disc
                   ,sum(ifnull(v.qty, 0)) as total_qty_sold
                   ,(select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                     group by date(po.created)) as total_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 0
                     group by date(po.created)), 0) as total_notvoid_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 1
                     group by date(po.created)), 0) as total_void_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 0
                       and po.disc_type = 0
                     group by date(po.created)), 0) as total_reg_disc_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 0
                       and po.disc_type = 1
                     group by date(po.created)), 0) as total_sc_disc_tx
                   ,ifnull((select count(po.id)
                     from db_bir.bir_sales_ors po
                     where date(po.created) = date(xpo.created)
                       and po.status = 0
                       and po.disc_type = -1
                     group by date(po.created)), 0) as total_no_disc_tx

                  from
                    db_bir.bir_sales_ors xpo
                    join db_bir.bir_sales_or_details xpod
                    on xpo.id = xpod.bir_sales_or_id
                      and xpod.status = 0
                    left join (select 
                       if(pod.is_vat, ((((pod.qty * pod.prc) / 1.12) * 0.12)), 0) as vat
                      ,if(pod.is_vat, (pod.qty * pod.prc), 0 ) as vat_sales
                      ,if(not pod.is_vat, (pod.qty * pod.prc), 0 ) as nvat_sales
                      ,pod.disc
                      ,pod.qty
                      ,case when (pod.is_vat 
                               and pod.disc_type = 1 
                               and (
                                 select 
                                   pr.with_sc_disc
                                 from
                                   overall_pos_db.product p
                                   join overall_pos_db.product_rqcp pr
                                   on p.product_id = pr.product_id
                                 where 
                                   p.lookup_code = pod.lookup_code
                                )) 
                           then (((pod.qty * pod.prc) / 1.12) * 0.2)
                         when (not pod.is_vat 
                               and pod.disc_type = 1 
                               and (
                                 select 
                                   pr.with_sc_disc
                                 from
                                   overall_pos_db.product p
                                   join overall_pos_db.product_rqcp pr
                                   on p.product_id = pr.product_id
                                 where 
                                   p.lookup_code = pod.lookup_code
                                ))
                           then ((pod.qty * pod.prc) * 0.2) 
                         else 0 
                         end as sc_disc
                      ,pod.id
                     from 
                       db_bir.bir_sales_or_details pod
                       join db_bir.bir_sales_ors po
                       on po.id = pod.bir_sales_or_id
                     where
                       po.status = 0
                    ) v
                    on xpod.id = v.id
                    left join (select
                       pod.id
                      ,(pod.qty * pod.prc) void_sales
                     from
                       db_bir.bir_sales_or_details pod
                       join db_bir.bir_sales_ors po
                       on po.id = pod.bir_sales_or_id
                     where
                       po.status = 1) vd
                     on xpod.id = vd.id
                  where
                    
            ';

            set @whr = concat(' date(xpo.created) between "', a_dt_from ,'" and adddate( "', a_dt_to, '", 0) ');

            set @grp = '
                group by date(xpo.created)
                order by date(xpo.created), xpo.cashier_name ';

            if( a_cashier_name is not null ) then
                set @ad = concat('and xpo.cashier_name = "', a_cashier_name, '"');
                set @stmt = concat(@sel, @whr, @ad, @grp);
            else 
               set @stmt = concat(@sel, @whr, @grp);
            end if;

            
            

            
            prepare ex from @stmt;
            execute ex;
            deallocate prepare ex;
            

  end if;

   

end r1 $$

DELIMITER ;

--
-- Definition of procedure `p_z_sales_report`
--

DROP PROCEDURE IF EXISTS `p_z_sales_report`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_z_sales_report`(
  a_as_of datetime
)
r1: begin

       select
          ifnull(sum(z.total_gross_sales), 0) as total_gross_sales
         ,ifnull(sum(z.total_discs), 0) as total_discs
         ,ifnull(sum(z.total_vat), 0) as total_vat
         ,ifnull(sum(z.total_vat_sales), 0) as total_vat_sales
         ,ifnull(sum(z.total_nvat_sales), 0) as total_nvat_sales
         ,ifnull(sum(z.total_void_sales), 0) as total_void_sales
         ,ifnull(sum(z.total_sc_disc), 0) as total_sc_disc
         ,ifnull(sum(z.total_reg_disc), 0) as total_reg_disc
         ,ifnull(sum(z.total_qty_sold), 0) as total_qty_sold
         ,ifnull(sum(z.total_tx), 0) as total_tx
         ,ifnull(sum(z.total_notvoid_tx), 0) as total_notvoid_tx
         ,ifnull(sum(z.total_void_tx), 0) as total_void_tx
         ,ifnull(sum(z.total_reg_disc_tx), 0) as total_reg_disc_tx
         ,ifnull(sum(z.total_sc_disc_tx), 0) as total_sc_disc_tx
         ,ifnull(sum(z.total_no_disc_tx), 0) as total_no_disc_tx
         ,ifnull(sum(z.total_notvoid_tx), 0) as total_notvoid_tx
         ,ifnull((select sum(pod.qty * pod.prc)
                 from db_bir.bir_sales_ors po
                   join db_bir.bir_sales_or_details pod
                   on po.id = pod.bir_sales_or_id
                    and pod.status = 0
                 where date(po.created) = (select date(ipo.created)
                                 from db_bir.bir_sales_ors ipo
                                 where date(ipo.created) < date(a_as_of)
                                 order by ipo.created desc limit 1)
                   and po.status = 0
                 group by date(po.created)), 0) as total_peod
         ,ifnull((select sum(pod.qty * pod.prc)
                 from db_bir.bir_sales_ors po
                   join db_bir.bir_sales_or_details pod
                   on po.id = pod.bir_sales_or_id
                     and pod.status = 0
                 where date(po.created) <= (select date(ipo.created)
                                 from db_bir.bir_sales_ors ipo
                                 where date(ipo.created) < date(a_as_of)
                                 order by ipo.created desc limit 1)
                   and po.status = 0 ), 0) as total_pgts

         ,ifnull((select sum(pod.qty * pod.prc)
                 from db_bir.bir_sales_ors po
                   join db_bir.bir_sales_or_details pod
                   on po.id = pod.bir_sales_or_id
                     and pod.status = 0
                 where date(po.created) = date(a_as_of) 
                   and po.status = 0
                 group by date(po.created)), 0) as total_ceod
         ,ifnull((select sum(pod.qty * pod.prc)
                 from db_bir.bir_sales_ors po
                   join db_bir.bir_sales_or_details pod
                   on po.id = pod.bir_sales_or_id
                     and pod.status = 0
                 where date(po.created) <= date(a_as_of) 
                   and po.status = 0), 0) as total_cgts
         ,(select
            count(v.created) as receipt_total_count
           from (select
            po.created
           from db_bir.bir_sales_ors po
             join db_bir.bir_sales_or_details pod
             on po.id = pod.bir_sales_or_id
               and pod.status = 0
           group by date(po.created)) v) as receipt_total_count
         ,(select
            count(v.created) as receipt_asof_count
          from
           (select
             po.created
            from db_bir.bir_sales_ors po
              join db_bir.bir_sales_or_details pod
              on po.id = pod.bir_sales_or_id
                and pod.status = 0
            where
              date(po.created) <= a_as_of
            group by date(po.created)) v) as receipt_asof_count
        from
            (select
                date(xpo.created) as tx_date
               ,sum(xpod.qty * xpod.prc) as total_gross_sales
               ,sum(ifnull(v.disc, 0)) as total_discs
               ,sum(ifnull(v.vat, 0)) as total_vat
               ,sum(ifnull(v.vat_sales, 0)) as total_vat_sales
               ,sum(ifnull(v.nvat_sales, 0)) as total_nvat_sales
               ,sum(ifnull(vd.void_sales, 0)) as total_void_sales
               ,sum(ifnull(v.sc_disc, 0)) as total_sc_disc
               ,(sum(ifnull(v.disc, 0)) - sum(ifnull(v.sc_disc, 0))) as total_reg_disc
               ,sum(ifnull(v.qty, 0)) as total_qty_sold
               ,(select count(po.id)
                 from db_bir.bir_sales_ors po
                 where date(po.created) = date(xpo.created)
                 group by date(po.created)) as total_tx
               ,ifnull((select count(po.id)
                 from db_bir.bir_sales_ors po
                 where date(po.created) = date(xpo.created)
                   and po.status = 0
                 group by date(po.created)), 0) as total_notvoid_tx
               ,ifnull((select count(po.id)
                 from db_bir.bir_sales_ors po
                 where date(po.created) = date(xpo.created)
                   and po.status = 1
                 group by date(po.created)), 0) as total_void_tx
               ,ifnull((select count(po.id)
                 from db_bir.bir_sales_ors po
                 where date(po.created) = date(xpo.created)
                   and po.status = 0
                   and po.disc_type = 0
                 group by date(po.created)), 0) as total_reg_disc_tx
               ,ifnull((select count(po.id)
                 from db_bir.bir_sales_ors po
                 where date(po.created) = date(xpo.created)
                   and po.status = 0
                   and po.disc_type = 1
                 group by date(po.created)), 0) as total_sc_disc_tx
               ,ifnull((select count(po.id)
                 from db_bir.bir_sales_ors po
                 where date(po.created) = date(xpo.created)
                   and po.status = 0
                   and po.disc_type = -1
                 group by date(po.created)), 0) as total_no_disc_tx

              from
                db_bir.bir_sales_ors xpo
                join db_bir.bir_sales_or_details xpod
                on xpo.id = xpod.bir_sales_or_id
                  and xpod.status = 0
                left join (select 
                   if(pod.is_vat, ((((pod.qty * pod.prc) / 1.12) * 0.12)), 0) as vat
                  ,if(pod.is_vat, (pod.qty * pod.prc), 0 ) as vat_sales
                  ,if(not pod.is_vat, (pod.qty * pod.prc), 0 ) as nvat_sales
                  ,pod.disc
                  ,pod.qty
                  ,case when (pod.is_vat 
                           and pod.disc_type = 1 
                           and (
                             select 
                               pr.with_sc_disc
                             from
                               overall_pos_db.product p
                               join overall_pos_db.product_rqcp pr
                               on p.product_id = pr.product_id
                             where 
                               p.lookup_code = pod.lookup_code
                            )) 
                       then (((pod.qty * pod.prc) / 1.12) * 0.2)
                     when (not pod.is_vat 
                           and pod.disc_type = 1 
                           and (
                             select 
                               pr.with_sc_disc
                             from
                               overall_pos_db.product p
                               join overall_pos_db.product_rqcp pr
                               on p.product_id = pr.product_id
                             where 
                               p.lookup_code = pod.lookup_code
                            ))
                       then ((pod.qty * pod.prc) * 0.2) 
                     else 0 
                     end as sc_disc
                  ,pod.id
                 from 
                   db_bir.bir_sales_or_details pod
                   join db_bir.bir_sales_ors po
                   on po.id = pod.bir_sales_or_id
                     and pod.status = 0
                 where
                   po.status = 0
                ) v
                on xpod.id = v.id
                left join (select
                   pod.id
                  ,(pod.qty * pod.prc) void_sales
                 from
                   db_bir.bir_sales_or_details pod
                   join db_bir.bir_sales_ors po
                   on po.id = pod.bir_sales_or_id
                 where
                   po.status = 1) vd
                 on xpod.id = vd.id
              group by date(xpo.created)
              order by date(xpo.created)) z
        where z.tx_date <= date(a_as_of);

end r1 $$

DELIMITER ;
--
-- Create schema pb_pos_restaurant
--

CREATE DATABASE IF NOT EXISTS pb_pos_restaurant;
USE pb_pos_restaurant;

--
-- Definition of procedure `check_inventory_if_exists`
--

DROP PROCEDURE IF EXISTS `check_inventory_if_exists`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `check_inventory_if_exists`(
    a_name varchar(100)
    ,a_date_added date
    ,a_time varchar(100)
)
begin
    select
    physical_count
    ,variance
    ,beg
    ,end
    ,total

    from 
    db_pos_restaurant.inventory
    where date(date_added) between date(a_date_added) and date(a_date_added)
    and name=a_name
    and time(date_added)=a_time
    
    ;
end $$

DELIMITER ;

--
-- Definition of procedure `check_time_inventory`
--

DROP PROCEDURE IF EXISTS `check_time_inventory`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `check_time_inventory`(
    a_date_added date
)
begin
  select 
  time(p.date_added)
 from 
 db_pos_restaurant.inventory p
 where
 date(p.date_added)= date(a_date_added)
 group by time(p.date_added)
;

end $$

DELIMITER ;

--
-- Definition of procedure `get_receipts`
--

DROP PROCEDURE IF EXISTS `get_receipts`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_receipts`(
   a_name varchar(100)
   ,a_date date
)
begin

  select
    r.or_number
   ,r.receipt_date
   ,r.tendered 
   ,discount
   from 
   db_pos_restaurant.receipts r
   join db_pos_restaurant.cashier_sessions cs
   on r.cashier_session_id=cs.id
   where cs.cashier_name=a_name and date(r.receipt_date)=date(a_date);

end $$

DELIMITER ;

--
-- Definition of procedure `insert_users`
--

DROP PROCEDURE IF EXISTS `insert_users`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_users`(
   a_user_name varchar(100)
  ,a_password varchar(100)
  ,a_user_level int
)
begin

insert into
db_pos_restaurant.users(
   user_name
  ,password
  ,user_level
  )
values(
  a_user_name
 ,a_password
 ,a_user_level
);

end $$

DELIMITER ;

--
-- Definition of procedure `pb_select_charges`
--

DROP PROCEDURE IF EXISTS `pb_select_charges`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_select_charges`(
     a_name varchar(100)
    ,a_date varchar(100)
)
begin
   select
   c.id
  ,c.member_name 
  ,ifnull(sum(mc.qty * mc.price),0) as credit 
  from db_pos_restaurant.customers c 
   left join db_pos_restaurant.member_charges mc 
   on c.id=mc.customer_id where  c.member_name 
   like concat(a_name,'%')  and mc.is_payed = 'no' group by c.id;

end $$

DELIMITER ;

--
-- Definition of procedure `p_cash_count`
--

DROP PROCEDURE IF EXISTS `p_cash_count`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cash_count`(
  a_cash_out double
 ,a_addtl_cash double
 ,a_cashier_session_id int
)
begin 

  update db_pos_restaurant.cash_drawer cd
    set cd.cash_out = a_cash_out
       ,cd.addtl_cash = a_addtl_cash
       ,cd.date_added = current_timestamp
  where cd.cashier_session_id = a_cashier_session_id;

end $$

DELIMITER ;

--
-- Definition of procedure `p_pay`
--

DROP PROCEDURE IF EXISTS `p_pay`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_pay`(
  a_tendered double
 ,a_receipt_date datetime
 ,a_cashier_name varchar(100)
 ,a_or_number varchar(20)
 
 ,a_product_name varchar(100)
 ,a_unit_price double
 ,a_qty double
)
begin

  
  
  set @v_cashier_cid = (select cs.id
                       from db_pos_restaurant.cashier_sessions cs
                       where 
                          cs.login_status = 1
                        and cs.cashier_name like a_cashier_name);
                              
  if( @v_cashier_cid is null ) then
     insert into db_pos_restaurant.cashier_sessions( 
       cashier_name
      ,login_status
      ,modified )
     values( 
       a_cashier_name
      ,1
      ,current_timestamp
     );
     
     set @v_cashier_cid = last_insert_id();    
  end if; 
  
  
  set @v_receipt_cid = (select r.id
                        from db_pos_restaurant.receipts r
                        where 
                          r.cashier_session_id = @v_cashier_cid
                          and r.or_number like a_or_number );
  
  if( @v_receipt_cid is null ) then
     insert into db_pos_restaurant.receipts (
       cashier_session_id
      ,tendered
      ,or_number
      ,receipt_date
     ) values (
       @v_cashier_cid
      ,a_tendered
      ,a_or_number
      ,a_receipt_date
     );
     
     set @v_receipt_cid = last_insert_id();
  end if;
  
  
  insert into db_pos_restaurant.receipt_items (
    receipt_id
   ,product_name
   ,unit_price
   ,qty
  ) values (
    @v_receipt_cid
   ,a_product_name
   ,a_unit_price
   ,a_qty
  );
  
  
end $$

DELIMITER ;

--
-- Definition of procedure `p_pending_orders_add`
--

DROP PROCEDURE IF EXISTS `p_pending_orders_add`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_pending_orders_add`(
   a_customer_name varchar(100)
)
begin

  insert into db_pos_restaurant.pending_orders(
    customer_name
  ) values (
    a_customer_name
  );

  set @c_pending_order_id = last_insert_id();

  select po.id from db_pos_restaurant.pending_orders po where po.id = @c_pending_order_id;

end $$

DELIMITER ;

--
-- Definition of procedure `p_pending_orders_retrieve`
--

DROP PROCEDURE IF EXISTS `p_pending_orders_retrieve`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_pending_orders_retrieve`(
   a_customer_name varchar(100)
)
begin

  select
    po.id
   ,po.customer_name
   ,po.added
  from db_pos_restaurant.pending_orders po
  where po.customer_name = a_customer_name;

end $$

DELIMITER ;

--
-- Definition of procedure `p_pending_order_details_add`
--

DROP PROCEDURE IF EXISTS `p_pending_order_details_add`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_pending_order_details_add`(
  a_pending_order_id int
 ,a_qty double
 ,a_customer_name varchar(100)
 ,a_product_name varchar(100)
 ,a_price double
 ,a_amount double
)
begin

  insert into db_pos_restaurant.pending_order_details (
    pending_order_id
   ,qty
   ,customer_name
   ,product_name
   ,price
   ,amount
 ) values(
    a_pending_order_id
   ,a_qty
   ,a_customer_name
   ,a_product_name
   ,a_price
   ,a_amount
 );

end $$

DELIMITER ;

--
-- Definition of procedure `p_pending_order_details_retrieve`
--

DROP PROCEDURE IF EXISTS `p_pending_order_details_retrieve`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_pending_order_details_retrieve`(
  a_pending_order_id varchar(100)
)
begin

  select
    pod.id
   ,pod.pending_order_id
   ,pod.qty
   ,pod.product_name
   ,pod.price
   ,pod.amount
  from db_pos_restaurant.pending_order_details pod
  where pod.customer_name = a_pending_order_id; 

end $$

DELIMITER ;

--
-- Definition of procedure `p_receipts_add`
--

DROP PROCEDURE IF EXISTS `p_receipts_add`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_receipts_add`(
  a_cashier_session_id int
 ,a_tendered double
 ,a_or_number varchar(20)
 ,a_receipt_date datetime
 ,a_discount double
)
begin

  insert into db_pos_restaurant.receipts( 
    cashier_session_id
   ,tendered
   ,or_number
   ,receipt_date
   ,discount )
  values( 
    a_cashier_session_id
   ,a_tendered
   ,a_or_number
   ,a_receipt_date 
   ,a_discount
);

  set @c_receipt_id = last_insert_id();

  select po.or_number from db_pos_restaurant.receipts po where po.or_number = @c_receipt_id;

end $$

DELIMITER ;

--
-- Definition of procedure `p_receipts_add2`
--

DROP PROCEDURE IF EXISTS `p_receipts_add2`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_receipts_add2`(
  a_cashier_session_id int
 ,a_tendered double
 ,a_or_number varchar(20)
 ,a_receipt_date datetime
 ,a_discount double
 ,a_credit double
 ,a_approval_code varchar(200)
 ,a_member_id varchar(200)
 ,a_is_payed varchar(100)
)
begin

  insert into db_pos_restaurant.receipts( 
    cashier_session_id
   ,tendered
   ,or_number
   ,receipt_date
   ,discount
   ,credit
   ,approval_code
   ,member_id
   ,is_payed


 )
  values( 
    a_cashier_session_id
   ,a_tendered
   ,a_or_number
   ,a_receipt_date 
   ,a_discount
   ,a_credit
   ,a_approval_code
   ,a_member_id
   ,a_is_payed   
   

);

  set @c_receipt_id = last_insert_id();

  select po.or_number from db_pos_restaurant.receipts po where po.or_number = @c_receipt_id;

end $$

DELIMITER ;

--
-- Definition of procedure `p_receipt_items_add`
--

DROP PROCEDURE IF EXISTS `p_receipt_items_add`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_receipt_items_add`(
  a_receipt_id int
 ,a_product_name varchar(100)
 ,a_unit_price double
 ,a_qty double
 ,a_category varchar(100)
 ,a_type varchar(100)
 ,a_desc varchar(200)
)
begin

  insert into db_pos_restaurant.receipt_items( 
    receipt_id, product_name, unit_price, qty ,cat_name,type_name,description) 
  values ( a_receipt_id, a_product_name, a_unit_price, a_qty ,a_category,a_type,a_desc);

end $$

DELIMITER ;

--
-- Definition of procedure `p_ret_cashier_session`
--

DROP PROCEDURE IF EXISTS `p_ret_cashier_session`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_ret_cashier_session`(
  a_name varchar(100)
 ,a_date varchar(100)  
)
begin 
 
 select cs.id 
 from db_pos_restaurant.cashier_sessions cs
 where cs.cashier_name = a_name
  and date(created) = a_date;

end $$

DELIMITER ;

--
-- Definition of procedure `p_save_new_product`
--

DROP PROCEDURE IF EXISTS `p_save_new_product`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_save_new_product`(
  a_lookup_code varchar(100)
 ,a_prod_name varchar(100)
 ,a_desc  varchar(100)
 ,a_price double
 ,a_qty_per_head double
 ,a_qty double
 ,a_remarks varchar(100)
)
begin
  
  insert into db_pos_restaurant.products(
    lookup_code
   ,product_name
   ,description
   ,price
   ,qty_per_head
   ,product_qty
   ,remarks
  ) values(
    a_lookup_code 
   ,a_prod_name 
   ,a_desc  
   ,a_price
   ,a_qty_per_head 
   ,a_qty 
   ,a_remarks 
 );

end $$

DELIMITER ;

--
-- Definition of procedure `p_select_pending_lists`
--

DROP PROCEDURE IF EXISTS `p_select_pending_lists`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_select_pending_lists`(
  a_customer_name varchar(100)
)
begin

  select
    p.qty
   ,p.product_name
   ,p.price
   ,p.amount
  from db_pos_restaurant.pending_order_details p
  where customer_name = a_customer_name;

end $$

DELIMITER ;

--
-- Definition of procedure `p_update_product`
--

DROP PROCEDURE IF EXISTS `p_update_product`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_update_product`(
  a_product_name varchar(100)
 ,a_price double
 ,a_est_heads double
 ,a_no_of_heads double
)
begin 
  update db_pos_restaurant.products p
    set p.price = a_price
       ,p.qty_per_head = a_est_heads
       ,p.product_qty = a_no_of_heads
       ,p.product_qty2 = a_no_of_heads
  where
    product_name like a_product_name;


  

end $$

DELIMITER ;

--
-- Definition of procedure `select_sesion_id`
--

DROP PROCEDURE IF EXISTS `select_sesion_id`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_sesion_id`(
     a_name varchar(100)
    ,a_date datetime
)
begin
    
    select cs.id 
    from db_pos_restaurant.cashier_sessions cs
    where cs.cashier_name = a_name
      and date(cs.created) between date(a_date) and adddate(date(a_date), 0)
      and cs.login_status = 1;


end $$

DELIMITER ;

--
-- Definition of procedure `select_user_details2`
--

DROP PROCEDURE IF EXISTS `select_user_details2`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_user_details2`(
    a_user_name varchar(100)
)
begin

select 
  p.user_code
 ,p.user_name
 ,p.password
 ,p.user_level
from
db_pos_restaurant.users p where user_name=a_user_name;

end $$

DELIMITER ;

--
-- Definition of procedure `update_inventory`
--

DROP PROCEDURE IF EXISTS `update_inventory`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_inventory`(
    a_name varchar(100)
    ,a_count double 
    ,a_variance double
    ,a_date date
    ,a_time varchar(100)
)
begin
    update db_pos_restaurant.inventory set
    physical_count=a_count
    ,variance=a_variance
    where name=a_name
    and date(date_added) between date(a_date) and date(a_date)
    and time(date_added)=a_time
    ;
end $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
