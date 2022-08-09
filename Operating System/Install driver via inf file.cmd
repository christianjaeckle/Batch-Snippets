@ECHO OFF
TITLE %~n0
SETLOCAL

PNPUTIL.exe -i -a "C:\Drivers\DriverFile.inf"

ENDLOCAL
