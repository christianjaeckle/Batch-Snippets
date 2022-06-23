@ECHO OFF
TITLE %~n0
SETLOCAL

ECHO. Add password to NTFS file stream
ECHO YourPassword>FileName.cmd:text

ECHO. Get password back
FOR /F "usebackq delims=" %i IN (FileName.cmd:text) DO ECHO. %i

ECHO. Get password back within script
FOR /F "usebackq delims=" %%i IN (FileName.cmd:text) DO SET p=%%i

ENDLOCAL