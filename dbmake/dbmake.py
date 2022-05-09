
from SLdb import DB 

mybase = DB("ColorDB.db")


def CreatTablGame():
    mydb , mycursor = mybase.con()
    sql = f'''CREATE TABLE "game" (
	"id"	INTEGER NOT NULL,
	"ChatId"	INTEGER NOT NULL,
	"Now_Game"	INTEGER NOT NULL DEFAULT 0,
	"Variant"	TEXT NOT NULL DEFAULT 0,
	"Level"	INTEGER NOT NULL DEFAULT 1,
	"hod"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("id")
);'''   
    mycursor.execute(sql)
    mydb.commit()
    mycursor.close()
    mydb.close()


def CreatTablGames():
    mydb , mycursor = mybase.con()
    sql = f'''CREATE TABLE "games" (
  "Game_Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "Gamer_Id" INTEGER NOT NULL,
  "Start_Date_Time" INTEGER DEFAULT NULL,
  "End_Data_Time" INTEGER DEFAULT NULL,
  "Game_Time" INTEGER DEFAULT NULL,
  "Nimber_Hod" INTEGER DEFAULT NULL,
  "Game_Level" INTEGER DEFAULT NULL
);'''
    mycursor.execute(sql)
    mydb.commit()
    mycursor.close()
    mydb.close()


def CreatTablklava():
    mydb , mycursor = mybase.con()
    sql = f'''CREATE TABLE "klava" (
  "id" int NOT NULL,
  "Klava_Var" int DEFAULT NULL,
  PRIMARY KEY ("id")
);'''
    mycursor.execute(sql)
    mydb.commit()
    mycursor.close()
    mydb.close()


def CreatTablplayer():
    mydb , mycursor = mybase.con()
    sql = f'''CREATE TABLE "player" (
  "Player_Id" int NOT NULL,
  "Player_Name" varchar(45) DEFAULT NULL,
  "first_name" varchar(45) DEFAULT NULL,
  "last_name" varchar(45) DEFAULT NULL,
  "title" varchar(45) DEFAULT NULL,
  "language_code" varchar(10) DEFAULT NULL,
  PRIMARY KEY ("Player_Id")
);'''
    mycursor.execute(sql)
    mydb.commit()
    mycursor.close()
    mydb.close()
    print('все ок')


def CreatViewchamps():
    mydb , mycursor = mybase.con()
    sql = f'''CREATE VIEW champs AS
    SELECT 
        player.Player_Name AS Логин,
        player.first_name AS Имя,
        games.Game_Level AS Уровень,
        games.Nimber_Hod AS Ходов,
        games.Game_Time AS Время
    FROM
        (games
        JOIN player)
    WHERE
        ((games.Gamer_Id = player.Player_Id)
            AND (games.Nimber_Hod IS NOT NULL)
            AND (games.Gamer_Id <> 480691797)
            AND (games.Gamer_Id <> 391646311))
    ORDER BY games.Game_Level DESC , games.Nimber_Hod , games.Game_Time
    LIMIT 15
;'''
    mycursor.execute(sql)
    mydb.commit()
    mycursor.close()
    mydb.close()
    print('все ок')


def CreatViewNinG():
    mydb , mycursor = mybase.con()
    sql = f'''CREATE VIEW nameingame AS
    SELECT 
        player.first_name AS Имя,
        player.last_name AS Фамилия,
        game.Now_Game AS В_Игре,
        game.Level AS Уровень,
        game.hod AS Тек_Ход
    FROM
        (game
        JOIN player)
    WHERE
        (game.ChatId = player.Player_Id)
;'''
    mycursor.execute(sql)
    mydb.commit()
    mycursor.close()
    mydb.close()
    print('все ок')


def CreatViewYouG():
    mydb , mycursor = mybase.con()
    sql = f'''CREATE VIEW yourgames AS
    SELECT 
        games.Gamer_Id AS Id,
        games.Game_Level AS Game_L,
        games.Nimber_Hod AS Nim_N,
        games.Game_Time AS G_T
    FROM
        (games
        JOIN player)
    WHERE
        ((games.Gamer_Id = player.Player_Id)
            AND (games.Nimber_Hod IS NOT NULL))
    ORDER BY games.Game_Level DESC , games.Nimber_Hod , games.Game_Time
;'''
    mycursor.execute(sql)
    mydb.commit()
    mycursor.close()
    mydb.close()
    print('все ок')

if __name__=="__main__":
    
    #CreatViewNinG()
    CreatViewYouG()