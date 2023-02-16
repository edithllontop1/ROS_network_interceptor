#!/bin/bash

export ROS_DOMAIN_ID=$1
ros2 topic list > topics.txt
echo "exported"

file='topics.txt'
i=1
while read line
do
        echo "Line No. $i : $line"
        if [ $line != "/parameter_events" ] && [ $line != "/rosout" ]
        then
                timeout 10s ros2 topic echo $line > hacked_topic_messages.txt
        fi
        i=$((i+1))
done < $file