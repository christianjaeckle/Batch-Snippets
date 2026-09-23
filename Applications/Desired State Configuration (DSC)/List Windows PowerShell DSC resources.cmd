@ECHO OFF
TITLE %~n0
CLS

REM Lists Windows PowerShell DSC resources
DSC resource list --adapter "Microsoft.Adapter/WindowsPowerShell"
