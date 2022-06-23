@ECHO OFF
TITLE %~n0
SETLOCAL

DISM /online /Export-DefaultAppAssociations:Dateizuordnungen.xml

PAUSE

ENDLOCAL
