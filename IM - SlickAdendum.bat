@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - SlickAdendum.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo    description: This script appends the artwork created with ArtSlickGenerator
echo      extention: BAT
echo       licensce: OpenSource
echo        website: adamryan.info
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL

::CHANGE THIS SECTION
set item=51548-KCA-FF-MET-LOGO_CUSTOM_223091
set note=FOR SALE TO THE TEAM ONLY
::DO NOT CHANGE THIS SECTION
set APPROVALS=\\W2K3SERV1\swap\00 Product Versions\_APPROVALS\_NFL\APPROVALS\



convert  "%APPROVALS%%item%.jpg"  -pointsize 184 -fill red label:"%note%" -gravity center -append "%APPROVALS%%item%.jpg"
