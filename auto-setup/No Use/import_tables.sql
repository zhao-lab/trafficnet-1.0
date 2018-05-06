create database if not exists SpOneDay;
create database if not exists SpTwoMonth;
/***********************************************************************************/
/************************************DAS1*******************************************/
/***********************************************************************************/
/*DAS1_DataWsu*/
CREATE TABLE if not exists `SpOneDay`.`DAS1_DataWsu`(
	Device smallint NOT NULL,
	Trip smallint NOT NULL,
	Time int NOT NULL,
	GpsValidWsu tinyint NOT NULL,
	GpsTimeWsu bigint NOT NULL,
	LatitudeWsu float NOT NULL,
	LongitudeWsu float NOT NULL,
	AltitudeWsu real NOT NULL,
	GpsHeadingWsu real NOT NULL,
	GpsSpeedWsu real NOT NULL,
	HdopWsu real NOT NULL,
	PdopWsu real NOT NULL,
	FixQualityWsu tinyint NOT NULL,
	GpsCoastingWsu tinyint NOT NULL,
	ValidCanWsu tinyint NOT NULL,
	YawRateWsu real NOT NULL,
	SpeedWsu real NOT NULL,
	TurnSngRWsu tinyint NOT NULL,
	TurnSngLWsu tinyint NOT NULL,
	BrakeAbsTcsWsu tinyint NOT NULL,
	AxWsu real NOT NULL,
	PrndlWsu tinyint NOT NULL,
	VsaActiveWsu tinyint NOT NULL,
	HeadlampWsu tinyint NOT NULL,
	WiperWsu tinyint NOT NULL,
	ThrottleWsu real NOT NULL,
	SteerWsu real NOT NULL);
LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/DAS1_DataWsu.csv'  INTO TABLE DAS1_DataWsu
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
ALTER TABLE `SpOneDay`.`DAS1_DataWsu` ADD PRIMARY KEY(Device,Trip,Time);

/*DAS1_DataDas*/
CREATE TABLE if not exists `SpOneDay`.`DAS1_DataDas`(
	Device smallint NOT NULL,
	Trip smallint NOT NULL,
	Time int NOT NULL,
	AccelPedal real NOT NULL,
	Altitude real NOT NULL,
	AvailableLeft tinyint NOT NULL,
	AvailableRight tinyint NOT NULL,
	Ax real NOT NULL,
	Ay real NOT NULL,
	BoundaryLeft tinyint NOT NULL,
	BoundaryRight tinyint NOT NULL,
	Brake tinyint NOT NULL,
	CruiseEngaged tinyint NOT NULL,
	Distance real NOT NULL,
	GpsHeading real NOT NULL,
	Latitude float NOT NULL,
	Longitude float NOT NULL,
	NumTargets tinyint NOT NULL,
	`Range` real NOT NULL,
	RangeRate real NOT NULL,
	Speed real NOT NULL,
	TurnSignal tinyint NOT NULL,
	YawRate real NOT NULL);
    LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/DAS1_DataDas.csv'  INTO TABLE DAS1_DataDas
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
ALTER TABLE `SpOneDay`.`DAS1_DataDas` ADD PRIMARY KEY(Device,Trip,Time);

/*DAS1_Trip_Summary_File*/
Drop table if exists `SpOneDay`.`DAS1_Trip_Summary_File`;
CREATE TABLE if not exists `SpOneDay`.`DAS1_Trip_Summary_File`(
	Device smallint NOT NULL,
	Trip smallint NOT NULL,
	EpochStartTime bigint NOT NULL,
	StartDate datetime NOT NULL,
    StartTime time not null,
	EpochEndTime bigint NOT NULL,
	EndDate datetime NOT NULL,
    EndTime time not null,
	TotalTripDistance real NOT NULL,
	DistanceOver25MPH double null,
    DistanceOver55MPH double null,
    TripDuration int,
    AverageSpeed double null,
    MaximumSpeed double not null,
    BrakeCount int not null,
    WiperActivated smallint NULL);
    LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/DAS1_Trip_Summary_File.csv'  INTO TABLE `SpOneDay`.`DAS1_Trip_Summary_File`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
ALTER TABLE `SpOneDay`.`DAS1_Trip_Summary_File` ADD PRIMARY KEY(Device,Trip);

/*DAS1_TDAS1_DataLane*/
Drop table if exists `SpOneDay`.`DAS1_DataLane`;
CREATE TABLE if not exists `SpOneDay`.`DAS1_DataLane`(
	Device smallint NOT NULL,
	Trip smallint NOT NULL,
	Time int NOT NULL,
	LaneDistanceLeft real NOT NULL,
	LaneDistanceRight real NOT NULL,
	LaneHeading real NOT NULL,
	LaneQualityRight tinyint NOT NULL,
	LaneQualityLeft tinyint NOT NULL);
    LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/DAS1_DataLane.csv'  INTO TABLE `SpOneDay`.`DAS1_DataLane`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
ALTER TABLE `SpOneDay`.`DAS1_DataLane` ADD PRIMARY KEY(Device,Trip,Time);

