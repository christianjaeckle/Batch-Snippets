@ECHO OFF
CLS

FOR /f "delims=" %%# IN ('"WMIC path Win32_VideoController GET CurrentHorizontalResolution,CurrentVerticalResolution /format:value"') DO (
	SET "%%#" >nul
)

ECHO %CurrentHorizontalResolution%
ECHO %CurrentVerticalResolution%

PAUSE
