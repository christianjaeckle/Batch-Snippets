@ECHO OFF
CLS

ECHO Dell and Lenovo
WMIC baseboard get product,Manufacturer,version,serialnumber
ECHO.

ECHO Lenovo
WMIC csproduct get vendor, version
ECHO.

PAUSE
