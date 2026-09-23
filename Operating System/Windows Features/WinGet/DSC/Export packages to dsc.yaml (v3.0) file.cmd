@ECHO OFF
TITLE %~n0

REM Exports all packages to DSC (Microsoft DSC 3.0) file.
WinGet configure export --output "<filename>.dsc.yaml" --all
