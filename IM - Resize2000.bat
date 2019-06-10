@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - Resize2000.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo  requirements: Imagemagick
echo        download: https://www.imagemagick.org/script/download.php
echo    description: This script utilizes Image Magik to resize the image to 2000x2000 px 
echo       licensce: OpenSource
echo        website: adamryan.info
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL

mogrify -resize 2000x2000 *.jpg