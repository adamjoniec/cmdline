@echo off

set DIR=%~dp0

%DIR%cmder\Cmder.exe /REGISTER ALL

copy "%DIR%@scripts\installation\cmder-pre-installation.vbs" "%DIR%@scripts\installation\cmder.vbs"

"%DIR%@tools\fart.exe" "@scripts\installation\cmder.vbs" "***CMDER_PATH***" "%DIR%cmder\Cmder.exe"

"%DIR%@tools\shortcut.exe" /F:"%windir%\cmder.lnk"  /A:C /T:"%DIR%@scripts\installation\cmder.vbs"
