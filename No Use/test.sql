

/****** Object:  Table dbo.DataWsu    Script Date: 8/28/2017 8:38:55 PM ******/
Drop table if exists `SpOneDay`.`new_table`;
CREATE TABLE if not exists `SpOneDay`.`new_table` (
c1 smallint
);
Drop table if exists `SpOneDay`.`BSM_TransStateEvents`;

CREATE TABLE `SpOneDay`.`BSM_TransStateEvents`(
	`RxDevice` smallint NOT NULL,
	Field int NOT NULL,
	TxDevice int NOT NULL,
	StartTime bigint NOT NULL,
    EndTime bigint NOT NULL,
	Value tinyint NOT NULL
	);
LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/BSM_TransStateEvents.csv'  INTO TABLE BSM_TransStateEvents
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;

DELIMITER $$
CREATE TRIGGER `SpOneDay`.`BSM_TransStateEvents_BIN`
BEFORE ALTER ON `SpOneDay`.`BSM_TransStateEvents` 
FOR EACH ROW
BEGIN	
IF new.`a` = '' THEN SET new.`a` = NULL;

END IF;
END$$
DELIMITER ;

 create table a (a float not null);
 insert a values (2);

ALTER TABLE `SpOneDay`.`BSM_TransStateEvents` ADD PRIMARY KEY(RxDevice,Field,TxDevice,StartTime,EndTime);
/****** Object:  Table dbo.TimeOverlap_StartTimeIsWrong    Script Date: 8/28/2017 6:57:24 PM ******/
/*SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
*/
/*CREATE TABLE dbo.TimeOverlap_StartTimeIsWrong(
	Device_1 smallint NOT NULL,
	Trip_1 smallint NOT NULL,
	Device_2 smallint NOT NULL,
	Trip_2 smallint NOT NULL,
	UtcStartTime int NULL,
	UtcEndTime int NULL,
 CONSTRAINT PK_TimeOverLap PRIMARY KEY CLUSTERED 
(
	Device_1 ASC,
	Trip_1 ASC,
	Device_2 ASC,
	Trip_2 ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON PRIMARY
) ON PRIMARY

GO*/


