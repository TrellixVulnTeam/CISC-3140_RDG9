BEGIN {FS = ","}
{printf "%-20s", $7}
{printf "%-20s", $5}
{printf "%-20s", $6}


{for(i=8;i<=NF;i++) 
total+=$i; 
print total; 
total=0}

