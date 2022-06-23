@ECHO OFF
TITLE %~n0
SETLOCAL

REM Create a test script file
ECHO Function Test { Write-Host "Called from batch file." } > %TEMP%\File.ps1

REM Execute function within Powershell script
POWERSHELL -Command ". %TEMP%\File.ps1; Test;"
