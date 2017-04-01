FOR /F %%I IN ("DIR "X:\SourceDir\*.log" /B /O:-D") DO XCOPY "X:\SourceDir\%%I" "X:\TargetDir\%%I" /D /V /Y
