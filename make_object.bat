@echo off
setlocal enabledelayedexpansion

rem ===================================================================
rem Single-object build script - converts one HSF object folder to GSM
rem and places it into Library_GSM under the matching category.
rem
rem Usage:  make_object.bat ^<category/object^>
rem Example: make_object.bat 3D/arFrame
rem
rem Two-step process:
rem   1. finalizelibrary -interpret -reportlevel 1  (GDL error check)
rem      Filters out Missing ancestor errors which are expected
rem      when building a single object in isolation.
rem   2. hsf2l                                             (produce .gsm)
rem ===================================================================

if "%~1"=="" goto usage

set "OBJ_PATH=%~1"
for /f "tokens=* delims= " %%P in ("%OBJ_PATH%") do set "OBJ_PATH=%%P"

if "%OBJ_PATH%"=="" goto usage

for /f "tokens=1* delims=\" %%A in ("%OBJ_PATH%") do (
    set "CATEGORY=%%A"
    set "OBJECT=%%B"
)

if not defined CATEGORY goto usage
if not defined OBJECT goto usage

set "SRC_DIR=Library_Src\%CATEGORY%\%OBJECT%"
set "GSM_DIR=Library_GSM\%CATEGORY%"
set "CONVERTER=C:\Program Files\GRAPHISOFT\ARCHICAD 29\LP_XMLConverter.exe"

if not exist "%CONVERTER%" set "CONVERTER=C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"
if not exist "%CONVERTER%" (echo Error: LP_XMLConverter.exe not found! & exit /b 1)

set "passwd="
if "%passwd%" NEQ "" (set "PASS_OPT=-password %passwd%") else (set "PASS_OPT=")

if not exist "%SRC_DIR%" (echo Error: Source folder not found: %SRC_DIR% & exit /b 1)

echo ARCHICAD Single-Object Builder
echo -----------------------------------------
echo Object : %OBJECT%
echo Category: %CATEGORY%
echo.

if not exist "%GSM_DIR%" mkdir "%GSM_DIR%"

set "STAGING=%TEMP%\ArLibrary_staging_%RANDOM%"
set "CHECK_OUT=%TEMP%\ArLibrary_check_%RANDOM%"
set "FULLOUT=%TEMP%\ArLibrary_fullout.txt"
set "ERRALL=%TEMP%\ArLibrary_errall.txt"

mkdir "%STAGING%\%CATEGORY%\%OBJECT%" 2>nul
mkdir "%CHECK_OUT%\%CATEGORY%" 2>nul
xcopy "%SRC_DIR%\*" "%STAGING%\%CATEGORY%\%OBJECT%\" /E /I /H /Y /Q >nul

if exist "Library_Src\IDEntryList.dbe" (
    copy /Y "Library_Src\IDEntryList.dbe" "%STAGING%\%CATEGORY%\" >nul
)

rem === STEP 1: GDL error check ===
echo [1/2] Checking GDL scripts ...
"%CONVERTER%" finalizelibrary %PASS_OPT% -interpret -reportlevel 1 -format HSF "%STAGING%\%CATEGORY%" "%CHECK_OUT%\%CATEGORY%" > "%FULLOUT%" 2>&1

findstr /I "error:" "%FULLOUT%" > "%ERRALL%" 2>nul

set "HAS_GDL_ERRORS=0"
if exist "%ERRALL%" (
    for /f "usebackq tokens=* delims=" %%L in ("%ERRALL%") do (
        call :is_gdl_error "%%L"
        if "!IS_GDL_ERROR!"=="1" set "HAS_GDL_ERRORS=1"
    )
)

if "%HAS_GDL_ERRORS%"=="1" (
    echo.
    echo Error: GDL script errors detected!
    for /f "usebackq tokens=* delims=" %%L in ("%ERRALL%") do (
        call :is_gdl_error "%%L"
        if "!IS_GDL_ERROR!"=="1" echo   %%L
    )
    echo.
    rmdir /s /q "%STAGING%" >nul
    rmdir /s /q "%CHECK_OUT%" >nul
    del "%FULLOUT%" "%ERRALL%" >nul 2>&1
    exit /b 1
)

rmdir /s /q "%CHECK_OUT%" >nul
del "%FULLOUT%" "%ERRALL%" >nul 2>&1
echo     OK - no GDL errors.

rem === STEP 2: Compile to .gsm ===
echo [2/2] Compiling GSM ...
"%CONVERTER%" hsf2l %PASS_OPT% "%STAGING%\%CATEGORY%" "%GSM_DIR%"

if errorlevel 1 (
    echo Error during GSM compilation!
    rmdir /s /q "%STAGING%" >nul
    exit /b 1
)

set "GSM_FILE=%GSM_DIR%\%OBJECT%.gsm"
if not exist "%GSM_FILE%" (
    echo Error: Expected GSM file not found: %GSM_FILE%
    rmdir /s /q "%STAGING%" >nul
    exit /b 1
)

rmdir /s /q "%STAGING%" >nul

echo.
echo Done! GSM created: %GSM_FILE%
exit /b 0

goto :eof

:usage
echo Usage: make_object.bat ^<category/object^>
echo Example: make_object.bat 3D/arFrame
echo.
echo Converts a single object folder from Library_Src to GSM
echo and moves it into Library_GSM under the matching subfolder.
exit /b 1

goto :eof

:is_gdl_error
set "IS_GDL_ERROR=0"
set "CHK=%~1"
set "CHK=!CHK:Missing ancestor=!"
if /I not "!CHK!"=="%~1" goto :eof
set "IS_GDL_ERROR=1"
goto :eof
