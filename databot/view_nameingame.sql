CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `nameingame` AS
    SELECT 
        `player`.`first_name` AS `Имя`,
        `player`.`last_name` AS `Фамилия`,
        `game`.`Now_Game` AS `В_Игре`,
        `game`.`Level` AS `Уровень`,
        `game`.`hod` AS `Тек_Ход`
    FROM
        (`game`
        JOIN `player`)
    WHERE
        (`game`.`ChatId` = `player`.`Player_Id`)