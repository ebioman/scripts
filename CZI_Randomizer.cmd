setlocal enabledelayedexpansion
set folder=%date:/=%
mkdir %folder%
echo "Original","NEW" > %folder%\translationTable.csv
for /F  "delims=" %%i in ('dir /b /s *.czi') do (
	set myRandom=!random!
	echo "%%i" , "!myRandom!.czi" >> %folder%\translationTable.csv
	xcopy /A /Y "%%i" %folder%\!myRandom!.czi*
)
exit/B
