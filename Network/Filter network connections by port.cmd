@ECHO OFF
TITLE %~n0
CLS

NETSTAT -aof | findstr :5985
