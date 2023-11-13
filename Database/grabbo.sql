-- MySQL dump 10.13  Distrib 8.1.0, for macos13 (x86_64)
--
-- Host: localhost    Database: grabbo
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Beverages`
--

DROP TABLE IF EXISTS `Beverages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Beverages` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Class` varchar(30) DEFAULT NULL,
  `Sub_Class` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Beverages`
--

LOCK TABLES `Beverages` WRITE;
/*!40000 ALTER TABLE `Beverages` DISABLE KEYS */;
INSERT INTO `Beverages` VALUES ('amul100','Amul Masti Buttermilk',56,15,'Liquid','Buttermilk',NULL),('amul101','Amul Kool Cold Coffee',32,25,'Liquid','Flavoured Milk',NULL),('amul105','Amul Lassi',25,20,'Liquid','Buttermilk Curd',NULL),('amul108','Amul Kool Kesar Pista',8,25,'Liquid','Flavoured Milk',NULL),('ca100','Cavins Strawberry Milk',12,30,'Liquid','Flavoured Milk',NULL),('ca101','Cavins Chocolate Milk',14,30,'Liquid','Flavoured Milk',NULL),('dab100','Real Fruit Juice Mixed Fruit',15,20,'Juice','Mixed Fruit',NULL),('dab101','Real Fruit Juice Apple',15,20,'Juice','Apple',NULL),('hind100','Coca-Cola',17,35,'Soft-drinks','cola',NULL),('hind101','Coca-Cola Zero Sugar',10,40,'Soft-drinks','cola',NULL),('hind102','Thumbs Up',12,35,'Soft-drinks','cola',NULL),('hind103','Limca Lime \'n\' Lemon',6,30,'Soft-drinks','lemon',NULL),('md100','Mother Dairy Buttermilk',12,14,'Liquid','Buttermilk',NULL),('par105','Appy Apple Juice',10,15,'Juice','Apple',NULL),('pepsi100','7 up Nimbooz',20,20,'Soft-drinks','lemon',NULL),('pepsi101','Pepsi',15,35,'Soft-drinks','cola',NULL);
/*!40000 ALTER TABLE `Beverages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biscuits`
--

DROP TABLE IF EXISTS `biscuits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biscuits` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Class` varchar(30) DEFAULT NULL,
  `Sub_Class` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biscuits`
--

LOCK TABLES `biscuits` WRITE;
/*!40000 ALTER TABLE `biscuits` DISABLE KEYS */;
INSERT INTO `biscuits` VALUES ('brit100','Britannia Tiger Krunch Chocochips',24,10,'Sweet','Chocolate',NULL),('brit101','Britannia Jim-Jam',38,20,'Sweet','Vanilla Cream',NULL),('brit102','Britannia Milk Bikis',26,15,'Sweet','Plain',NULL),('brit103','Britannia Good Day Pista Badam',25,10,'Sweet','Nuts',NULL),('cad100','Cadburry Oreo Chocolate',40,10,'Sweet','Chocolate Cream',NULL),('cad101','Cadburry Oreo Vanilla',30,10,'Sweet','Vanilla Cream',NULL),('cad102','Cadburry Bournvita',12,10,'Sweet','Chocolate Glucose',NULL),('lot100','Lotte ChocoPie',30,10,'Sweet','Chocolate Vanilla',NULL),('par100','Parle G',50,5,'Sweet','Glucose',NULL),('par101','Parle Hide & Seek',28,30,'Sweet','Chocolate',NULL),('par102','Parle Marie Gold',15,40,'Sweet','Plain',NULL),('par103','Parle Krack-Jack Butter Masala',22,20,'Masala','Sweet & Salty',NULL),('par104','Parle Monaco',20,15,'Masala','Sweet & Salty',NULL),('sun100','Sunfeast Glucose Plus',31,10,'Sweet','Glucose',NULL),('sun101','Sunfeast Dark Fantasy',15,20,'Sweet','Chocolate Cream',NULL),('uni100','Unibic Sugar-Free Cashew',10,35,'Sweet','Nuts',NULL);
/*!40000 ALTER TABLE `biscuits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dairy`
--

DROP TABLE IF EXISTS `Dairy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dairy` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Class` varchar(30) DEFAULT NULL,
  `Sub_Class` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dairy`
--

LOCK TABLES `Dairy` WRITE;
/*!40000 ALTER TABLE `Dairy` DISABLE KEYS */;
INSERT INTO `Dairy` VALUES ('amul100','Amul Masti Buttermilk',56,15,'Liquid','Buttermilk',NULL),('amul101','Amul Kool Cold Coffee',32,25,'Liquid','Flavoured Milk',NULL),('amul102','Amul Paneer',10,80,'Solid','Cheese',NULL),('amul103','Amul Milk - Tonned',20,54,'Liquid','Milk',NULL),('amul104','Amul Milk - Full Cream',15,65,'Liquid','Milk',NULL),('amul105','Amul Lassi',25,20,'Liquid','Buttermilk Curd',NULL),('amul106','Amul Curd',11,40,'Liquid','Yogurt',NULL),('amul107','Amul Butter',19,55,'Solid','Butter',NULL),('amul108','Amul Kool Kesar Pista',8,25,'Liquid','Flavoured Milk',NULL),('an100','Ananda Paneer',5,82,'Solid','Cheese',NULL),('ca100','Cavins Strawberry Milk',12,30,'Liquid','Flavoured Milk',NULL),('ca101','Cavins Chocolate Milk',14,30,'Liquid','Flavoured Milk',NULL),('md100','Mother Dairy Buttermilk',12,14,'Liquid','Buttermilk',NULL),('md101','Mother Dairy Milk',7,58,'Liquid','Milk',NULL),('md102','Mother Dairy Curd',7,35,'Liquid','Yogurt',NULL),('nu100','Nutrilite Butter',5,45,'Solid','Butter',NULL);
/*!40000 ALTER TABLE `Dairy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Household`
--

DROP TABLE IF EXISTS `Household`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Household` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Class` varchar(30) DEFAULT NULL,
  `Sub_Class` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Household`
