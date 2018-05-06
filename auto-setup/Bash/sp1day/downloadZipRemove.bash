wget -i urlList.txt -nc
unzip \* 
# mkdir ~/spdata/twomonth; mv *.csv $_
find . -name "*3D" -exec rm -f {} \;

