@ECHO OFF
TITLE %~n0
CLS

REM Set a dependency for ServiceA
SC config ServiceA depend= ServiceB
