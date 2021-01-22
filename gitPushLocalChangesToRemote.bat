@echo off
set /p url-name="Please enter URL name: "
set /p commit_message="Please enter commit message: "
set /p branch_name="Please enter the name of active branch: "


echo Helping you commit your local changes to the %url-name% github repo !

@echo on
git checkout %branch_name%
git fetch %url-name%
git status
git add -A
git commit -m "%commit_message%"
git push %url-name% %branch_name%

pause 