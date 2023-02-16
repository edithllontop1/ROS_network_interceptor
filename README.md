# ROS_network_interceptor

## Prerequisites

Make sure you are able to launch the talker and listener example from [FogROS2_bootcamp](https://docs.docker.com/desktop/install/mac-install/)
Follow Part 1 and stop after step 13 in Part 2 to be able to run this example locally. 

### Step 1: 
After you have verified that you are able to launch the talker and listerner axample, terminate it and in that same directory run 
```
echo $ROS_DOMAIN_ID
```
You should see a number ranging from 0 and 101, inclusive outputted. However, if there isn't one you can set one by running
```
export ROS_DOMAIN_ID={value}
```

### Step 2: 
Open up a new tab in temrinal and following the same steps done in the prerequisites section, but this time stop at step 10 in Part 2 of the [FogROS2_bootcamp](https://docs.docker.com/desktop/install/mac-install/). We will be building another docker container that will intercept the talker and listener from the first one. 

### Step 3: 
Once we reached step 10, we go back to the first terminal and start up the talker and listener example by running
```
ros2 launch talker.local.launch.py
```
### Step 4: 
While that is running we go to the second docker container and run the following command passing in the value we saw/set form Step 1.
```
. test_interuptor.sh {value} 
```
After 5 seconds this will terminate on its own

### Step 5: 
Now you will see that there was a new file created called `hacked_topic_messages.txt`.
Open this file and you will be able to see the messages being sent from the first docker container!
```
nano hacked_topic_messages.txt
```
