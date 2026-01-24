SET Script_PathLog=E:\MyFolder\Logfile.log
SET "Script_PathTxt=%Script_PathLog:.log=.txt%"

ECHO. Replaced the file extension from .log to .txt
ECHO %Script_PathLog%
ECHO %Script_PathTxt%
