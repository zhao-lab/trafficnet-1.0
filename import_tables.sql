create database if not exists SpOneDay;
create database if not exists SpTwoMonth;

LOAD DATA LOCAL INFILE '/home/jackjia/traffic/das1/DataWsu.csv' INTO TABLE DataWsu
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';