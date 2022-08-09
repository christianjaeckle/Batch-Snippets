@ECHO OFF
TITLE %~n0
SETLOCAL

PNPUTIL.exe /enum-drivers

ECHO Or...
sc query type= driver

ENDLOCAL
