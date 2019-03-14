setlocal enabledelayedexpansion
set folder=%date:/=%
mkdir %folder%
echo "Original","NEW" > %folder%\log.txt

for /F  "delims=" %%i in ('dir /b /s *.czi') do (
	set $myFile=%%~ni  
	set $myFile=!$myFile:Image=!
	set $myFile=!$myFile: =!
	set $myFolder=%%~dpi
	set $myTest=!$myFolder:%cd%=!
	set $myTest=!$myTest:\=_!
	set $myTest=!$myTest:.=_!
	set $myTest=!$myTest: =!
	set $myTest=!$myTest:~0,-1!
	echo From %%i Copied to %folder%\!$myFile!!$myTest!.czi  >> %folder%\log.txt
	xcopy /A /Y "%%i" %folder%\!$myFile!!$myTest!.czi*
)
exit/B