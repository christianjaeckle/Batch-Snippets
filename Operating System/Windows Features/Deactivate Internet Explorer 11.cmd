@ECHO OFF
TITLE %~n0
SETLOCAL

DISM /online /Disable-Feature /FeatureName:Internet-Explorer-Optional-amd64

ENDLOCAL
