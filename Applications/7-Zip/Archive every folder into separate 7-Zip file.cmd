@ECHO OFF
TITLE %~n0
SETLOCAL

CD "%~dp0"

FOR /D %%D IN (*) DO (
	ECHO.
	ECHO Archive %%~fD...
	
	"%ProgramFiles%\7-Zip\7z.exe" a "%%~fD" "%%~fD\" -t7z
	
	ECHO.
)

ENDLOCAL
