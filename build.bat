@ECHO 	    OFF
TITLE 	    Aetherx - Build: Mobaxterm
SETLOCAL 	ENABLEDELAYEDEXPANSION
MODE        con:cols=125 lines=30
MODE        125,30
GOTO 		comment_end

-----------------------------------------------------------------------------------------------------

Build Mobaxterm - Python

Builds and signs your mobaxterm app using Pyinstaller and signtool

Requires Windows Env Variables for:
    - X:\Python\Python37\
    - X:\Libraries\Signtool\

-----------------------------------------------------------------------------------------------------

:comment_end

ECHO.

:: -----------------------------------------------------------------------------------------------------
::  define:     STANDARD
::              DO NOT EDIT
:: -----------------------------------------------------------------------------------------------------

SET dir_home=%~dp0
SET dir_lib=.lib
SET echo=ECHO

:: -----------------------------------------------------------------------------------------------------
::  define:     LIBRARIES
::              DO NOT EDIT
:: -----------------------------------------------------------------------------------------------------

SET signtool=signtool
SET pyinstaller=pyinstaller

:: -----------------------------------------------------------------------------------------------------
::  define:     PIV THUMBPRINT
:: -----------------------------------------------------------------------------------------------------

SET CERT_THUMBPRINT=58a1539d6988d76f44bae27c27ed5645d3b1222a

:: -----------------------------------------------------------------------------------------------------
::  define:     PROJECT VARS
:: -----------------------------------------------------------------------------------------------------

SET proj_src_fold_build="release"
SET proj_src_fold_temp="temp"
SET proj_py_file_main="mobaxterm_cli.py"
SET proj_py_file_ver="mobaxterm_verinfo.py"
SET proj_ico="mobaxterm.ico"

:: -----------------------------------------------------------------------------------------------------
::  CONFIG FILE
:: -----------------------------------------------------------------------------------------------------

for /F "tokens=*" %%I in ( %file_cfg% ) do set %%I

:: -----------------------------------------------------------------------------------------------------
::  define:     SIGNTOOL
::              attempt to locate signtool via where command
:: -----------------------------------------------------------------------------------------------------

WHERE /Q %signtool%

IF !ERRORLEVEL! NEQ 0 (
    cls
    %echo%   ERROR
    %echo%   This script has detected that the command %signtool% is not accessible.
    %echo%.

    TITLE Aetherx - Signtool Missing [Error]

    %echo%   Press any key to acknowledge error and try anyway  ...
    PAUSE >nul
    cls
)

:: -----------------------------------------------------------------------------------------------------
::  define:     PYINSTALLER
::              attempt to locate pyinstaller via where command
:: -----------------------------------------------------------------------------------------------------

WHERE /Q %pyinstaller%

IF !ERRORLEVEL! NEQ 0 (
    cls
    %echo%   ERROR
    %echo%   This script has detected that the command %pyinstaller% is not accessible.
    %echo%.

    TITLE Aetherx - Pyinstaller Missing [Error]

    %echo%   Press any key to acknowledge error and try anyway  ...
    PAUSE >nul
    cls
)

:: -----------------------------------------------------------------------------------------------------
::  REMOVE TRAILING SLASH FROM DIR_HOME
:: -----------------------------------------------------------------------------------------------------

IF %dir_home:~-1%==\ SET dir_home=%dir_home:~0,-1%

:: -----------------------------------------------------------------------------------------------------
::  PYINSTALLER > BUILD
:: -----------------------------------------------------------------------------------------------------

:ACTION_BUILD

    %pyinstaller% -Fwc --distpath "%proj_src_fold_build%/" --workpath "%proj_src_fold_temp%/" "%proj_py_file_main%" --version-file="%proj_py_file_ver%" -i "%proj_ico%"

    goto ACTION_SIGN

:: -----------------------------------------------------------------------------------------------------
:: func:    SIGN > EXE ONLY > SUBFOLDER
::          sign exe subfolders
:: -----------------------------------------------------------------------------------------------------

:ACTION_SIGN

    for /R "%proj_src_fold_build%" %%f in ( *.exe ) do (
        call %signtool% sign /sha1 "%CERT_THUMBPRINT%" /fd SHA256 /d "Aetherx" /du "https://github.com/Aetherinox" /t http://timestamp.comodoca.com/authenticode "%%f"
    )

    goto FINISH

:: -----------------------------------------------------------------------------------------------------
::  FINISH
:: -----------------------------------------------------------------------------------------------------

:FINISH

    %echo%.
    %echo%.

    timeout /t 1 /nobreak >nul
    TITLE Aetherx - Build: Mobaxterm (Complete)
    %echo%.
    %echo%.
    %echo%   Press any key to close utility
    PAUSE >nul
    
Exit /B 0