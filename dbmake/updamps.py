from SLdb import DB 
from mkjson import readfromjobf, readfile

mybase = DB("ColorDB.db")

def insgames (data):
        
        mydb , mycursor = mybase.con()
        
               
        sql = f"INSERT INTO games (Gamer_ID, Start_Date_Time, End_Data_Time, Game_Time, Nimber_Hod, Game_Level) VALUES {data}"
    
        mycursor.execute(sql)
        mydb.commit()
        mycursor.close()
        mydb.close()


def insgame (data):
        
        mydb , mycursor = mybase.con()

        sql = f"INSERT INTO game (id, ChatId, Now_Game, Variant, Level, hod) VALUES {data}"

        mycursor.execute(sql)
        mydb.commit()
        mycursor.close()
        mydb.close()


def insplayer (data):
        
    mydb , mycursor = mybase.con()

    sql = f'INSERT INTO player (Player_Id, Player_Name, first_name, last_name, title, language_code ) VALUES {data}'
    
    mycursor.execute(sql)
    mydb.commit()
    mycursor.close()
    mydb.close()




#JOBFILE  = "./databot/databot_games.txt"
#JOBFILE  = "./databot/databot_game.sql"
JOBFILE  = "./databot/databot_player.sql"
s = readfile(JOBFILE)
print(s)

data = s


#insgame(data)
insplayer(data)

i=''
k=0
ws=''
for i in s:
    if k == 0: ws += i
    if i =="(": k = 1 
   
    if k == 1:
        if i == ',': k = 0

#data = ws[:-1]        
    
#insgames(data)    


