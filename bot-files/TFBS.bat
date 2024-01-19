::This is the number of gane instances to run
set "instances=12"
::This is how many seconds to wait before restarting all bots
set "restarttime=7200"

echo Launching bots...
:start
@echo off
FOR %%a IN (1,1,%instances%) DO (
  start "C:\Program Files (x86)\Steam\steamapps\common\Titanfall2" NorthstarLauncher.exe -norestrictservercommands -profile=R2Titanfall +ns_has_agreed_to_send_token 2
  timeout 5
)
echo Starting timer...
timeout %restarttime=7200%
echo Closing bots...
TASKKILL /IM NorthstarLauncher.exe /F
timeout 5
echo Restarting bots...
goto start
