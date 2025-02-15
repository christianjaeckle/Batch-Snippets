@ECHO OFF
TITLE TeamViewer - Add CA router
CLS

SET TV_CARouter=CARouter1.contoso.com\CARouter2.contoso.com

REM Check for bitness
IF EXIST "%PROGRAMFILES(X86)%" (
	ECHO Adapt 64-bit Registry key
	REG.exe ADD "HKEY_LOCAL_MACHINE\SOFTWARE\TeamViewer" /v "ConditionalAccessServers" /t REG_MULTI_SZ /d "%TV_CARouter%" /f
) ELSE (
	ECHO Adapt 32-bit Registry key
  REG.exe ADD "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\TeamViewer" /v "ConditionalAccessServers" /t REG_MULTI_SZ /d "%TV_CARouter%" /f
)

ECHO Restart TeamViewer service
REM NET STOP TeamViewer
REM NET START TeamViewer

PAUSE
