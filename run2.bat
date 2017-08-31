@echo off
break>AutoCode.txt
setlocal ENABLEDELAYEDEXPANSION

rem Saved in C:\Users\macshen\Documents\TempZhaobinM\Test the batch
for /F "delims="  %%A in (A.txt) do (
	set outputline=%%A
	for /F "tokens=1-3 delims=," %%H in (DataTypeMapping_Test.csv) do (
		set Hcomma=,%%H
		if %%A==%%H	 (
			set outputline=%%H %%I %%J
		) 
		if %%A==!Hcomma! (
			set outputline=,%%H %%I %%J
		)
	)
	echo !outputline!>>AutoCode.txt
)
endlocal