@ECHO OFF
TITLE %~n0
CLS

REM Save permissions of a folder into a text file
ICacls "%UserProfile%\Desktop" /save "%UserProfile%\Desktop\Desktop_Folder_Permissions.txt" /t /c
