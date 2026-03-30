@ECHO OFF
TITLE %~n0
SETLOCAL

PowerCfg /BatteryReport /Output "X:\Battery_Report.html"

ENDLOCAL
