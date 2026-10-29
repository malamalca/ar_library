@echo off
cd /d "R:\Library\GDL\ArLibrary"

set "OBJ_PATH=3D\arFrame"
for /f "tokens=* delims= " %%P in ("%OBJ_PATH%") do set "OBJ_PATH=%%P"
for /f "tokens=1* delims=\" %%A in ("%OBJ_PATH%") do (
    set "CATEGORY=%%A"
    set "OBJECT=%%B"
)

set "SRC_DIR=Library_Src\%CATEGORY%\%OBJECT%"
set "GSM_DIR=Library_GSM\%CATEGORY%"
set "CONVERTER=C:\Program Files\GRAPHISOFT\ARCHICAD 29\LP_XMLConverter.exe"

echo STEP1: SRC=%SRC_DIR% GSM=%GSM_DIR%
dir "%SRC_DIR%" >nul 2>&1 && echo SOURCE EXISTS || echo SOURCE MISSING
dir "%CONVERTER%" >nul 2>&1 && echo CONVERTER EXISTS || echo CONVERTER MISSING

set "STAGING=%TEMP%\ArLibrary_staging_%RANDOM%"
set "CHECK_OUT=%TEMP%\ArLibrary_check_%RANDOM%"
set "FULLOUT=%TEMP%\ArLibrary_fullout.txt"
set "ERRALL=%TEMP%\ArLibrary_errall.txt"

echo STEP2: STAGING=%STAGING%
mkdir "%STAGING%\%CATEGORY%\%OBJECT%" 2>nul
mkdir "%CHECK_OUT%\%CATEGORY%" 2>nul
xcopy "%SRC_DIR%\*" "%STAGING%\%CATEGORY%\%OBJECT%\" /E /I /H /Y /Q >nul
if exist "Library_Src\IDEntryList.dbe" copy /Y "Library_Src\IDEntryList.dbe" "%STAGING%\%CATEGORY%\" >nul

echo STEP3: Running finalizelibrary...
"%CONVERTER%" finalizelibrary -interpret -reportlevel 1 -format HSF "%STAGING%\%CATEGORY%" "%CHECK_OUT%\%CATEGORY%" > "%FULLOUT%" 2>&1
echo FINALIZE_EXIT=%errorlevel%

findstr /I "error:" "%FULLOUT%" > "%ERRALL%" 2>nul
if exist "%ERRALL%" (
    echo ERRORS FOUND:
    type "%ERRALL%"
) else (
    echo NO ERRORS
)

rmdir /s /q "%STAGING%" >nul
rmdir /s /q "%CHECK_OUT%" >nul
del "%FULLOUT%" "%ERRALL%" >nul 2>&1
