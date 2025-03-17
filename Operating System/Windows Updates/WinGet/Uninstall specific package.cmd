@ECHO OFF
TITLE %~n0

REM Uninstall specific package (e.g. 7-Zip via 7zip.7zip)
WinGet uninstall <AppName>
