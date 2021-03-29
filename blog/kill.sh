#!/bin/sh
i=1
while true
do
     pid=`ps -aux|grep -v grep |grep kthreaddi |awk '{print $2}'`
     if [[ $pid -ne 0 ]];then
       kill -9 $pid
       echo "查杀第$i次" >>  kthreaddi.log
       let   i+=1
     fi
    sleep 5
done