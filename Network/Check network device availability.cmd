@ECHO OFF
SET IPAdresse=192.168.1.1

PING -n 1 %IPAdresse% | find "TTL=" >nul

if ERRORLEVEL 1 (
    ECHO.The device %IPAdresse% is NOT available!
    ECHO.
) ELSE (
    ECHO.The device %IPAdresse% is available!
    ECHO.
)

OR

PING %IPAdresse% -n 2 -4 | FIND "Pakete: Gesendet = 2, Empfangen = 2, Verloren = 0" >NUL  2>NUL
IF %ERRORLEVEL% EQU 0 (ECHO %IPAdresse% ist erreichbar.) ELSE (ECHO %IPAdresse% ist NICHT erreichbar.)

PAUSE
