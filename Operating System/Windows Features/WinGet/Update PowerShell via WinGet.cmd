@ECHO OFF
TITLE %~n0

REM Determine whether PowerShell may be upgraded with WinGet
WinGet list --name PowerShell --upgrade-available
