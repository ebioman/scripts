setlocal enabledelayedexpansion
set folder=%date:/=%
mkdir %folder%
echo "Original","NEW" > %folder%\translationTable.csv
for /F  "delims=" %%i in ('dir /b /s *.czi') do (
	echo "%%i" , "!random!.czi" >> %folder%\translationTable.csv
	xcopy /A /Y "%%i" %folder%\!random!.czi*
)
exit/B