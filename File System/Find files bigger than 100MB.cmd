ECHO Find all files which are bigger than 100MB starting at %SystemDrive%
forfiles /P %SystemDrive% /S /M * /C "cmd /c if @fsize GEQ 104857600 echo @path"
