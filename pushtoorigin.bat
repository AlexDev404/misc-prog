@echo off
title PUSH + UPDATE SOURCE SCRIPT
echo Setting Path...
echo.
set gitdir=C:\Users\User 1\Downloads\PortableGit
set path=%gitdir%\cmd;%path%
echo Adding Files...
echo.
git add .
echo.
echo Commiting Source...
echo.
git commit -m "Updated Source"
echo.
echo Adding Origin (if not already added)...
echo.
git remote add origin https://github.com/AlexDev404/misc-prog.git
echo.
echo Verifying Remote...
echo.
git remote -v
echo.
echo Checking for Branch Updates (Pulling Source)...
git pull origin master
echo Pushing to Origin...
echo.
git push origin master
echo.
echo Done!
pause