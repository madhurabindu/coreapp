@ECHO OFF 
set file=coreapp\program.cs
set /a cnt=0
for /f %%a in ('type "%file%"^|find "" /v /c') do set /a cnt=%%a
echo %file% has %cnt% lines
EXIT /B (cnt  < 10)
