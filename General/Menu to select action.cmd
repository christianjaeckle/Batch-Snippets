@ECHO OFF
CLS

:MENU
CLS

ECHO.
ECHO ================ SCRIPT MENU ================
ECHO.
ECHO 1.  Selection 1
ECHO 2.  Selection 2
ECHO 3.  Selection 3
ECHO 4.  Selection 4
ECHO 5.  Selection 5
ECHO 6.  Selection 6
ECHO 7.  Selection 7
ECHO 8.  Selection 8
ECHO 9.  Selection 9
ECHO.
ECHO ============= Press 'Q' to quit =============
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='3' GOTO Selection3
IF /I '%INPUT%'=='4' GOTO Selection4
IF /I '%INPUT%'=='5' GOTO Selection5
IF /I '%INPUT%'=='6' GOTO Selection6
IF /I '%INPUT%'=='7' GOTO Selection7
IF /I '%INPUT%'=='8' GOTO Selection8
IF /I '%INPUT%'=='9' GOTO Selection9
IF /I '%INPUT%'=='Q' GOTO Quit

CLS

ECHO.
ECHO ================ INVALID INPUT ================
ECHO.
ECHO Please select a number from the main
ECHO menu [1-9] or select 'Q' to quit.
ECHO.
ECHO ========== Press any key to continue ==========

PAUSE > NUL
GOTO MENU

:Selection1
Whatever code you want goes here...

:Selection2
and in here...

:Selection3
and in here too...

:Selection4
and so on

:Selection5
and so on

:Selection6
and so on

:Selection7
and so on

:Selection8
and so on

:Selection9
and so on

:Quit
CLS

ECHO.
ECHO ================== Good bye! ==================
ECHO ========== Press any key to continue ==========
ECHO.

PAUSE > NUL
EXIT
