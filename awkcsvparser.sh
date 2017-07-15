d1="Jul 11 2017 14:45:00 PDT"
d2="Jul 11 2017 15:00:00 PDT"
T1=$(date --date $echo"$d1" +%s) #zone="TZ=\"America/Los_Angeles\""  T1="date --date=$zone +%s" 
T2=$(date --date $echo"$d2" +%s) 
awk -F"," -v t1=$T1 -v t2=$T2 '{col1=substr($1, 1, length($1)-3); if (col1>= t1 && col1<= t2) print }' input.csv

