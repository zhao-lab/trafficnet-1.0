/********************************Vehicle Encountering Detail********************************/
Drop table if exists v2v.Vehicle_Encountering_Detail;
Create table if not exists v2v.Vehicle_Encountering_Detail(
RowNum int Not Null
,Vehicle_Encountering_ID int Not Null
,Trip_Encountering_ID int Not Null
,Time_1 int Not Null
,Latitude_1 float Not Null
,Longitude_1 float Not Null
,Time_2 int Not Null
,Latitude_2 float Not Null
,Longitude_2 float Not Null
);
LOAD DATA LOCAL INFILE 'VE_Withtitle.csv'  INTO TABLE `v2v`.`Vehicle_Encountering_Detail`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;

/********************************Vehicle Encountering Summary********************************/
Drop table if exists v2v.Vehicle_Encountering_Summary;
Create table if not exists v2v.Vehicle_Encountering_Summary(
Vehicle_Encountering_ID int Not Null
,Trip_Encountering_ID int Not Null
,Device_1 int Not Null
,Trip_1 int Not Null
,Device_2 int Not Null
,Trip_2 int Not Null
,StartTime_1 int Not Null
,EndTime_1 int Not Null
,StartTime_2 int Not Null
,EndTime_2 int Not Null
);
LOAD DATA LOCAL INFILE 'VE_Summary.csv'  INTO TABLE `v2v`.`Vehicle_Encountering_Summary`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;