CREATE TABLE `player` (
  `Player_Id` int NOT NULL,
  `Player_Name` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `language_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Player_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
