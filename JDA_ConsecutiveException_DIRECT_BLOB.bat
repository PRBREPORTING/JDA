"C:\Program Files (x86)\Microsoft SQL Server\150\DTS\Binn\DTExec.exe" /file "C:\Users\abedi\Desktop\SSIS_Local\JDA_Test\bin\Development\ConsecutiveException_DIRECT_BLOB.dtsx" /config "C:\Users\abedi\Desktop\SSIS_Local\JDA_Test\JDA_PackageDeployment_Config.dtsConfig"
REM if errorlevel 0 powershell -ExecutionPolicy ByPass -File C:\Users\abedi\Desktop\SSIS_Local\JDA_Test\power_shell_email_Success_ConsecutiveException.ps1
REM if errorlevel 1 powershell -ExecutionPolicy ByPass -File C:\Users\abedi\Desktop\SSIS_Local\JDA_Test\power_shell_email_Fail_ConsecutiveException.ps1
REM https://stackoverflow.com/questions/11845409/if-then-else-statements-in-windows-batch

IF ERRORLEVEL 1 GOTO failLabel

:successLabel
powershell -ExecutionPolicy ByPass -File C:\Users\abedi\Desktop\SSIS_Local\JDA_Test\power_shell_email_Success_ConsecutiveException.ps1
GOTO endLabel

:failLabel
powershell -ExecutionPolicy ByPass -File C:\Users\abedi\Desktop\SSIS_Local\JDA_Test\power_shell_email_Fail_ConsecutiveException.ps1


:endLabel