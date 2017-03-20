@ECHO OFF

OPENFILES >nul 2>&1

IF %ErrorLevel% EQU 0 (
	ECHO.Is Admin!
) ELSE (
	ECHO.Is no Admin!
)
