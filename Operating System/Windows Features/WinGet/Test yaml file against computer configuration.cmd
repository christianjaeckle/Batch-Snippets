@ECHO OFF
TITLE %~n0

REM Tests yaml (Powershell DSC 3.0) file via WinGet against current system setup.
WinGet configure test -f "%UserProfile%\Downloads\Winget_Packages.yaml"
