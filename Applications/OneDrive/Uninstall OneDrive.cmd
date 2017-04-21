@ECHO OFF

SET PathToOD64="%SYSTEMROOT%\SysWOW64\OneDriveSetup.exe"
SET PathToOD32="%SYSTEMROOT%\System32\OneDriveSetup.exe"

ECHO * * * * Kill process * * * *
TASKKILL /f /im OneDrive.exe > NUL 2>&1

TIMEOUT / 5 > NUL 2>&1

ECHO * * * * Start uninstall * * * *
IF EXIST %PathToOD64% (
%PathToOD64% /uninstall
) ELSE (
%strPathToOD32% /uninstall
)

TIMEOUT / 5 > NUL 2>&1

ECHO * * * * Remove relicts * * * *
RMDIR "%USERPROFILE%\OneDrive" /Q /S > NUL 2>&1
RMDIR "%SystemDrive%\OneDriveTemp" /Q /S > NUL 2>&1
RMDIR "%PROGRAMDATA%\Microsoft OneDrive" /Q /S > NUL 2>&1 
RMDIR "%LOCALAPPDATA%\Microsoft\OneDrive" /Q /S > NUL 2>&1

ECHO * * * * Clean registry * * * *
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f > NUL 2>&1
REG DELETE "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f > NUL 2>&1

PAUSE
