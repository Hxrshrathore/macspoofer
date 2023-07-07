@echo off
echo Spoofing MAC address...

REM Find the wireless adapter interface name
for /F "tokens=2 delims=:" %%A in ('netsh interface show interface ^| find "Wireless"') do (
    set interface=%%A
    goto :ChangeMAC
)

:ChangeMAC
REM Generate a random MAC address
set /a "rand1=%random% %% 16"
set /a "rand2=%random% %% 16"
set /a "rand3=%random% %% 16"
set /a "rand4=%random% %% 16"
set /a "rand5=%random% %% 16"
set /a "rand6=%random% %% 16"
set mac=%rand1%%rand2%:%rand3%%rand4%:%rand5%%rand6%

REM Change the MAC address
echo Changing MAC address to %mac%...
macchanger --mac=%mac% %interface%

echo MAC address spoofed successfully.
