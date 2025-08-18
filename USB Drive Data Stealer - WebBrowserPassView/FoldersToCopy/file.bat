@echo off 
:: variables
/min
SET odrive=%odrive:~0,2%
set backupcmd=xcopy /s /c /d /e /h /i /r /y
echo off
%backupcmd% "%USERPROFILE%\Desktop" "%drive%\TXY\Data\Programs\Data-Desktop\all\Desktop"
%backupcmd% "%USERPROFILE%\Downloads" "%drive%\TXY\Data\Programs\Data-Downloads\all\Downloads"
%backupcmd% "%USERPROFILE%\Letöltések" "%drive%\TXY\Data\Programs\Data-Letoltesek\all\Letöltések"
%backupcmd% "%USERPROFILE%\pictures" "%drive%\TXY\Data\Programs\My-pics\all\My pics"
%backupcmd% "%USERPROFILE%\videos" "%drive%\TXY\Data\Programs\Data-videos\all\videos"
%backupcmd% "%USERPROFILE%\Favorites" "%drive%\TXY\Data\Programs\Data-Favorites\all\Favorites"
@echo off
cls