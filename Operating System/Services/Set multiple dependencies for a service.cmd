@ECHO OFF
TITLE %~n0
CLS

REM Set multiple dependencies for ServiceA
SC config ServiceA depend= ServiceB/ServiceC/ServiceD/"ServiceE With Spaces"
