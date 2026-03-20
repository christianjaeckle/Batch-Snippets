REM Enable Windows Scripting Host (WSH)
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /f

REM Status
CSCRIPT "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /dstatus

REM Add key
CSCRIPT "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inpkey:%YOURKEY%

REM Activate
CSCRIPT "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /act

REM Disable Windows Scripting Host (WSH)
REG ADD "HKCU\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /t REG_DWORD /d 1 /f
REG ADD "HKLM\Software\Microsoft\Windows Script Host\Settings" /v Enabled /t REG_DWORD /d 1 /f

PAUSE
