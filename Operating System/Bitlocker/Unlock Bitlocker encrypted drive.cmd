@ECHO OFF
CLS

SETLOCAL

ECHO. Bitlocker feature is needed!

Managed-bde -unlock D: -Password

ENDLOCAL
PAUSE
