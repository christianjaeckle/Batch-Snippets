@ECHO OFF
TITLE %~n0

REM Import packages from yaml (DSC) file and install them
REM Check file "Import and install packages from yaml file.yaml"
WinGet configure --file "<%UserProfile%\Desktop\Winget_Packages.yaml"
