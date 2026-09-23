@ECHO OFF
TITLE %~n0

REM Imports packages from a yaml (Powershell DSC 3.0) file and installs those.
REM Check file "Import and install packages from yaml file.yaml"
WinGet configure --file "<%UserProfile%\Desktop\Winget_Packages.yaml"
