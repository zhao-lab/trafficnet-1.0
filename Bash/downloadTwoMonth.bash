wget -i urlList2months.txt -nc
unzip \*
mkdir ~/spdata/twomonth; mv *.csv $_
find . -name "*3D" -exec rm -f {} \;


