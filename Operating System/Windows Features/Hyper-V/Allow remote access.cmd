@ECHO OFF
TITLE %~n0
CLS

Enable-PSRemoting
Enable-WSManCredSSP -Role Server

PAUSE
