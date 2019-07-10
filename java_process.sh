#!/bin/bash

java_process=( proc1 proc2 proc3 proc4 proc5 proc5 )
pid_array=()
pidstr= ""
for i in "${java_process[@]}"
do
        echo "Java Process to search: " $i
        pid=`ps aux | grep java | grep -i $i | cut -d" " -f3`
        echo "Process Id: " $pid
        pid_array+=("$pid")
        pidstr+=" "$pid
done

echo "Array PID: " ${pid_array[@]}
echo "Pid String: " $pidstr
