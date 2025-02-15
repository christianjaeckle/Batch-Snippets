@ECHO OFF
TITLE %~n0
CLS

REM Show Microsoft Intune status
dsregcmd /status
