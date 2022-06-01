-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: fruitmarketdb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` varchar(10) NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Weight` varchar(15) NOT NULL DEFAULT '0',
  `Stock` int NOT NULL DEFAULT '0',
  `SupplierID` varchar(10) NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `supplier_products` (`SupplierID`),
  CONSTRAINT `supplier_products` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`supplierid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('1001','Lady Finger Bananas',17.95,'750g',45,'SUPP0001'),('1002','Pink Lady Apples',18.95,'1.5kg',15,'SUPP0001'),('1003','Red Anjou Pears',22.99,'1kg',24,'SUPP0001'),('1004','Cavendish Bananas',15.95,'1kg',18,'SUPP0001'),('2001','Tenderstem Broccoli',35.90,'400g',8,'SUPP0002'),('2002','Portabellini Mushrooms',18.99,'250g',16,'SUPP0002'),('3001','Raw Almonds',99.00,'1kg',6,'SUPP0003'),('3002','Maccaroni Butter',32.95,'410g',9,'SUPP0003'),('3003','Ogarnic Coconut Oil',89.95,'500ml',15,'SUPP0003'),('4001','Ayshire Milk',33.95,'3l',23,'SUPP0004'),('4002','Simonzola Blue Cheese',27.65,'270g',4,'SUPP0004');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `q1_14`
--

DROP TABLE IF EXISTS `q1_14`;
/*!50001 DROP VIEW IF EXISTS `q1_14`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_14` AS SELECT 
 1 AS `user`,
 1 AS `host`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_15`
--

DROP TABLE IF EXISTS `q1_15`;
/*!50001 DROP VIEW IF EXISTS `q1_15`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_15` AS SELECT 
 1 AS `Productid`,
 1 AS `ProductName`,
 1 AS `Price`,
 1 AS `Weight`,
 1 AS `Stock`,
 1 AS `SupplierID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_16`
--

DROP TABLE IF EXISTS `q1_16`;
/*!50001 DROP VIEW IF EXISTS `q1_16`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_16` AS SELECT 
 1 AS `CompanyName`,
 1 AS `Contactno`,
 1 AS `Productname`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_17`
--

DROP TABLE IF EXISTS `q1_17`;
/*!50001 DROP VIEW IF EXISTS `q1_17`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_17` AS SELECT 
 1 AS `Total_unit_price`,
 1 AS `Average_price`,
 1 AS `Number_of_products`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_18`
--

DROP TABLE IF EXISTS `q1_18`;
/*!50001 DROP VIEW IF EXISTS `q1_18`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_18` AS SELECT 
 1 AS `supplierid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_19`
--

DROP TABLE IF EXISTS `q1_19`;
/*!50001 DROP VIEW IF EXISTS `q1_19`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_19` AS SELECT 
 1 AS `Count(ProductID)`,
 1 AS `supplierID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_20`
--

DROP TABLE IF EXISTS `q1_20`;
/*!50001 DROP VIEW IF EXISTS `q1_20`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_20` AS SELECT 
 1 AS `count(productid)`,
 1 AS `supplierid`,
 1 AS `sum(price*stock)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q9`
--

DROP TABLE IF EXISTS `q9`;
/*!50001 DROP VIEW IF EXISTS `q9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q9` AS SELECT 
 1 AS `ProductName`,
 1 AS `Price`,
 1 AS `Weight`,
 1 AS `Stock`,
 1 AS `ProductCategory`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplierid` varchar(10) NOT NULL,
  `CompanyName` varchar(30) NOT NULL,
  `ContactPerson` varchar(30) NOT NULL,
  `contactNo` varchar(13) NOT NULL DEFAULT '000-000-0000',
  `productCategory` varchar(55) NOT NULL,
  PRIMARY KEY (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('SUPP0001','Fruit City','Themba','0115062089','fruit'),('SUPP0002','Vegan Veggie Xpress','Chinyere','0137228936','Vegetables'),('SUPP0003','The Nut House','Sam','0216965133','Nuts'),('SUPP0004','The Lazy Cow','Angelo','0216964157','Dairy'),('SUPP006','Fruit&Veg','Abdu','0216965111','Nuts');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `q1_14`
--

/*!50001 DROP VIEW IF EXISTS `q1_14`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_14` AS select `mysql`.`user`.`User` AS `user`,`mysql`.`user`.`Host` AS `host` from `mysql`.`user` where ((`mysql`.`user`.`User` = 'Philani_M') or (`mysql`.`user`.`User` = 'root')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_15`
--

/*!50001 DROP VIEW IF EXISTS `q1_15`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_15` AS select `products`.`ProductID` AS `Productid`,`products`.`ProductName` AS `ProductName`,`products`.`Price` AS `Price`,`products`.`Weight` AS `Weight`,`products`.`Stock` AS `Stock`,`products`.`SupplierID` AS `SupplierID` from `products` where ((`products`.`Stock` > 20) or (`products`.`Stock` < 10)) order by `products`.`Stock` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_16`
--

/*!50001 DROP VIEW IF EXISTS `q1_16`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_16` AS select `suppliers`.`CompanyName` AS `CompanyName`,`suppliers`.`contactNo` AS `Contactno`,`products`.`ProductName` AS `Productname`,`products`.`Price` AS `Price` from (`suppliers` left join `products` on((`suppliers`.`supplierid` = `products`.`SupplierID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_17`
--

/*!50001 DROP VIEW IF EXISTS `q1_17`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_17` AS select sum(`products`.`Price`) AS `Total_unit_price`,round(avg(`products`.`Price`),0) AS `Average_price`,count(`products`.`ProductID`) AS `Number_of_products` from (`suppliers` left join `products` on((`suppliers`.`supplierid` = `products`.`SupplierID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_18`
--

/*!50001 DROP VIEW IF EXISTS `q1_18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_18` AS select distinct `products`.`SupplierID` AS `supplierid` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_19`
--

/*!50001 DROP VIEW IF EXISTS `q1_19`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_19` AS select count(0) AS `Count(ProductID)`,`suppliers`.`supplierid` AS `supplierID` from (`suppliers` join `products` on((`products`.`SupplierID` = `suppliers`.`supplierid`))) group by `suppliers`.`supplierid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_20`
--

/*!50001 DROP VIEW IF EXISTS `q1_20`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_20` AS select count(`products`.`ProductID`) AS `count(productid)`,`products`.`SupplierID` AS `supplierid`,sum((`products`.`Price` * `products`.`Stock`)) AS `sum(price*stock)` from `products` group by `products`.`SupplierID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q9`
--

/*!50001 DROP VIEW IF EXISTS `q9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q9` AS select `products`.`ProductName` AS `ProductName`,`products`.`Price` AS `Price`,`products`.`Weight` AS `Weight`,`products`.`Stock` AS `Stock`,`suppliers`.`productCategory` AS `ProductCategory` from (`products` left join `suppliers` on((`products`.`SupplierID` = `suppliers`.`supplierid`))) where (`products`.`Stock` < 20) order by `products`.`Price` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31 15:48:00
