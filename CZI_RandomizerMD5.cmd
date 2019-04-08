setlocal enabledelayedexpansion
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
set folder= %mydate%
mkdir %folder%
echo "Original","NEW" > %folder%\translationTable.csv
for /F  "delims=" %%i in ('dir /b /s *.czi') do (
	set /a "myRandom=!random!*!random!"
	call md5.bat "%%i" md5
	echo "%%i" , "!md5!.czi" >> %folder%\translationTable.csv
	xcopy /A /Y "%%i" %folder%\!md5!.czi*
)
exit/B