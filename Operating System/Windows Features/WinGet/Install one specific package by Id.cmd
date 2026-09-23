@ECHO OFF
TITLE %~n0

REM Installs one specific package by its id from MSStore.
REM DesiredStateConfiguration = 9NVTPZWRC6KQ
WinGet install --id 9NVTPZWRC6KQ --source msstore
