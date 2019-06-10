@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - IMResizeWBorder.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo  requirements: Imagemagick
echo        download: https://www.imagemagick.org/script/download.php
echo    description: This script utilizes Image Magik to resize the image to 1600x1600 px and place a white background and border behind the image
echo      extention: BAT
echo       licensce: OpenSource
echo        website: adamryan.info
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL


::Pixels Per Inch
set ppi="300"
::Border Size absolute pixels/percentage
set bsi="25%"
::Squared Dimensions FINAL SIZE
set dim="1600"
::Background color
set backclr="white"
::Border color
set bordclr="white"
::Image format
set ext="*.jpg"

mogrify -density %ppi%x%ppi% -bordercolor %bordclr% -border %bsi%x%bsi% -resize %dim%x%dim% -background %backclr% -gravity center -extent %dim%x%dim% %ext%
