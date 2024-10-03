echo off
echo Source file should be in facefusion main directory and
echo name should be IMG.jpg
pause
set ver=%cd%
set ver=%ver:"=%
dir /b > "files.txt"
cd "%USERPROFILE%\facefusion"
call activate facefusion
@echo on
for /f "delims=" %%a in (%ver%\files.txt) do python facefusion.py headless-run --skip-download -s IMG.jpg -t "%ver%\%%a" -o "%ver%\%%a"
del %ver%\files.txt
pause