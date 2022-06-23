@ECHO OFF
TITLE %~n0
SETLOCAL

ECHO.
ECHO Delete user area...
RD /S /Q "%WINDIR%\System32\GroupPolicyUsers"

ECHO.
ECHO Delete computer area...
RD /S /Q "%WINDIR%\System32\GroupPolicy"

ECHO.
ECHO Update GPO update...
GPUPDATE /Force

PAUSE

ENDLOCAL
