for file in *.csv;do    touch $PWD/20/$file;    head -n 20 $file > $PWD/20/$file; done;
