@ECHO OFF
TITLE %~n0
SETLOCAL

ECHO.
ECHO Besitz übernehmen...
TAKEOWN /F "%WINDIR%\PolicyDefinitions" /A /R

IF EXIST "%WINDIR%\PolicyDefinitions\de-DE" (
	TAKEOWN /F "%WINDIR%\PolicyDefinitions\de-DE" /A /R
)

IF EXIST "%WINDIR%\PolicyDefinitions\en-US" (
	TAKEOWN /F "%WINDIR%\PolicyDefinitions\en-US" /A /R
)

ECHO.
ECHO Berechtigung setzen...
ICACLS "%WINDIR%\PolicyDefinitions" /GRANT Administratoren:(OI)(CI)F /T

IF EXIST "%WINDIR%\PolicyDefinitions\de-DE" (
	ICACLS "%WINDIR%\PolicyDefinitions\de-DE" /GRANT Administratoren:(OI)(CI)F /T
)

IF EXIST "%WINDIR%\PolicyDefinitions\en-US" (
	ICACLS "%WINDIR%\PolicyDefinitions\en-US" /GRANT Administratoren:(OI)(CI)F /T
)

PAUSE

ENDLOCAL
