@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - RGB_Colorspace.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo    description: This script updates the colorspace of a JPG to RBG
echo      extention: BAT
echo       licensce: OpenSource
echo        website: adamryan.info
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL

convert *.jpg -colorspace RGB -colorspace sRGB *.jpg