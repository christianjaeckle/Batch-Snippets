@ECHO OFF
TITLE %~n0
CLS

SET IPAdresse=192.168.1.1

PING -n 1 %IPAdresse% | find "TTL=" >nul

if ERRORLEVEL EQU 0 (
    ECHO.The device %IPAdresse% is available!
    ECHO.
) ELSE (
    ECHO.The device %IPAdresse% is NOT available!
    ECHO.
)

OR

PING %IPAdresse% -n 2 -4 | FIND "Packets: Sent = 2, Received = 2, Lost = 0 (0% loss)," >NUL  2>NUL
IF %ERRORLEVEL% EQU 0 (ECHO %IPAdresse% ist erreichbar.) ELSE (ECHO %IPAdresse% ist NICHT erreichbar.)

PAUSE