/*DAS1_DataGpsDas*/
Drop table if exists `SpOneDay`.`DAS1_DataGpsDas`;
CREATE TABLE if not exists `SpOneDay`.`DAS1_DataGpsDas`(
	Device smallint NOT NULL,
	Trip smallint NOT NULL,
	Time int NOT NULL,
	GpsTime int NOT NULL,
	GpsWeek smallint NOT NULL,
	GpsHeading real NOT NULL,
	GpsSpeed real NOT NULL,
	Latitude float NOT NULL,
	Longitude float NOT NULL,
	Altitude real NOT NULL,
	NumberOfSats tinyint NOT NULL,
	Differential tinyint NOT NULL,
	FixMode tinyint NOT NULL,
	Pdop real NOT NULL,
	GpsBytes int NOT NULL,
	UtcTime int NOT NULL,
	UtcWeek smallint NOT NULL);
    LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/DAS1_DataGpsDas.csv'  INTO TABLE `SpOneDay`.`DAS1_DataGpsDas`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
ALTER TABLE `SpOneDay`.`DAS1_DataGpsDas` ADD PRIMARY KEY(Device,Trip,Time);

/*DAS1_DataFrontTargets*/
Drop table if exists `SpOneDay`.`DAS1_DataFrontTargets`;
CREATE TABLE if not exists `SpOneDay`.`DAS1_DataFrontTargets`(
	Device smallint NOT NULL,
	Trip smallint NOT NULL,
	Time int NOT NULL,
	TargetId tinyint NOT NULL,
	ObstacleId tinyint NOT NULL,
	`Range` real NULL,
	Rangerate real NULL,
	Transversal real NULL,
	TargetType tinyint NULL,
	Status tinyint NULL,
	CIPV tinyint NULL);
    LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/DAS1_DataFrontTargets.csv'  INTO TABLE `SpOneDay`.`DAS1_DataFrontTargets`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;
ALTER TABLE `SpOneDay`.`DAS1_DataFrontTargets` ADD PRIMARY KEY(Device,Trip,Time,TargetId,ObstacleId);

/***********************************************************************************/
/************************************DAS2*******************************************/
/***********************************************************************************/

/*DAS2_HV_Radar*/
Drop table if exists `SpOneDay`.`DAS2_HV_Radar`;
CREATE TABLE if not exists `SpOneDay`.`DAS2_HV_Radar`(
	DeviceID smallint NOT NULL,
	Trip int NOT NULL,
	Time int NOT NULL,
	TargetId smallint NOT NULL,
	Object_Type tinyint NOT NULL,
	Range_X real  NULL,
	Range_Y real  NULL,
	Speed_X real  NULL,
	Speed_Y real  NULL,
	Target_InPath tinyint NOT NULL,
	Target_Moving tinyint NOT NULL);
    LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/DAS2_HV_Radar.csv'  INTO TABLE `SpOneDay`.`DAS2_HV_Radar`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;


/*DAS2_HV_Primary*/
/*Drop table if exists `SpOneDay`.`DAS2_HV_Primary`;
CREATE TABLE if not exists `SpOneDay`.`DAS2_HV_Primary`(
	DeviceID smallint NOT NULL,
	Trip int NOT NULL,
	Time int NOT NULL,
	GPS_Elevation double NOT NULL,
	GPS_Fix_Quality tinyint NOT NULL,
	GPS_Hdop real NOT NULL,
	GPS_Heading real NOT NULL,
	GPS_Latitude real NOT NULL,
	GPS_Longitude real NOT NULL,
	GPS_Number_Satellites tinyint NOT NULL,
	GPS_Pdop double NOT NULL,
    GPS_Speed double not null,
    GPS_UTC_Time bigint not null,
    GPS_Valid tinyint not null,
    DAS_Roll_Rate double not null,
    DAS_Pitch_Rate double not null,
    InVehicle_ABS_State smallint not null,
    InVehicle_Brake_Status smallint not null,
    InVehicle_Headlight_Status smallint not null,
    InVehicle_Longitudinal_Accel double not null,
    InVehicle_Longitudinal_Speed double not null,
    InVehicle_PRNDL tinyint not null,
    InVehicle_Stability_Control_Status tinyint not null,
    InVehicle_Steering_Position double not null,
    InVehicle_Throttle_Position tinyint not null,
    InVehicle_Traction_Control_Status tinyint not null,
    InVehicle_Turn_Signal_Left tinyint not null,
    InVehicle_Turn_Signal_Right tinyint not null,
    InVehicle_Wiper_Status tinyint not null,
    InVehicle_Yaw_Rate double not null,
    LaneTrack_Crossing_Left tinyint not null,
    LaneTrack_Crossing_Right tinyint not null,
    LaneTrack_Distance_Left_Marker double not null,
    );
    LOAD DATA LOCAL INFILE 'C:/Users/macshen/Documents/TempZhaobinM/SPMD_Oneday/DAS2_HV_Primary.csv'  INTO TABLE `SpOneDay`.`DAS2_HV_Primary`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
ignore 1 lines;*/ /*Too many column, not completed*/