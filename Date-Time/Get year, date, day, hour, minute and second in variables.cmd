SET Year=%date:~-4%
SET Month=%date:~-7,2%
SET Day=%date:~-10,2%

SET /a Hour=%time:~0,2%
SET Minute=%time:~3,2%
SET Second=%time:~6,2%

ECHO %Hour%
