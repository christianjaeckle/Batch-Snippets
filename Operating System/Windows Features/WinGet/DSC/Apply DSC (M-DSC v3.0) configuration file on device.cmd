@ECHO OFF
TITLE %~n0

REM Apply DSC (Microsoft DSC 3.0) configuration file on local device.
WinGet configure --file "<filename>.dsc.yaml"
