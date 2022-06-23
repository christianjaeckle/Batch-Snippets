@ECHO OFF
TITLE %~n0
SETLOCAL

SET Path_Def=C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml
SET Path_Usr=C:\Users\%Username%\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml

ECHO Sicherung erstellen...
IF EXIST "%Path_Def%" (
	MOVE /-Y "%Path_Def%" "%Path_Def%.bak"
)

IF EXIST "%Path_Usr%" (
	MOVE /-Y "%Path_Usr%" "%Path_Usr%.bak"
)

ECHO Neuen Standard kopieren...
IF EXIST "%~dp0DefaultLayouts.xml" (
	COPY /-Y "%~dp0DefaultLayouts.xml" "%Path_Def%"
	COPY /-Y "%~dp0DefaultLayouts.xml" "%Path_Usr%"
)

REM TASKKILL /im StartMenuExperienceHost.exe /f
REM START C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe

PAUSE

ENDLOCAL
