setlocal enabledelayedexpansion
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
set folder= %mydate%
mkdir %folder%
echo "Original","NEW" > %folder%\translationTable.csv
for /F  "delims=" %%i in ('dir /b /s *.czi') do (
	set /a "myRandom=!random!*!random!"
	echo "%%i" , "!myRandom!.czi" >> %folder%\translationTable.csv
	xcopy /A /Y "%%i" %folder%\!myRandom!.czi*
)
exit/B
