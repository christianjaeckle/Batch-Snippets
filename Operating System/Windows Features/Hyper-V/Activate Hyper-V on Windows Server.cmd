@ECHO OFF
TITLE %~n0
SETLOCAL

Install-WindowsFeature -Name Hyper-V -IncludeManagementTools

ECHO. Reboot needed!

PAUSE

ENDLOCAL
