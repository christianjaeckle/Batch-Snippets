@ECHO OFF
TITLE %~n0

REM Validates yaml file via WinGet
WinGet configure validate -f "<%UserProfile%\Desktop\Winget_Packages.yaml"
