#!/bin/bash -xve

rsync -av ./ ~/catkin_ws/src/pimouse_vision_control/

cd ~/catkin_ws/src/
git clone --depth=1 https://github.com/aoko5/pimouse_ros.git

cd ~/catkin_ws
catkin_makecatkin_make
