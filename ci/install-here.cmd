@echo off

setlocal

for /f "delims=" %%f in ('dir /b /o:d Git-SDK-*.exe 2^> nul') do set installer=%%~nf

if "%installer%" == "" (
    echo ERROR: No installer found, please build it first.
    exit /b 1
)

echo Installing %installer% ...
%installer%.exe /log="%installer%.log" /verysilent /suppressmsgboxes /dir="Git-SDK" /noicons /portable=1 /log-mingw-get="%CD%\mingw-get.log"
