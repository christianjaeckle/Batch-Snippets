Find all files which are bigger than 200MB starting at %SystemDrive% and modified since 08/01/2022
forfiles /P %SystemDrive% /M *.* /S /D +"08/01/2022" /C "cmd /c if @fsize gtr 209715200 echo @path @fsize @fdate @ftime"
