@ECHO OFF
TITLE %~n0
CLS

REM The space after "binPath=" is needed!
SC config <service name> binPath= <binary path>
