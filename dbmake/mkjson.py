import json


#JOBFILE  = "databot_game.sql"


# ADD TO JOB FILE
def addtojobf(data, JOBFILE):    
    try:
        f = open(JOBFILE, 'w', encoding='UTF-8')
        json.dump(data, f)    
        return True        
    except Exception as Inf:
        print('Исключение в процедуре addtojobf : '+str(Inf))
        return False        
    finally:
        f.close()


# READ FROM JOB FILE
def readfromjobf(JOBFILE):   
    try:
        f = open(JOBFILE, 'r', encoding='UTF-8')
        data = json.load(f)
        return data    
    except Exception as Inf:
        print('Исключение в процедуре readfromjobf : '+str(Inf))
        return {}  
    finally:
        f.close()
      

# READ FROM JOB FILE
def readfile(JOBFILE):   
    try:
        f = open(JOBFILE, 'r', encoding='UTF-8')
        data = f.read()
        return data    
    except Exception as Inf:
        print('Исключение в процедуре readfile : '+str(Inf))
        return {}  
    finally:
        f.close()
      
