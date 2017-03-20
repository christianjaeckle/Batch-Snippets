@ECHO OFF

FOR /f "tokens=4-5 delims=[] " %%i IN ("ver") DO SET Version=%%i

FOR %%i IN (%Version%) DO SET version=%%i

if %Version% EQU 5.1.2600 (
	set WindTitle=Microsoft Windows XP
    set WindFamily=5
) else if %Version% EQU 5.2.3790 (
    set WindTitle=Microsoft Windows XP Professional x64 Edition
    set WindFamily=5
) else if %Version% EQU 6.0.6000 (
    set WindTitle=Microsoft Windows Vista
    set WindFamily=6
) else if %Version% EQU 6.0.6001 (
    set WindTitle=Microsoft Windows Vista SP1
    set WindFamily=6
) else if %Version% EQU 6.0.6002 (
    set WindTitle=Microsoft Windows Vista SP2
    set WindFamily=6
) else if %Version% EQU 6.1.7600 (
    set WindTitle=Microsoft Windows 7
    set WindFamily=7
) else if %Version% EQU 6.1.7601 (
    set WindTitle=Microsoft Windows 7 SP1
    set WindFamily=7
) else if %Version% EQU 6.2.9200 (
    set WindTitle=Microsoft Windows 8
    set WindFamily=8
) else if %Version% EQU 6.3.9200 (
    set WindTitle=Microsoft Windows 8.1
    set WindFamily=8
) else if %Version% EQU 6.3.9600 (
    set WindTitle=Microsoft Windows 8.1 Update 1
    set WindFamily=8
) else if %Version% EQU 10.0.10049 (
    set WindTitle=Microsoft Windows 10 Technical Preview
    set WindFamily=10
) else if %Version% EQU 10.0.10240 (
    set WindTitle=Microsoft Windows 10 Threshold 1
    set WindFamily=10
) else if %Version% EQU 10.0.10586 (
    set WindTitle=Microsoft Windows 10 Threshold 2
    set WindFamily=10
) else if %Version% EQU 10.0.14393 (
    set WindTitle=Microsoft Windows 10 Redstone 1
    set WindFamily=10
) else if %Version% EQU 10.0.14951 (
    set WindTitle=Microsoft Windows 10 Insider Preview
    set WindFamily=10
) else (
    set WindTitle=Unknown
	set WindFamily=-1
)

ECHO Version: %Version%
ECHO Title: %WindTitle%
ECHO Family: %WindFamily%
