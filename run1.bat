@echo off
rem Saved in C:\Users\macshen\Documents\TempZhaobinM\Test the batch
setlocal enabledelayedexpansion
set Elogo=^);
break>Temp.txt
  for /f "usebackq" %%g in (TitleName.txt) do (
       set /p NameOfField=<%%g.csv
	   echo /********************************%%g********************************/>>Temp.txt
	   echo Drop table if exists SpOneDay.%%g;>>Temp.txt
	   echo Create table if not exists SpOneDay.%%g(>>Temp.txt
	   set /a iLoop=1
	   for %%a in (%NameOfField%) do (
			if !iLoop!==1 ( echo %%a>>Temp.txt) else ( echo ,%%a>>Temp.txt)
			set /a iLoop = !iLoop!+1
	   )
	   set /a iLoop=1
	   echo !Elogo!>>Temp.txt
	   echo LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/%%g.csv'  INTO TABLE `SpOneDay`.`%%g`>>Temp.txt
       set Dem=FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
	   set ign=ignore 1 lines;
	   echo !Dem!>>Temp.txt
	   echo !ign!>>Temp.txt
	   echo.>>Temp.txt
	   echo.>>Temp.txt
   )
endlocal