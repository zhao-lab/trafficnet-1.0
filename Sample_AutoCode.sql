/********************************BSM_PosAccurByte1Events********************************/
Drop table if exists SpOneDay.BSM_PosAccurByte1Events;
Create table if not exists SpOneDay.BSM_PosAccurByte1Events(
RxDevice smallint Not Null
,FileId int Not Null
,TxDevice smallint Not Null
,StartTime bigint Not Null
,Endtime bigint Not Null
,Value smallint Not Null
);
LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/BSM_PosAccurByte1Events.csv'  INTO TABLE `SpOneDay`.`BSM_PosAccurByte1Events`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
/********************************BSM_PosAccurByte2Events********************************/
Drop table if exists SpOneDay.BSM_PosAccurByte2Events;
Create table if not exists SpOneDay.BSM_PosAccurByte2Events(
RxDevice smallint Not Null
,FileId int Not Null
,TxDevice smallint Not Null
,StartTime bigint Not Null
,Endtime bigint Not Null
,Value smallint Not Null
);
LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/BSM_PosAccurByte2Events.csv'  INTO TABLE `SpOneDay`.`BSM_PosAccurByte2Events`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
/********************************BSM_PosAccurByte3Events********************************/
Drop table if exists SpOneDay.BSM_PosAccurByte3Events;
Create table if not exists SpOneDay.BSM_PosAccurByte3Events(
RxDevice smallint Not Null
,FileId int Not Null
,TxDevice smallint Not Null
,StartTime bigint Not Null
,Endtime bigint Not Null
,Value smallint Not Null
);
LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/BSM_PosAccurByte3Events.csv'  INTO TABLE `SpOneDay`.`BSM_PosAccurByte3Events`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
/********************************BSM_PosAccurByte4Events********************************/
Drop table if exists SpOneDay.BSM_PosAccurByte4Events;
Create table if not exists SpOneDay.BSM_PosAccurByte4Events(
RxDevice smallint Not Null
,FileId int Not Null
,TxDevice smallint Not Null
,StartTime bigint Not Null
,Endtime bigint Not Null
,Value smallint Not Null
);
LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/BSM_PosAccurByte4Events.csv'  INTO TABLE `SpOneDay`.`BSM_PosAccurByte4Events`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
