@ECHO OFF
TITLE %~n0
CLS

REM Run command inside a running sandbox
WSB exec –-id 12345678-1234-1234-1234-1234567890AB -c notepad.exe C:\Windows\System32\drviers\etc\hosts

PAUSE
