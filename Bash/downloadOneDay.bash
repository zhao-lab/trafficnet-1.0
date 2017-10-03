wget -i urlList1day.txt -nc
unzip \*
mkdir ~/spdata/oneday; mv *.csv $_
find . -name "*3D" -exec rm -f {} \;


