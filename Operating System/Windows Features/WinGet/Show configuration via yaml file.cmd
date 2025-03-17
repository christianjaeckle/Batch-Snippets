@ECHO OFF
TITLE %~n0

REM Show configuration via yaml file
winget configure show -f "<%UserProfile%\Desktop\Winget_Packages.yaml"
