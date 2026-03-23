@ECHO OFF
TITLE %~n0

REM Tests yaml file via WinGet against current system setup
WinGet configure test -f "<%UserProfile%\Desktop\Winget_Packages.yaml"
