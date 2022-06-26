@ECHO OFF
TITLE %~n0
SETLOCAL

Start-Process psexec.exe -ArgumentList ‘-i -s YOURPROCESS.EXE -executionpolicy Bypass’ -WindowStyle Hidden -Verb RunAs

PAUSE

ENDLOCAL
