@ECHO OFF
TITLE %~n0
SETLOCAL

ECHO.
ECHO *** Search by application name
WMIC product WHERE "Name LIKE '%Kaspersky Endpoint Security%'" GET Name, IdentifyingNumber

ENDLOCAL
