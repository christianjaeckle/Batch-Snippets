@ECHO OFF

CHOICE /c YN /M "Do you want to continue?"
IF %ERRORLEVEL% EQU 1 GOTO Yes
IF %ERRORLEVEL% EQU 2 GOTO No

:YES
ECHO.Yes.
GOTO END

:NO
ECHO.No.
GOTO END

:END
ECHO.End
