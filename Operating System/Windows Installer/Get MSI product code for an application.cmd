@ECHO OFF
TITLE %~n0
CLS

REM Get MSI product code for a specific application
WMIC product WHERE "Name LIKE '%Kaspersky Endpoint Security%'" GET Name, IdentifyingNumber
