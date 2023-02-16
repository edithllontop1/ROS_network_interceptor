# ROS_network_interceptor

## Getting Started

Make sure the talker and listener example work from FogROS2_bootcamp
[FogROS2_bootcamp](https://docs.docker.com/desktop/install/mac-install/)

###Step 1: 
Make sure the talker and listener example works

###Step 2: 

```
echo $ROS_DOMAIN_ID
```
Values for ROS_DOMAIN_ID range from 0 and 101, inclusive. 
If there isn’t an output, you can set one by running 
```
export ROS_DOMAIN_ID={value}
```

###Step 3: 
Build another docker container (following the same steps as before), make sure to stop at Part 2 #10 in FogROS2_bootcamp guide.

###Step 4: 
Start up the talker and listener example on the first docker container

###Step 4: 
Run on the second docker container
```
. test_interuptor.sh {value} 
```
After 5 seconds this will terminate on its own

###Step 5: 
Open the newly created hacked_topic_messages.txt file by running nano hacked_topic_messages.txt and you will be able to see the messages being sent from the first docker container!
