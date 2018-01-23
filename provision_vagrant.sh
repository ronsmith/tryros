#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update

sudo apt-get install -y build-essential python3-dev python3-setuptools python3-pip python-virtualenv libgmp3-dev
sudo apt-get install ros-kinetic-ros-base python-rosinstall python-rosinstall-generator python-wstool

sudo rosdep init
rosdep update

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
