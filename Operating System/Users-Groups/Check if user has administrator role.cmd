@ECHO OFF

WHOAMI /groups | find "S-1-16-12288" > nul

IF ERRORLEVEL 1 (
	ECHO You are not a member of 'Administrators' group!
	ECHO
	
	PAUSE
	EXIT /B
)

ECHO Continue with admin rights.
