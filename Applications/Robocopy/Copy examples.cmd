Echo. Copy folder
robocopy c:\source c:\destination /E /DCOPY:DAT

Echo. Copy folder with owner & auditing
robocopy c:\source c:\destination /E /COPYALL /DCOPY:DAT

Echo. Copy folder with log file
robocopy c:\source c:\destination /E /DCOPY:DAT /LOG:"%Temp%\Robocopylog.txt"
