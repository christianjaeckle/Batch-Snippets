@ECHO OFF
TITLE %~n0
CLS

REM Run command inside a running sandbox
WSB stop –-id 12345678-1234-1234-1234-1234567890AB

PAUSE
