@ECHO OFF
TITLE %~n0

REM Validates yaml (Powershell DSC 3.0) file via WinGet.
WinGet configure validate -f "%UserProfile%\Downloads\Winget_Packages.yaml"
