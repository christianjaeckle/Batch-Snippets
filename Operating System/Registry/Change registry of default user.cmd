@ECHO OFF

REM Load registry of default user
REG Load "hku\temp" "%SystemDrive%\Users\Default User\NTUSER.DAT"

REM Add registry value to default user
REG Add "hku\temp\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /d "%windir%\system32\scrnsave.scr" /f

REM Unload registry of default user
REG Unload "hku\temp"
