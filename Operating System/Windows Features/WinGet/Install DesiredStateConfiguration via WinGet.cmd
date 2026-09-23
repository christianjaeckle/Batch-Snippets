@ECHO OFF
TITLE %~n0
CLS

REM Install latest stable version of DesiredStateConfiguration (DSC, v3.0) from MSStore.
WinGet install --name DesiredStateConfiguration  --source msstore