--

LOCK TABLES `Household` WRITE;
/*!40000 ALTER TABLE `Household` DISABLE KEYS */;
INSERT INTO `Household` VALUES ('class100','Classmate Notebook',12,150,'Stationary','Notebook',NULL),('dura100','Duracell Battery 4 pack',10,190,'Battery','Battery',NULL),('gn100','Good Knight Mosquito Repellent Refill',30,80,'Repellent','Repellent',NULL),('gn101','Good Knight Mosquito Repellent Coil',14,39,'Repellent','Repellent',NULL),('surf100','Surf Excel Liquid Detergent',5,490,'Detergent','Laundry',NULL),('surf101','Tide Matic Liquid Detergent',8,430,'Detergent','Laundry',NULL),('surf102','Rin Detergent Bar',41,25,'Detergent','Laundry',NULL),('tiss100','Tissue 100 pc',25,42,'Tissue','Tissue',NULL),('tiss101','Toilet Paper roll',17,70,'Tissue','Tissue',NULL),('vim100','Vim Lemon Dishwash Soap',11,125,'Detergent','Utensil',NULL),('vim101','Vim Lemon Dishwash Bar',22,21,'Detergent','Utensil',NULL);
/*!40000 ALTER TABLE `Household` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instant_Food`
--

DROP TABLE IF EXISTS `Instant_Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Instant_Food` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Class` varchar(30) DEFAULT NULL,
  `Sub_Class` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instant_Food`
--

LOCK TABLES `Instant_Food` WRITE;
/*!40000 ALTER TABLE `Instant_Food` DISABLE KEYS */;
INSERT INTO `Instant_Food` VALUES ('maggi100','Maggi Masala Noodles',40,12,'Noodles','Noodles',NULL),('maggi101','Maggi Cuppa Cup Noodles',30,50,'Noodles','Noodles',NULL),('maggi102','Maggi Cheese Pasta',10,32,'Noodles','Pasta',NULL),('nis100','Nissin Masala Cup Noodles',25,50,'Noodles','Noodles',NULL),('nognshim100','Nongshim Shin Ramyun Noodles',10,120,'Noodles','Noodles',NULL),('sun100','Sunfeast Yippie Magic Masala Noodles',14,12,'Noodles','Noodles',NULL),('sun101','Sunfeast Masala Pasta',9,28,'Noodles','Pasta',NULL);
/*!40000 ALTER TABLE `Instant_Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personal_Care`
--

DROP TABLE IF EXISTS `Personal_Care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personal_Care` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Class` varchar(30) DEFAULT NULL,
  `Sub_Class` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personal_Care`
--

LOCK TABLES `Personal_Care` WRITE;
/*!40000 ALTER TABLE `Personal_Care` DISABLE KEYS */;
INSERT INTO `Personal_Care` VALUES ('cinthol100','Cinthol Fresh Lime Bath Soap',15,25,'Bath','Soap',NULL),('cinthol101','Cinthol Cool Bath Soap',16,25,'Bath','Soap',NULL),('col100','Colgate Strong Teeth',23,55,'Toothpaste','Fresh',NULL),('col101','Colgate Vedshakti',12,70,'Toothpaste','Ayurvedic',NULL),('dab102','Dabur Red',11,60,'Toothpaste','Ayurvedic',NULL),('dettol100','Dettol Original Hand Wash',12,75,'Handwash','Handwash',NULL),('dettol101','Dettol Lavendar Hand Wash',9,75,'Handwash','Handwash',NULL),('dettol103','Dettol Cool Hand Wash',10,75,'Handwash','Handwash',NULL),('dove100','Dove Cream Beauty Bathing Soap',13,40,'Bath','Soap',NULL),('dove101','Dove Hair Fall Rescue Shampoo',10,150,'Bath','Shampoo',NULL),('dove102','Dove Deep Moisture Body Wash',16,199,'Bath','Shower gel',NULL),('durex100','Durex Air Ultra Thin Condom',14,90,'Wellness','sexual',NULL),('durex101','Durex Skin-on-skin real feel Condom',9,165,'Wellness','sexual',NULL),('gil100','Gillette Guard One time Razor',40,15,'Grooming','Shave',NULL),('gil101','Gillette Regular Shaving Foam',20,90,'Grooming','Shave',NULL),('him100','Himalaya Neem Facewash',19,199,'Bath','Facewash',NULL),('john100','Johnsons Baby Shampoo',8,185,'Bath','Shampoo',NULL),('kama100','Kamasutra Dotted Condom',11,90,'Wellness','sexual',NULL),('khadi100','Khadi Essentials Aloe Vera Shampoo',7,120,'Bath','Shampoo',NULL),('khadi101','Khadi Neem Facewash',11,119,'Bath','Facewash',NULL),('nivea100','Nivea Body Milk Nourishing Lotion',9,110,'Grooming','Cream',NULL),('nivea101','Nivea Cocoa Nourish Body Lotion',12,125,'Grooming','Cream',NULL),('nivea102','Nivea Men Pure Impact Shower Gel',8,180,'Bath','Shower gel',NULL),('nivea103','Nivea Waterlily & Oil Shower Gel',7,190,'Bath','Shower gel',NULL),('nivea104','Nivea Men Fresh Active Roll on',8,150,'Grooming','Fragrance',NULL),('nivea105','Nivea Women Smooth Skin Roll on',6,150,'Grooming','Fragrance',NULL),('nivea106','Nivea Men Fresh Active Deo Spray',13,125,'Grooming','Fragrance',NULL),('nivea107','Nivea Women Pearl & Beauty Deo Spray',15,125,'Grooming','Fragrance',NULL),('para100','Parachute 100% Pure Coconut Oil',13,60,'Oil','Coconut',NULL),('siro100','Sirona Premium Tampons',10,199,'Wellness','tampons',NULL),('stay100','Stayfree Secure Nights Sanitary Pads',18,130,'Wellness','pads',NULL),('whis100','Whisper Choice Sanitary Pads',20,99,'Wellness','pads',NULL);
/*!40000 ALTER TABLE `Personal_Care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Snacks`
--

DROP TABLE IF EXISTS `Snacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Snacks` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Class` varchar(30) DEFAULT NULL,
  `Sub_Class` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Snacks`
--

LOCK TABLES `Snacks` WRITE;
/*!40000 ALTER TABLE `Snacks` DISABLE KEYS */;
INSERT INTO `Snacks` VALUES ('act100','Act II Butter Popcorn',40,25,'Namkeen','Snacks',NULL),('bik100','Bikano Bikaneri Bhujia',14,59,'Namkeen','Namkeen',NULL),('bing100','Bingo Mad Angles',10,20,'Namkeen','Snacks',NULL),('hald100','Haldiram\'s Plain Bhujia',7,56,'Namkeen','Namkeen',NULL),('hald101','Hadliram\'s Punjabi Tadka',8,56,'Namkeen','Namkeen',NULL),('hald102','Hadliram\'s Aloo Bhujia',12,55,'Namkeen','Namkeen',NULL),('kurk100','Kurkure Puffcorn',11,20,'Namkeen','Snacks',NULL),('kurk101','Kurkure Masala Munch Chips',23,20,'Namkeen','Snacks',NULL),('lays100','Lays Magic Masala Chips',40,20,'Namkeen','Snacks',NULL),('lays101','Lays Cream & Onion Chips',33,20,'Namkeen','Snacks',NULL),('unc100','Uncle Chips',14,30,'Namkeen','Snacks',NULL);
/*!40000 ALTER TABLE `Snacks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14  1:13:47
