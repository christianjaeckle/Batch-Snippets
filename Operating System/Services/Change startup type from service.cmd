@ECHO OFF
TITLE %~n0
CLS

SC config ServiceName start=delayed-auto
