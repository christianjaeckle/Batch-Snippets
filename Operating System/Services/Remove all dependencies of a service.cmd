@ECHO OFF
TITLE %~n0
CLS

REM Remove all dependencies for ServiceA
SC config ServiceA depend= /
