@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - ArtSlickGenerator.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo    description: This script creates an artslick to be used for artwork approvals
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
set item=24585
set team=VIKINGS
set nflpl=229723
set style=MGC-0507-RIBBON 
::DO NOT CHANGE THIS SECTION
set ext=.jpg
set STAGED=\\W2K3SERV1\swap\00 Product Versions\Staged\
set SLICK=\\W2K3SERV1\swap\00 Product Versions\_APPROVALS\_NFL\ART SLICK GENERATOR\ART SLICKS\
set UPC=\\W2K3SERV1\gerber\UPCs\
set APPROVALS=\\W2K3SERV1\swap\00 Product Versions\_APPROVALS\_NFL\APPROVALS\

convert  "stockdale%ext%" "%STAGED%%item%%ext%" "%SLICK%%team%%ext%"  -pointsize 184 label:%item% -pointsize 84  label:%style%  -pointsize 84 label:NFLPL-%nflpl% "%UPC%%item%%ext%" -gravity center -append "%APPROVALS%%item%-%style%_%nflpl%%ext%"
