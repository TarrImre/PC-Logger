@echo off
setlocal enabledelayedexpansion

REM Az aktuális idő és dátum lekérdezése
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set datetime=%%a
set year=!datetime:~0,4!
set month=!datetime:~4,2!
set day=!datetime:~6,2!
set hour=!datetime:~8,2!
set minute=!datetime:~10,2!
set second=!datetime:~12,2!

REM Az időpont formázása
set timestamp=!year!-!month!-!day! !hour!:!minute!:!second!

REM A fájl elérési útvonal összeállítása
set filepath=C:\TXYLog\PcTurnOnLog\log.txt

REM A fájl létrehozása és az időpont beleírása
echo %timestamp% >> %filepath%

REM Üzenet a felhasználónak
echo Fájl létrehozva: %filepath%
