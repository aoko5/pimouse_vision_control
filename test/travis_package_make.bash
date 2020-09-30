#!/bin/bash -xve

sudo apt-get update
sudo apt-get install opencv-data libopencv-dev python-opencv

sudo apt-get install ros-kinetic-cv-bridge
sudo apt-get install ros-kinetic-cv-camera

rsync -av ./ ~/catkin_ws/src/pimouse_vision_control/

cd ~/catkin_ws/src/
git clone --depth=1 https://github.com/aoko5/pimouse_ros.git

cd ~/catkin_ws
catkin_make
