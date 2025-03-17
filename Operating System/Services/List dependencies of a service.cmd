@ECHO OFF
TITLE %~n0
CLS

REM List current dependencies of ServiceA
SC qc ServiceA
