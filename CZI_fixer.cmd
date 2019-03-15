setlocal enabledelayedexpansion

echo "file" , "md5" > associationTable.csv
for /F  "delims=" %%i in ('dir /b /s *.czi') do (
	call md5.bat %%i md5
	set $myFile=%%~ni
	echo !$myFile! , !md5! >> associationTable.csv
)
exit/B