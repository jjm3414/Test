@echo off

@ECHO ----------------------------------------------
@ECHO 설명구 (아래 예제는 JPG를 찾는 것입니다.)
@ECHO ----------------------------------------------

set dir1 = c:\aa
set dir2 = c:\bb
set target = c:\target

ECHO.
echo "Starting."

dir /b /on > list.txt

::for %%f IN (*.jpg) DO FOR /F "tokens=1 delims=" %%i IN ("%%f") Do (
::    SET filename=%%i
::    ECHO %filename%
::)

::for %%i in (*.txt) do if exist %dir1%\%%

::for %%f in (%1\*.jpg) do (

mkdir output

for %%f in (*.jpg) do (
    call toktx --linear --automipmap --lower_left_maps_to_s0t0 "output/%%~nf.ktx" %%f
    echo "Compressed output/%%~nf.ktx."
)

del list.txt

echo "Finished."
ECHO.
ECHO Done.
PAUSE
EXIT \B 0
