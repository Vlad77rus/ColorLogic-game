CREATE TABLE `games` (
  `Game_Id` int NOT NULL AUTO_INCREMENT,
  `Gamer_Id` int NOT NULL,
  `Start_Date_Time` int DEFAULT NULL,
  `End_Data_Time` int DEFAULT NULL,
  `Game_Time` int DEFAULT NULL,
  `Nimber_Hod` int DEFAULT NULL,
  `Game_Level` int DEFAULT NULL,
  PRIMARY KEY (`Game_Id`),
  KEY `idx_game_Game_Id` (`Game_Id`) /*!80000 INVISIBLE */,
  KEY `idx_game_Gamer_Id` (`Gamer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
