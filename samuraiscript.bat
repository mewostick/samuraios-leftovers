@echo off
color 5f
title SamuraiOS 11 ver. 09.05.2023
echo.
echo. Welcome to SamuraiOS!
echo. The computer will now remove most telemetry scheduled tasks and add registry keys to improve privacy.
echo. After that, additional software will be installed.
echo. When you get the self-extracting archive prompt, extract it somewhere safe like your desktop.
echo. Make sure to restart the computer after everything is done.
echo.
pause
echo.
echo. Scheduled tasks:
echo.
echo Disabling Microsoft Compatibility Appraiser taskkill (telemetry)
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
echo Disabling ProgramDataUpdater (telemetry)
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
echo Disabling StartupAppTask (telemetry)
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
echo Disabling Consolidator (telemetry)
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
echo Disabling KernelCeipTask (telemetry)
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
echo Disabling UsbCeip (telemetry)
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
echo Disabling Scheduled Diagnosis (telemetry)
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /Disable
echo Disaling Disk Diagnostic Data Collector (telemetry)
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
echo Disabling Disk Footprint Diagnostics (telemetry)
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
echo Disabling Storage Sense
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /Disable
echo Disabling dusmtask
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable
echo Disabling DmClient (telemetry)
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Disable
echo Disabling DmClientOnScenarioDownload (telemetry)
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable
echo Disabling WinSAT
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable
echo Disabling BfeOnServiceStartTypeChange
schtasks /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Disable
echo Disabling Sqm-Tasks (telemetry)
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
echo Disabling BackgroundUploadTask
schtasks /Change /TN "Microsoft\Windows\SettingSync\BackgroundUploadTask" /Disable
echo Disabling GatherNetworkInfo (telemetry)
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
echo Disabling Device (telemetry)
schtasks /Change /TN "Microsoft\Windows\Device Information\Device" /Disable
echo.
echo. Useless tasks have been disabled.
echo.
echo. Registry
echo.
echo Disabling Windows Customer Experience Improvement Program
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\SQMClient"
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows"
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0
echo Disabling Windows Error Reporting
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1
echo Disabling Handwriting automatic learning
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization"
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrickImplicitTextCollection" /t REG_DWORD /d 1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1
echo Disabling Search Companion
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SearchCompanion"
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d 1
echo.
echo. Added registry keys.
echo.
echo. The computer will now proceed further.
echo.
timeout 5
exit