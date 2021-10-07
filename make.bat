rem Delete all OS specific files
del Thumbs.db /s /q

cls
@echo off

echo "ARCHICAD Library Builder"
echo "-----------------------------------------"
echo.

set "hsf2gsmCommand=C:\Program Files\GRAPHISOFT\ARCHICAD 24\LP_XMLConverter.exe"

set "passwd="
set /p passwd="Enter password for GDL objects: "

echo.
echo Converting HSF to GSM...
if "%passwd%" NEQ "" (set hsf2gsmCommand=%hsf2gsmCommand% -password %passwd%)

set hsf2gsmCommand="%hsf2gsmCommand%" hsf2l Library_src Library

rem Execute command
%hsf2gsmCommand%

rem Delete empty file needed for GIT
rem del Library\.gitkeep /s

echo.
echo Converting GSM to LCF...
"C:\Program Files\GRAPHISOFT\ARCHICAD 24\LP_XMLConverter.exe" createcontainer "Library_Build\ArLibrary24.lcf" Library

rem Create empty file back
rem copy NUL Library\.gitkeep

PAUSE
