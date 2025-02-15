@ECHO OFF
TITLE %~n0
CLS

REM Remove Git items from context menu
REG DELETE HKEY_CLASSES_ROOT\Directory\shell\git_gui /f
REG DELETE HKEY_CLASSES_ROOT\Directory\shell\git_shell /f
REG DELETE HKEY_CLASSES_ROOT\LibraryFolder\background\shell\git_gui /f
REG DELETE HKEY_CLASSES_ROOT\LibraryFolder\background\shell\git_shell /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\git_gui /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\git_shell /f
