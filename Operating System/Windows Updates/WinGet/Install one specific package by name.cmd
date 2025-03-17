@ECHO OFF
TITLE %~n0

REM Install one specific package by name
WinGet install <appname> --source WinGet
