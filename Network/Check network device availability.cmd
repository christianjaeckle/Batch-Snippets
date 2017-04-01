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

PAUSE
