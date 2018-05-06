################################################
##################### AWS ######################
################################################


find . -name "*.pyc" -exec rm -f {} \;




mysql --local-infile -u root -p 

chmod 0777 /tmp



scp -r -i  /home/gyh/AWS2.pem  *.csv  ubuntu@ec2-34-224-215-105.compute-1.amazonaws.com:/home/ubuntu/TrafficNet
scp -r -i  ~/AWS/AWS2.pem  ubuntu@ec2-34-224-215-105.compute-1.amazonaws.com:~/TrafficNet/20 ~/AWS/TrafficNet  



scp /home/gyh/SQL/saveData.sql gyh@141.211.55.164:/tmp/
scp AWS2.pem zhaoding@141.211.55.164:/home/gyh




scp -a gyh@141.211.55.164:/tmp/gyh /home/gyh 







################################################
##################### MTC ######################
################################################
ssh zhaoding@141.211.55.164

mysql --local-infile -u dev -p tmpdir=/tmp

ssh-keygen

scp zhaoding@141.211.55.164:/home/gyh/cyclistEvents.csv /home/gyh/SQL
scp /home/gyh/SQL/saveData2.sql gyh@141.211.55.164:/tmp/
scp /home/gyh/SQL/wsuWithNnNode.csv gyh@141.211.55.164:/tmp/
scp /home/gyh/SQL/wsuWithNnNodeTest.csv gyh@141.211.55.164:/tmp/

scp -r -i  ~/AWS/AWS2.pem  ~/AWS/bash/.  ubuntu@ec2-34-224-215-105.compute-1.amazonaws.com:~/spdata/oneday



################################################
#################### MySQL #####################
################################################

mysql --local-infile -u root -p
mysql --local-infile -u dev -p
## select table information

SELECT column_name,Data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'CarFollowingEvents' ;

source  /tmp/saveData.sql

select * from into outfile '/home/gyh/test.csv' 


LOAD DATA INFILE '/tmp/wsuWithNnNode.csv' INTO TABLE dataWsuWithNNode;



LOAD DATA INFILE '/tmp/wsuWithNnNode.csv'
INTO TABLE dataWsuWithNNode COLUMNS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 0 LINES;

LOAD DATA INFILE '/tmp/wsuWithNnNodeTest.csv'
INTO TABLE dataWsuWithNNode COLUMNS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 0 LINES;




mysqldump -u dev -p --opt das1 > home/gyh/trafficeNetDas1.sql

mysqldump -u dev -p das1 CutInEvents CarFollowingEvents DataFrontTargets DataWsu DataLane FreeFlowEvents cyclistevents laneChangeRight laneChangeLeft pedestrianEvents > TrafficNet.sql


mysqldump -u dev -p das1 CutInEvents CarFollowingEvents  FreeFlowEvents cyclistevents laneChangeRight laneChangeLeft pedestrianEvents > TrafficNetEvents.sql

scp -r -i  /home/gyh/AWS2.pem /home/gyh/TrafficNet.sql    ubuntu@ec2-34-224-215-105.compute-1.amazonaws.com:/home/ubuntu/TrafficNet


mysql -u root -p TrafficNet < /home/ubuntu/TrafficNet/TrafficNet.sql

mysql -u dev -p SpTwoMonth < /home/gyh/TrafficNet.sql

mysql -u dev -p TrafficNet < /home/gyh/TrafficNetEvents.sql