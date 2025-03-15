@echo off
:: Get the current date and time in YYYY-MM-DD HH:MM:SS format
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set datetime=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2% %datetime:~8,2%:%datetime:~10,2%:%datetime:~12,2%

:: Navigate to your Git repository (Change the path accordingly)
cd /d "G:\cv git assignm"

:: Run Git commands
git add .
git commit -m "%datetime%"
git push origin master
