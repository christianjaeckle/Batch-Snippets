@ECHO OFF
TITLE %~n0
CLS

REM Compare local vs. NTP server time
w32tm.exe /StripChart /Computer:"ptbtime1.ptb.de" /DataOnly /Samples:1
