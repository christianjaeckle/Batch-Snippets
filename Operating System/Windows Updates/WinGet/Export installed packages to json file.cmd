@ECHO OFF
TITLE %~n0

REM Export current / installed packages to json file
WinGet Export "%UserProfile%\Desktop\Winget_Package.json"
