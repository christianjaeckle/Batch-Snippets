@ECHO OFF
TITLE %~n0

REM Show configuration via yaml (Powershell DSC 3.0) file
WinGet configure show -f "%UserProfile%\Downloads\Winget_Packages.yaml"
