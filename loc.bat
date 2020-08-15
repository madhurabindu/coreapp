@ECHO OFF 
set file=coreapp\program.cs
set /a cnt=0
for /f %%a in ('type "%file%"^|find "" /v /c') do set /a cnt=%%a
echo %file% has %cnt% lines
if (cnt LEQ 10) exit 0
echo Modularity check failed. Max allowed lines 10
exit 300