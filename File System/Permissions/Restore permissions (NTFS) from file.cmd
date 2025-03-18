@ECHO OFF
TITLE %~n0
CLS

REM Restore folder permissions from a text file
ICacls "%UserProfile%\Desktop" /restore "%UserProfile%\Desktop\Desktop_Folder_Permissions.txt"
