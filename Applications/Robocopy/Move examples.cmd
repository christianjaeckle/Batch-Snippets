Move folder with owner & auditing
robocopy c:\source c:\destination /E /COPYALL /DCOPY:DAT /MOVE

Move folder with owner & auditing with log file
robocopy c:\source c:\destination /E /COPYALL /DCOPY:DAT /MOVE /LOG:"%Temp%\Robocopylog.txt"
