@echo off
echo.
echo. Press any key to rename all .ytd and .ydd to it's folder's name (foldername^file.ydd)
echo. 
echo. Made by Robinson
echo.
echo. 
echo.
pause
for %%a in ("%~dp0\.") do set "variable=%%~nxa"
setlocal enabledelayedexpansion
for /f "delims=" %%a in (' dir /b /a-d *.ydd *.ytd') do (
  set oldName=%%a
  set caret="^^^"
  Set newName=%variable%^^^^!oldName!
  Ren "!oldName!" "!newName!"
)
exit
