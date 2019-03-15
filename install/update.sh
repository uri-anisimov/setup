#!/bin/bash

sudo apt-get update \
&& sudo apt-get -y upgrade \
&& sudo apt-get -y install \
 g++ \
 curl \
 git \
 make \
 cmake \
 wget \
 zip \
 unzip \
 dia \
 xclip \
 gdebi-core \
 ffmpeg \
 mplayer \
 linux-headers-$(uname -r) \
 build-essential \
 dkms \
 autoconf \
 automake \
 libtool \
 pkg-config \
 clang \
 libgflags-dev \
 libc++-dev \
 libc-ares-dev \
 libssl-dev \
 libjemalloc-dev \
 libavdevice-dev \
 libquicktime-dev \
 libglew-dev \
 libopenexr-dev \
 libtiff-dev \
 libpng-dev \
 libpng++-dev \
 libdc1394-22-dev \
 libgphoto2-dev \
 libglib2.0-dev* \
 libboost-all-dev \
 liblivemedia-dev \
 portaudio19-dev \
 libtinyxml2-dev \
 libcpprest-dev \
 libgtk2.0-dev \
 libpthread-stubs0-dev \
 libraw1394-11 \
 libavcodec*dev \
 libavformat*dev \
 libswscale*dev \
 libswresample*dev \
 libavutil*dev \
 libgtkmm-2.4-1v5 \
 libglademm-2.4-1v5 \
 libgtkglextmm-x11-1.2-0v5 \
 libgtkmm-2.4-dev \
 libglademm-2.4-dev \
 libgtkglextmm-x11-1.2-dev \
 libusb-1.0-0 \
 freeglut3 \
 freeglut3-dev \
 libxi-dev \
 libxmu-dev \
 libtbb-dev \
&& sudo pkg-config gtk+-2.0 \
&& sudo ldconfig \
&& sudo apt-get autoclean \
&& sudo apt-get -y autoremove \
&& sudo ldconfig
