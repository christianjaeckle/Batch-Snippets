@ECHO OFF
TITLE %~n0
SETLOCAL

REM generates a random number from 1 to 500
Set /a _rand=(%RANDOM%*500/32768)+1

ECHO Random number %_rand%

PAUSE
