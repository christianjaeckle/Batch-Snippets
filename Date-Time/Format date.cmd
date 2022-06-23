@ECHO OFF
TITLE %~n0
SETLOCAL

FOR /F "skip=2 tokens=2,*" %%A IN ('reg.exe query "HKCU\Control Panel\International" /v "sShortDate"') DO set "DFMT=%%B"
ECHO New variable DFMT = %DFMT%


ECHO. 1
SET CURRENTTIME=%TIME%
IF "%CURRENTTIME:~0,1%"==" " (SET CURRENTTIME=0%CURRENTTIME:~1%)
FOR /F "tokens=2-4 delims=/ " %%A IN ('DATE /T') DO (SET TIMESTAMP=%%C-%%A-%%B %CURRENTTIME%)
ECHO.
ECHO.

ECHO. 2
@ECHO OFF
REM Sets the proper date and time stamp with 24h time for log file naming convention i.e.

SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~3,2%%date:~7,2%_0%time:~1,1%%time:~3,2%%time:~6,2% 
SET dtStamp24=%date:~-4%%date:~3,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%

if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)

ECHO %dtStamp%
REM Outputs= 20160727_081040
REM (format: YYYYMMDD_HHmmss; e.g.: the date-output of this post timestamp)
ECHO.
ECHO.

ECHO. 3
@ECHO off
SETLOCAL ENABLEEXTENSIONS
if "%date%A" LSS "A" (set toks=1-3) else (set toks=2-4)
for /f "tokens=2-4 delims=(-)" %%a in ('echo:^|date') do (
  for /f "tokens=%toks% delims=.-/ " %%i in ('date/t') do (
	set '%%a'=%%i
	set '%%b'=%%j
	set '%%c'=%%k))
if %'yy'% LSS 100 set 'yy'=20%'yy'%
set Today=%'yy'%-%'mm'%-%'dd'% 
ENDLOCAL & SET v_year=%'yy'%& SET v_month=%'mm'%& SET v_day=%'dd'%

ECHO Today is Year: [%V_Year%] Month: [%V_Month%] Day: [%V_Day%]
ECHO.
ECHO.


PAUSE

ENDLOCAL
