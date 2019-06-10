@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - Grid-Ify.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo  requirements: Imagemagick
echo        download: https://www.imagemagick.org/script/download.php
echo    description: This script utilizes Image Magik to create a grid of images
echo      extention: BAT
echo       licensce: OpenSource
echo        website: adamryan.info
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL

set /P id="Enter Customer Name then press ENTER:"
echo.
echo File:%id%_%date:~10,4%-%date:~4,2%-%date:~7,2%_images.pdf is being generated...please wait
echo.
echo Window will disapear upon completion
echo.

set src=\\W2K3SERV1\swap\00_IMAGEGRAB\images

montage -label %%t -density 300 -tile 4x5 -geometry "300x300+25+15>" -title "%id%:%date:~10,4%-%date:~4,2%-%date:~7,2%" %src%\*.jpg "%id%_%date:~10,4%-%date:~4,2%-%date:~7,2%_images.pdf" 