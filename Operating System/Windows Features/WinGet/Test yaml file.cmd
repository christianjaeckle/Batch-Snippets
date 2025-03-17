@ECHO OFF
TITLE %~n0

REM Test yaml file
WinGet configure test -f "<%UserProfile%\Desktop\Winget_Packages.yaml"
