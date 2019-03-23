#!/bin/bash -x

sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt-get update
sudo apt-get -y install python3.6
sudo rm /usr/bin/python
sudo ln -s /usr/bin/python3.6 /usr/bin/python