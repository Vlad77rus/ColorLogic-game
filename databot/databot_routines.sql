-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: databot
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `yourgames`
--

DROP TABLE IF EXISTS `yourgames`;
/*!50001 DROP VIEW IF EXISTS `yourgames`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `yourgames` AS SELECT 
 1 AS `Id`,
 1 AS `Game_L`,
 1 AS `Nim_N`,
 1 AS `G_T`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `champs`
--

DROP TABLE IF EXISTS `champs`;
/*!50001 DROP VIEW IF EXISTS `champs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `champs` AS SELECT 
 1 AS `Логин`,
 1 AS `Имя`,
 1 AS `Уровень`,
 1 AS `Ходов`,
 1 AS `Время`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nameingame`
--

DROP TABLE IF EXISTS `nameingame`;
/*!50001 DROP VIEW IF EXISTS `nameingame`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nameingame` AS SELECT 
 1 AS `Имя`,
 1 AS `Фамилия`,
 1 AS `В_Игре`,
 1 AS `Уровень`,
 1 AS `Тек_Ход`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `yourgames`
--

/*!50001 DROP VIEW IF EXISTS `yourgames`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `yourgames` AS select `games`.`Gamer_Id` AS `Id`,`games`.`Game_Level` AS `Game_L`,`games`.`Nimber_Hod` AS `Nim_N`,`games`.`Game_Time` AS `G_T` from (`games` join `player`) where ((`games`.`Gamer_Id` = `player`.`Player_Id`) and (`games`.`Nimber_Hod` is not null)) order by `games`.`Game_Level` desc,`games`.`Nimber_Hod`,`games`.`Game_Time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `champs`
--

/*!50001 DROP VIEW IF EXISTS `champs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `champs` AS select `player`.`Player_Name` AS `Логин`,`player`.`first_name` AS `Имя`,`games`.`Game_Level` AS `Уровень`,`games`.`Nimber_Hod` AS `Ходов`,`games`.`Game_Time` AS `Время` from (`games` join `player`) where ((`games`.`Gamer_Id` = `player`.`Player_Id`) and (`games`.`Nimber_Hod` is not null) and (`games`.`Gamer_Id` <> 480691797) and (`games`.`Gamer_Id` <> 391646311)) order by `games`.`Game_Level` desc,`games`.`Nimber_Hod`,`games`.`Game_Time` limit 15 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nameingame`
--

/*!50001 DROP VIEW IF EXISTS `nameingame`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nameingame` AS select `player`.`first_name` AS `Имя`,`player`.`last_name` AS `Фамилия`,`game`.`Now_Game` AS `В_Игре`,`game`.`Level` AS `Уровень`,`game`.`hod` AS `Тек_Ход` from (`game` join `player`) where (`game`.`ChatId` = `player`.`Player_Id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'databot'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-30  2:24:25
