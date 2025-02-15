@ECHO OFF
TITLE %~n0
CLS

REM Get MSI product code for a specific application
WMIC product WHERE "Name LIKE '%TeamViewer%'" GET Name, IdentifyingNumber

REM OR
WMIC product GET Name,Version,IdentifyingNumber | FIND "TeamViewer"
