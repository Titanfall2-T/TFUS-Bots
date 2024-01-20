echo Launching bots...
:b
@echo off
FOR %%a IN (1,1,12) DO (
  start "C:\Program Files (x86)\Steam\steamapps\common\Titanfall2" NorthstarLauncher.exe -norestrictservercommands -profile=R2Titanfall +ns_has_agreed_to_send_token 2
  timeout 5
)
echo Starting timer...
timeout 7200
echo Closing bots...
TASKKILL /IM NorthstarLauncher.exe /F
timeout 5
echo Restarting bots...
goto b
