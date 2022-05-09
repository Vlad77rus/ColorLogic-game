CREATE TABLE `game` (
  `id` int NOT NULL,
  `ChatId` int NOT NULL,
  `Now_Game` int NOT NULL DEFAULT '0',
  `Variant` varchar(45) NOT NULL DEFAULT '0',
  `Level` int NOT NULL DEFAULT '1',
  `hod` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
