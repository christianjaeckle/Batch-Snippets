@ECHO OFF

SC query HomeGroupProvider | FINDSTR /I /C:"STOPPED"

IF %ERRORLEVEL% EQU 0 (
	ECHO.Service HomeGroupProvider is stopped.
)

SC query HomeGroupProvider | FINDSTR /I /C:"RUNNING"

IF %ERRORLEVEL% EQU 0 (
	ECHO.Service HomeGroupProvider is running.
)
