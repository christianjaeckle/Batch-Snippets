ECHO.Compare file 1.txt and 2.txt from Desktop
ECHO. ****************************************

fc /u "%Userprofile%\Desktop\1.txt" "%Userprofile%\Desktop\2.txt" > "%Userprofile%\Desktop\Diff.txt"
