@ECHO OFF
TITLE %~n0
CLS

REM -e means exact package
WinGet install --id Microsoft.WindowsTerminal -e
