-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: CareTakr
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `BillRecords`
--

DROP TABLE IF EXISTS `BillRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BillRecords` (
  `Bill_ID` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Bill_Amount` decimal(17,12) DEFAULT NULL,
  `MechanicID` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UserID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BillRecords`
--

LOCK TABLES `BillRecords` WRITE;
/*!40000 ALTER TABLE `BillRecords` DISABLE KEYS */;
INSERT INTO `BillRecords` VALUES ('CATKA7Z',2925.220000000000,'MECH301',1),('CATKD70',5402.040000000000,'MECH302',2),('CATKAH5',16566.020000000000,'MECH303',3),('CATK5WN',409.460000000000,'MECH304',4),('CATK6LU',1757.020000000000,'MECH305',5),('CATK4R3',1770.000000000000,'MECH306',6),('CATKTWE',29357.219999999998,'MECH307',7),('CATK640',383.500000000000,'MECH308',8),('CATKCAQ',1142.240000000000,'MECH309',9),('CATK5MQ',1574.120000000000,'MECH310',10);
/*!40000 ALTER TABLE `BillRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Breakdown`
--

DROP TABLE IF EXISTS `Breakdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Breakdown` (
  `Breakdown_ID` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Breakdown_Type_ID` varchar(4) NOT NULL,
  `VehicleID` varchar(17) NOT NULL,
  `MechanicID` varchar(7) NOT NULL,
  PRIMARY KEY (`Breakdown_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Breakdown`
--

LOCK TABLES `Breakdown` WRITE;
/*!40000 ALTER TABLE `Breakdown` DISABLE KEYS */;
INSERT INTO `Breakdown` VALUES ('BR_01','B_01','1NXBB02E2TZ430357','MECH301'),('BR_02','B_02','KL8CB6S98EC440293','MECH302'),('BR_03','B_03','3FRNF6FC8FV716477','MECH303'),('BR_04','B_04','2FMDK48C79BA77974','MECH304'),('BR_05','B_05','2FMDK48C79BA77975','MECH305');
/*!40000 ALTER TABLE `Breakdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BreakdownType`
--

DROP TABLE IF EXISTS `BreakdownType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BreakdownType` (
  `Breakdown_Type_ID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BreakDown_Type` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Breakdown_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BreakdownType`
--

LOCK TABLES `BreakdownType` WRITE;
/*!40000 ALTER TABLE `BreakdownType` DISABLE KEYS */;
INSERT INTO `BreakdownType` VALUES ('B_01','Flat Tyre'),('B_02','Car not Starting '),('B_03','Engine Oil Leak '),('B_04','Smoke Under neath hood');
/*!40000 ALTER TABLE `BreakdownType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GarageDatabase`
--

DROP TABLE IF EXISTS `GarageDatabase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GarageDatabase` (
  `GarageID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Garage_Name` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `None` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Garage_Location` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Garage_Phone_Number` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Manufacturer_ID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CaretakrID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GarageDatabase`
--

LOCK TABLES `GarageDatabase` WRITE;
/*!40000 ALTER TABLE `GarageDatabase` DISABLE KEYS */;
INSERT INTO `GarageDatabase` VALUES ('GAR10001','Dalvi Service Centre ','None','Pune Solapur Road, Hadapsar, Pune - 411028, Vishwas Complex Behind Vikas Petrol Pump ','7947199860','MSZ','C9876544'),('GAR10002','Care Care Services ','None','Plot No 120/A/B/5, Sinhagad Road, Dattawadi, Pune - 411030, Near Navashya Maruti Mandir','None','HMC','C9876544'),('GAR10003','Guru Autolines ','None','Bosch Car Service, Kharadi, Pune - 411014, Opposite World Trade Center Near Eon IT Park Circle ','7947195981','TKM','C9876544'),('GAR10004','Yash Motors ','None','kamdhenu estate flat no 32wing A, nr mantri market, Hadapsar, Pune - 411028, NR BHAJI MANDA','9605682424','HOM','C9876544'),('GAR10006','Vijaya Auro Care ','None','Mayur Colony Road, Kothrud, Pune - 411029, Near Chaturshingi Snack Centre, Mayur Colony','9371014891','VAG','C9876544'),('GAR10007','Maruti Service ','None','Shop No 2, Lane No 11, Sangit Sarita Apartment, Kothrud, Pune - 411038,','None','None','C9876544'),('GAR10008','None','None','Near Chetan Super Market, Last Bus Stop, Krushna Colony, Shikshak Nagar, Paramhans Nagar ','8448186484','None','C9876544'),('GAR10010','Sangameshwar Auto Garage ','None','Wakad, Pune - 411057, Near Dominos','9657520073','None','C9876544'),('GAR10011','JK automobiles ','None','Shop No. 2, Datta Mandir Road, Wakad, Pune - 411057, Near Paradise Society','8551894068','None','C9876544'),('GAR10013','Automotive Engineering Workshop','None','Viman Nagar Road, Viman Nagar, Pune - 411014, Near Konark Nagar ','7947197535','None','C9876544'),('GAR10014','Maruti Automobile ','None','Near Royal Tower, Viman Nagar, Pune - 411014','26872529','None','C9876544'),('GAR10016','Auto Solutions ','None','Survey No 35/1/1/3, Mumbai Bangalore Highway, Baner, Pune - 411045, Near Renault Showroom','7977199400','None','C9876544'),('GAR10017','Yogi Multicar Sevices ','None','Veer Bhadra Nagar, HMCunje Road, Baner, Pune - 411045, Near Ganraj Mangal Karyalay','7947200140','None','C9876544'),('GAR10019','SAI services ','None','J M Road, Shivaji Nagar, Pune - 411005, Near Bus Stop, Jungli Maharaj Mandir','8793440576','None','C9876544'),('GAR10020','General Motor Garage','None','114, Shivaji Nagar, Pune - 411005, Opposite Corporation Building','9783449571','None','C9876544'),('GAR10022','Jayesh Auto Garage','None','Servey No 158, Ambedker Putla, Pimpri, Pune - 411018,','9049240019','None','C9876544'),('GAR10023','None','None',' Kharalwadi,Behind Bagwat Geeta Mandir,Nr Shanti Arts Bld','None','None','C9876544'),('GAR10024','Sharma Motors ','None','Pimpri, Pune - 411018, Nr Masoba Mandir','8888589968','None','C9876544'),('GAR10026','Shaonak Auto Services ','None','D.P.Road Main Road, Aundh, Pune - 411007, Near.Meripoint Hospital','9049453314','None','C9876544'),('GAR10027','National Auto Care','None','Behind Aditi Samruddhi, Baner Pimple Nilakh Road, Baner, Pune - 411045, Near Smashan Bhumi','8855950626','None','C9876544');
/*!40000 ALTER TABLE `GarageDatabase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Login` (
  `Username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Password` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Login_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES ('arihant_surana22','Arisurana22$',1),('asad_azam_192','GamerBoi69',2),('arachnodev','arachnodev99',3);
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manufacturer`
--

DROP TABLE IF EXISTS `Manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manufacturer` (
  `Manufacturer_Name` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Manufacturer_ID` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer`
--

LOCK TABLES `Manufacturer` WRITE;
/*!40000 ALTER TABLE `Manufacturer` DISABLE KEYS */;
INSERT INTO `Manufacturer` VALUES ('Maruti Suzuki','MSZ'),('Hyundai','HMC'),('Toyota','TKM'),('Honda','HOM'),('Volkswagen ','VAG');
/*!40000 ALTER TABLE `Manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MechanicDatabase`
--

DROP TABLE IF EXISTS `MechanicDatabase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MechanicDatabase` (
  `Mechanic_ID` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `First_Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Last_name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Mechanic_Location` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GarageID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MechanicDatabase`
--

LOCK TABLES `MechanicDatabase` WRITE;
/*!40000 ALTER TABLE `MechanicDatabase` DISABLE KEYS */;
INSERT INTO `MechanicDatabase` VALUES ('MECH301','Anand','Taneja','AUNDH','GAR10001'),('MECH302','Nilam ','Subramaniyam','HADAPSAR','GAR10002'),('MECH303','Gaurav ','Mander ','SHIVAJI NAGAR','GAR10003'),('MECH304','Mohit ','Ganguly','BANER','GAR10004'),('MECH305','Mohan ','Chand ','WAKAD','GAR10005'),('MECH306','Srinivasa ','Reddy','PIMPRI','GAR10006'),('MECH307','Rocky','MechanicWala','AUNDH','GAR10007'),('MECH308','Hardeep ','Suksma','HADAPSAR','GAR10008'),('MECH309','Vijai ','Sitharan','SHIVAJI NAGAR','GAR10009'),('MECH310','Abdullah ','Shaikh','BANER','GAR10010'),('MECH311','Rajesh ','Shukhla','WAKAD','GAR10011'),('MECH312','Shyam','Kumar','PIMPRI','GAR10012');
/*!40000 ALTER TABLE `MechanicDatabase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MechanicPhoneNumber`
--

DROP TABLE IF EXISTS `MechanicPhoneNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MechanicPhoneNumber` (
  `Mechanic_ID` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Phone_Number` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MechanicPhoneNumber`
--

LOCK TABLES `MechanicPhoneNumber` WRITE;
/*!40000 ALTER TABLE `MechanicPhoneNumber` DISABLE KEYS */;
INSERT INTO `MechanicPhoneNumber` VALUES ('MECH301',9055553292),('MECH302',9155584721),('MECH303',9055504373),('MECH304',9055573145),('MECH305',8555681629),('MECH306',7555133606),('MECH307',9955597853),('MECH308',9255598086),('MECH309',9555575465),('MECH310',7555983772),('MECH311',7555075903),('MECH312',7555287524);
/*!40000 ALTER TABLE `MechanicPhoneNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaymentRecords`
--

DROP TABLE IF EXISTS `PaymentRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PaymentRecords` (
  `Payment_ID` varchar(7) NOT NULL,
  `Mode_of_Payment` varchar(12) NOT NULL,
  `Time_Stamp` timestamp NOT NULL,
  `Mechanic_Cost` int NOT NULL,
  `Status` varchar(10) NOT NULL,
  `BillID` varchar(7) NOT NULL,
  `UserID` int NOT NULL,
  `GarageID` varchar(8) NOT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaymentRecords`
--

LOCK TABLES `PaymentRecords` WRITE;
/*!40000 ALTER TABLE `PaymentRecords` DISABLE KEYS */;
INSERT INTO `PaymentRecords` VALUES ('PAY1001','Paytm','2020-07-08 06:42:35',2479,'Completed ','CATKA7Z',1,'GAR10001'),('PAY1002','Paytm','2019-05-04 09:43:21',4578,'Pending','CATKD70',2,'GAR10002'),('PAY1003','Google Pay','2020-02-22 14:58:28',14039,'Completed ','CATKAH5',3,'GAR10003'),('PAY1004','Credit card ','2016-10-22 06:58:28',347,'Terminated','CATK5WN',4,'GAR10004'),('PAY1005','Credit card ','2019-05-22 21:50:37',1489,'Pending','CATK6LU',5,'GAR10005'),('PAY1006','Paytm','2020-09-25 07:54:40',1500,'Pending','CATK4R3',6,'GAR10006'),('PAY1007','PhonePe','2020-03-25 14:42:42',24879,'Completed ','CATKTWE',7,'GAR10007'),('PAY1008','Google Pay','2019-06-29 12:42:43',325,'Completed ','CATK640',8,'GAR10008'),('PAY1009','Debit Card','2019-06-25 15:42:43',968,'Terminated','CATKCAQ',9,'GAR10009'),('PAY1010','Net Banking','2020-06-12 16:47:37',1334,'Terminated','CATK5MQ',10,'GAR10010');
/*!40000 ALTER TABLE `PaymentRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRecords`
--

DROP TABLE IF EXISTS `PermissionRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PermissionRecords` (
  `Permission_No` int DEFAULT NULL,
  `Permission_ID` int DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `CaretakrID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRecords`
--

LOCK TABLES `PermissionRecords` WRITE;
/*!40000 ALTER TABLE `PermissionRecords` DISABLE KEYS */;
INSERT INTO `PermissionRecords` VALUES (1,100001,1,'C9876543'),(2,100002,2,'C9876543'),(3,100001,3,'C9876543'),(4,100002,4,'C9876543'),(5,100001,5,'C9876543'),(6,100002,6,'C9876543');
/*!40000 ALTER TABLE `PermissionRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionType`
--

DROP TABLE IF EXISTS `PermissionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PermissionType` (
  `Permission_ID` int DEFAULT NULL,
  `Permission_Name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionType`
--

LOCK TABLES `PermissionType` WRITE;
/*!40000 ALTER TABLE `PermissionType` DISABLE KEYS */;
INSERT INTO `PermissionType` VALUES (100001,'Access Contacts'),(100002,'Access Location'),(100001,'Access Contacts'),(100002,'Access Location'),(100001,'Access Contacts'),(100002,'Access Location');
/*!40000 ALTER TABLE `PermissionType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceProvidingCompany`
--

DROP TABLE IF EXISTS `ServiceProvidingCompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ServiceProvidingCompany` (
  `CareTakrID` int NOT NULL,
  `ContactUs` bigint NOT NULL,
  `Location` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CareTakr_Pvt_Ltd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`CareTakrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceProvidingCompany`
--

LOCK TABLES `ServiceProvidingCompany` WRITE;
/*!40000 ALTER TABLE `ServiceProvidingCompany` DISABLE KEYS */;
INSERT INTO `ServiceProvidingCompany` VALUES (1,9942179170,'Ambegaon, Pune, Maharashtra','CareTakr'),(2,9878257559,'Aundh, Pune, Maharashtra','CareTakr'),(3,9945298535,'Baner, Pune, Maharashtra','CareTakr'),(4,9847734384,'Bavdhan Khurd, Pune, Maharashtra','CareTakr'),(5,9946403466,'Bavdhan Budruk, Pune, Maharashtra','CareTakr'),(6,9708868840,'Balewadi, Pune, Maharashtra','CareTakr'),(7,9879753666,'Shivajinagar, Pune, Maharashtra','CareTakr'),(8,9709068168,'Bibvewadi, Pune, Maharashtra','CareTakr'),(9,9735488694,'Bhugaon, Pune, Maharashtra','CareTakr'),(10,9814749734,'Bhukum, Pune, Maharashtra','CareTakr'),(11,9799104654,'Dhankawadi, Pune, Maharashtra','CareTakr'),(12,9731392179,'Dhanori, Pune, Maharashtra','CareTakr'),(13,9687027235,'Dhayari, Pune, Maharashtra','CareTakr'),(14,9785816299,'Erandwane, Pune, Maharashtra','CareTakr'),(15,9724575314,'Fursungi, Pune, Maharashtra','CareTakr'),(16,9858313453,'Ghorpadi, Pune, Maharashtra','CareTakr'),(17,9876718150,'Hadapsar, Pune, Maharashtra','CareTakr'),(18,9765301831,'Hingne Khurd, Pune, Maharashtra','CareTakr'),(19,9674353746,'Karve Nagar, Pune, Maharashtra','CareTakr'),(20,9781402060,'Kalas, Pune, Maharashtra','CareTakr'),(21,9870184754,'Katraj, Pune, Maharashtra','CareTakr'),(22,9823306850,'Khadki, Pune, Maharashtra','CareTakr'),(23,9828995218,'Kharadi, Pune, Maharashtra','CareTakr'),(24,9824209077,'Kondhwa, Pune, Maharashtra','CareTakr'),(25,9694245259,'Koregaon Park, Pune, Maharashtra','CareTakr'),(26,9802460779,'Kothrud, Pune, Maharashtra','CareTakr'),(27,9740540142,'Manjri, Pune, Maharashtra','CareTakr'),(28,9890323900,'Markal, Pune, Maharashtra','CareTakr'),(29,9942884231,'Mohammed Wadi, Pune, Maharashtra','CareTakr'),(30,9941347400,'Mundhwa, Pune, Maharashtra','CareTakr'),(31,9781678902,'Nanded, Pune, Maharashtra','CareTakr'),(32,9808300856,'Parvati, Pune, Maharashtra','CareTakr'),(33,9919337227,'Panmala, Pune, Maharashtra','CareTakr'),(34,9957500827,'Pashan, Pune, Maharashtra','CareTakr'),(35,9721968670,'Pirangut, Pune, Maharashtra','CareTakr'),(36,9709267736,'Shivane, Pune, Maharashtra','CareTakr'),(37,9880836272,'Sus, Pune, Maharashtra','CareTakr'),(38,9905177014,'Undri, Pune, Maharashtra','CareTakr'),(39,9776382743,'Vishrantwadi, Pune, Maharashtra','CareTakr'),(40,9671706069,'Vitthalwadi, Pune, Maharashtra','CareTakr'),(41,9858466396,'Vadgaon Khurd, Pune, Maharashtra','CareTakr'),(42,9940743132,'Vadgaon Budruk, Pune, Maharashtra','CareTakr'),(43,9868539588,'Wadgaon Sheri, Pune, Maharashtra','CareTakr'),(44,9930904750,'Wagholi, Pune, Maharashtra','CareTakr'),(45,9844343958,'Wanowrie, Pune, Maharashtra','CareTakr'),(46,9907557895,'Warje, Pune, Maharashtra','CareTakr'),(47,9844205213,'Yerwada, Pune, Maharashtra','CareTakr');
/*!40000 ALTER TABLE `ServiceProvidingCompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `UserID` int NOT NULL,
  `First_Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Last_Name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User_Location` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LoginID` int DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Arihant ','Surana','arihantsurana22@gmailcom ','Pune ',1),(2,'Asad','Azam ','asadazam@gmail.com','Pune ',2),(3,'Debashruto','Bhattacharya','dbdeshbhai@gmail.com','Pune ',3);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPhoneNumber`
--

DROP TABLE IF EXISTS `UserPhoneNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserPhoneNumber` (
  `User_ID` int DEFAULT NULL,
  `Phone_Number` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPhoneNumber`
--

LOCK TABLES `UserPhoneNumber` WRITE;
/*!40000 ALTER TABLE `UserPhoneNumber` DISABLE KEYS */;
INSERT INTO `UserPhoneNumber` VALUES (1,9652953576),(2,8250881703),(3,9101579123);
/*!40000 ALTER TABLE `UserPhoneNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VehicleCategory`
--

DROP TABLE IF EXISTS `VehicleCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VehicleCategory` (
  `CategoryID` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `VehicleID` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Variant_ID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VehicleCategory`
--

LOCK TABLES `VehicleCategory` WRITE;
/*!40000 ALTER TABLE `VehicleCategory` DISABLE KEYS */;
INSERT INTO `VehicleCategory` VALUES ('U5I27','1NXBB02E2TZ430357','None'),('U5I27','KL8CB6S98EC440293','None'),('U5I27','3FRNF6FC8FV716477','None'),('3FUVI','2FMDK48C79BA77974','None'),('KPM7L','3GYFNBE38ES602939','None'),('EUM6A','1GNEK13T45R123015','None'),('U5I27','1FM5K7D87DGB05278','None'),('U5I27','3GNEC12067G137618','None'),('CJBK3','2HNYD28699H586096','None'),('NJBK3','3C4FY48B44T304327','None'),('CJBK3','WDBSK75F53F006692','None'),('CJBK3','1N4AL3AP5DN546428','None'),('CJBK3','3HSDJSJR6CN407234','None'),('U5I27','1HVBAZRP4LH270293','None'),('U5I27','1G4BT52P3RR447370','None'),('EUM6A','2HGFG12606H512246','None'),('CJBK3','2T1BU4EE1CC853686','None'),('3FUVI','1G11C5SA6DF285376','None'),('CJBK3','JTEZU14R070093036','None'),('U5I27','3FADP4FJXDM173375','None'),('MJBK3','JN1CA21D5ST034012','None'),('EUM6A','1G11B5SL6FF212693','None'),('U5I27','1GNSKKKC7FR165349','None'),('KPM7L','2G4WS52J051140354','None'),('EUM6A','WBAVC53507FZ81162','None'),('U5I27','1FT7X2B61EEA82483','None'),('EUM6A','3C4PDCAB6ET132632','None'),('U5I27','5FPYK1F58EB006473','None'),('U5I27','KNAFT4A28C5624903','None'),('KPM7L','WBADX7C52BE579024','None'),('EUM6A','1G6DP567250152791','None'),('MJBK3','1FTRW12W76KD82487','None'),('U5I27','2C3KA53G96H525787','None'),('U5I27','5FNYF4H27CB016393','None'),('U5I27','5FNRL18724B047012','None'),('U5I27','1C6RR7KT5ES226101','None'),('3FUVI','1J4GS5877KP111060','None'),('EUM6A','1GCEC14X75Z134467','None'),('U5I27','JTJHA31U260178887','None'),('CJBK3','1N6AD0EV3AC434651','None'),('KPM7L','1FMFU18L7VLC09448','None'),('CJBK3','1GCHK29K98E164973','None'),('MJBK3','2G4WS52J331202388','None'),('EUM6A','JTHBJ46G872079206','None');
/*!40000 ALTER TABLE `VehicleCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VehicleDatabase`
--

DROP TABLE IF EXISTS `VehicleDatabase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VehicleDatabase` (
  `Vehicle_ID` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UserID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Registration_No` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ManufacturerID` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Additional_Information` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VehicleDatabase`
--

LOCK TABLES `VehicleDatabase` WRITE;
/*!40000 ALTER TABLE `VehicleDatabase` DISABLE KEYS */;
INSERT INTO `VehicleDatabase` VALUES ('1NXBB02E2TZ430357','1','LCZ 5841','MSZ','None'),('KL8CB6S98EC440293','2','MCZ 2477','HMC','None'),('3FRNF6FC8FV716477','3','PGU 972K','TMC','None'),('2FMDK48C79BA77974','4','VXO 174','HOM','None'),('3GYFNBE38ES602939','5','679 KUG','VAG','None'),('1GNEK13T45R123015','6','2 UPX','HOM','None'),('1FM5K7D87DGB05278','7','YFE 9','MSZ','None'),('3GNEC12067G137618','8','407 OFM','MSZ','None');
/*!40000 ALTER TABLE `VehicleDatabase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VehicleModel`
--

DROP TABLE IF EXISTS `VehicleModel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VehicleModel` (
  `Model` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Availability` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Model_ID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Category_ID` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VehicleModel`
--

LOCK TABLES `VehicleModel` WRITE;
/*!40000 ALTER TABLE `VehicleModel` DISABLE KEYS */;
INSERT INTO `VehicleModel` VALUES ('i10','NO','None','U5I27'),('i20','NO','None','None'),('Santro','YES','None','U5I27'),('Verna','YES','None','None'),('Xcent','YES','None','None'),('i20 Active','NO','None','None'),('Elite i20','YES','None','None'),('Grand i10','NO','None','None'),('Creta','YES','None','None'),('Fortuner','YES','None','None'),('Innova Crysta','YES','None','None'),('Yaris','YES','None','None'),('Etios','NO','None','None'),('Etios Liva','NO','None','None'),('Etios Cross','NO','None','None'),('Glanza','YES','None','None'),('Accord','NO','None','None'),('City','YES','None','None'),('Civic','NO','None','None'),('Jazz','YES','None','None'),('BR-V','NO','None','None'),('WR-V','YES','None','None'),('Brio','NO','None','None'),('Amaze','YES','None','None'),('CR-V','YES','None','None'),('Swift','YES','None','None'),('Vitara Brezza','YES','None','None'),('Wagon-R','YES','None','None'),('Ritz','NO','None','None'),('Dzire','YES','None','None'),('S-Presso','YES','None','None'),('Ertiga','NO','None','None'),('Baleno','NO','None','U5I27'),('Alto 800','NO','None','U5I27'),('Celerio','YES','None','U5I27'),('Ignis','YES','None','U5I27'),('Ciaz','YES','None','None'),('S-Cross','YES','None','None'),('Polo','YES','None','None'),('Vento','YES','None','None'),('Ameo','NO','None','None'),('Passat','YES','None','None'),('Tiguan','YES','None','None'),('Cross Polo','NO','None','None');
/*!40000 ALTER TABLE `VehicleModel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VehicleVariant`
--

DROP TABLE IF EXISTS `VehicleVariant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VehicleVariant` (
  `Variant_ID` int NOT NULL,
  `Variant` varchar(12) NOT NULL,
  PRIMARY KEY (`Variant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VehicleVariant`
--

LOCK TABLES `VehicleVariant` WRITE;
/*!40000 ALTER TABLE `VehicleVariant` DISABLE KEYS */;
/*!40000 ALTER TABLE `VehicleVariant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-06 22:50:00
