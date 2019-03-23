#!/bin/bash -x

sudo apt -y install python3-pip
sudo pip install --upgrade pip
sudo pip install robotframework
sudo pip install --upgrade robotframework
python --version
pip --version
robot --version