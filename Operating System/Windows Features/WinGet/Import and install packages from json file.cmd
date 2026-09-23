@ECHO OFF
TITLE %~n0

REM Import packages from json file and install them
WinGet import --import-file "%UserProfile%\Desktop\Winget_Package.json" --accept-source-agreements --accept-package-agreements
