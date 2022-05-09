CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `champs` AS
    SELECT 
        `player`.`Player_Name` AS `Логин`,
        `player`.`first_name` AS `Имя`,
        `games`.`Game_Level` AS `Уровень`,
        `games`.`Nimber_Hod` AS `Ходов`,
        `games`.`Game_Time` AS `Время`
    FROM
        (`games`
        JOIN `player`)
    WHERE
        ((`games`.`Gamer_Id` = `player`.`Player_Id`)
            AND (`games`.`Nimber_Hod` IS NOT NULL)
            AND (`games`.`Gamer_Id` <> 480691797)
            AND (`games`.`Gamer_Id` <> 391646311))
    ORDER BY `games`.`Game_Level` DESC , `games`.`Nimber_Hod` , `games`.`Game_Time`
    LIMIT 15