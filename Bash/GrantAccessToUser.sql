-- CREATE USER 'gongxun'@'%' IDENTIFIED BY 'goblue';
-- SELECT User, Host FROM mysql.user;
GRANT SELECT ON SpOneDay.* TO 'gongxun'@'%';
GRANT SELECT ON SpTwoMonth.* TO 'gongxun'@'%';
GRANT SELECT ON v2v.* TO 'gongxun'@'%';
GRANT SELECT ON TrafficNet.* TO 'gongxun'@'%';


GRANT SELECT ON SpOneDay.* TO 'zhong'@'%';
GRANT SELECT ON SpTwoMonth.* TO 'zhong'@'%';
GRANT SELECT ON v2v.* TO 'zhong'@'%';
GRANT SELECT ON TrafficNet.* TO 'zhong'@'%';


GRANT SELECT ON SpOneDay.* TO 'mansur'@'%';
GRANT SELECT ON SpTwoMonth.* TO 'mansur'@'%';
GRANT SELECT ON v2v.* TO 'mansur'@'%';
GRANT SELECT ON TrafficNet.* TO 'mansur'@'%';

GRANT SELECT ON SpOneDay.* TO 'sisi'@'%';
GRANT SELECT ON SpTwoMonth.* TO 'sisi'@'%';
GRANT SELECT ON v2v.* TO 'sisi'@'%';
GRANT SELECT ON TrafficNet.* TO 'sisi'@'%';

GRANT SELECT ON SpOneDay.* TO 'wenshuo'@'%';
GRANT SELECT ON SpTwoMonth.* TO 'wenshuo'@'%';
GRANT SELECT ON v2v.* TO 'wenshuo'@'%';
GRANT SELECT ON TrafficNet.* TO 'wenshuo'@'%';

GRANT SELECT ON SpOneDay.* TO 'zhaobin'@'%';
GRANT SELECT ON SpTwoMonth.* TO 'zhaobin'@'%';
GRANT SELECT ON v2v.* TO 'zhaobin'@'%';
GRANT SELECT ON TrafficNet.* TO 'zhaobin'@'%';





-- drop table CutInEvents;
-- drop table CarFollowingEvents;
-- drop table FreeFlowEvents;
-- drop table cyclistevents;
-- drop table laneChangeRight;
-- drop table laneChangeLeft;
-- drop table pedestrianEvents;




-- CutInEvents 
  
-- FreeFlowEvents 
-- cyclistevents 
-- laneChangeRight 
-- laneChangeLeft 
-- pedestrianEvents 
