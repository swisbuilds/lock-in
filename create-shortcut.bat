@echo off
powershell -NoProfile -Command ^
  "$s=(New-Object -COM WScript.Shell).CreateShortcut('%USERPROFILE%\Downloads\Lock In Extension.lnk');" ^
  "$s.TargetPath='%~dp0';" ^
  "$s.IconLocation='%SystemRoot%\System32\shell32.dll,167';" ^
  "$s.Description='Lock In Chrome Extension project folder';" ^
  "$s.Save()"
echo Shortcut created in Downloads!
pause
