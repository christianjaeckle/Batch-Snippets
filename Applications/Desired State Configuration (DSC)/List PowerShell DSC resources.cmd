@ECHO OFF
TITLE %~n0
CLS

REM Lists PowerShell DSC resources
DSC resource list --adapter "Microsoft.Adapter/PowerShell"
