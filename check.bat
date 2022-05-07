rem Delete all OS specific files
del Thumbs.db /s /q

cls
@echo off

echo "ARCHICAD Library Checker"
echo "-----------------------------------------"
echo.

set "hsf2gsmCommand=C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"

set "passwd="
rem set /p passwd="Enter password for GDL objects: "

echo.
echo Converting HSF to GSM...
if "%passwd%" NEQ "" (set hsf2gsmCommand=%hsf2gsmCommand% -password %passwd%)

set hsf2gsmCommand="%hsf2gsmCommand%" finalizelibrary -reportlevel 1 -format HSF Library_Src Library_GSM Library_Base

rem Execute command
%hsf2gsmCommand%
