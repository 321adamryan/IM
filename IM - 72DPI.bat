@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - 72DPI.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo  requirements: Imagemagick
echo        download: https://www.imagemagick.org/script/download.php
echo    description: This script utilizes Image Magik to change the DPI of an image to 72
echo      extention: BAT
echo       licensce: OpenSource
echo        website: adamryan.info
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL

mogrify -density 72x72 *.jpg