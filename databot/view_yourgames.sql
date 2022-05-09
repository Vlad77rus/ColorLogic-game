CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `yourgames` AS
    SELECT 
        `games`.`Gamer_Id` AS `Id`,
        `games`.`Game_Level` AS `Game_L`,
        `games`.`Nimber_Hod` AS `Nim_N`,
        `games`.`Game_Time` AS `G_T`
    FROM
        (`games`
        JOIN `player`)
    WHERE
        ((`games`.`Gamer_Id` = `player`.`Player_Id`)
            AND (`games`.`Nimber_Hod` IS NOT NULL))
    ORDER BY `games`.`Game_Level` DESC , `games`.`Nimber_Hod` , `games`.`Game_Time`