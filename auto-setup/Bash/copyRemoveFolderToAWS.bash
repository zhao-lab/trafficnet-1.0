scp -r -i  ~/AWS/Key/AWS2.pem  ~/AWS/bash/.  ubuntu@ec2-54-157-238-23.compute-1.amazonaws.com:~/spdata/oneday
find . -name "*.pyc" -exec rm -f {} \;