@ECHO OFF
TITLE %~n0
SETLOCAL

DIR /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt 
DIR /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt 

FOR /f %%i in ('FINDSTR /i . List.txt 2^>nul') do DISM /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i" 

DEL List.txt

PAUSE

ENDLOCAL
