@ECHO OFF
TITLE %~n0
SETLOCAL

SET Script_LogDate=%DATE:~-4%%DATE:~-7,2%%DATE:~-10,2%
SET Script_LogFile=%MY-Logs%\%Script_LogDate% - %~n0.txt

SET DCDomain=%USERDNSDOMAIN%
SET DCName_Current=%COMPUTERNAME%
SET DCName_New=DC01

ECHO. Add new name as alternative computername
NETDOM COMPUTERNAME %DCName_Current% /ADD:%DCName_New%.%DCDomain%

ECHO. Make alternative computername to primary name
NETDOM COMPUTERNAME %DCName_Current% /MAKEPRIMARY:%DCName_New%.%DCDomain%

ECHO.
ECHO Reboot the domain controller

ECHO. Remove old computername as alternative name
NETDOM COMPUTERNAME %DCName_New% /REMOVE:%DCName_Current%.%DCDomain%

ENDLOCAL
