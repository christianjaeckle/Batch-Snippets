@ECHO OFF
TITLE %~n0
SETLOCAL

REM IP-Adresse ermitteln
FOR /f "delims=[] tokens=2" %%n IN ('PING -4 -n 1 %COMPUTERNAME% ^| FINDSTR [') DO SET IPADDR=%%n
ECHO %IPADDR%

REM IP-Adresse zerlegen
FOR /F "tokens=1-4 delims=." %%a IN ("%IPADDR%") DO (
	SET OctetA=%%a
	SET OctetB=%%b
	SET OctetC=%%c
	SET OctetD=%%d
)

REM IP-Adresse ausgeben
ECHO %OctetA%
ECHO %OctetB%
ECHO %OctetC%
ECHO %OctetD%

PAUSE

ENDLOCAL
