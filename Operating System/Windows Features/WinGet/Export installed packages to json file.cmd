@ECHO OFF
TITLE %~n0

REM Export current / installed packages to json file
WinGet export --output "%UserProfile%\Desktop\Winget_Package.json"

REM Export current / installed packages including versions to json file
WinGet export --output "%UserProfile%\Desktop\Winget_Package.json" --include-versions
