#!/bin/bash

cd ~/Downloads \
&& git clone https://github.com/opencv/opencv.git \
&& git clone https://github.com/opencv/opencv_contrib.git \
&& cd ~/Downloads/opencv \
&& git checkout 3.4.0 \
&& cd ~/Downloads/opencv_contrib \
&& git checkout 3.4.0 \
&& mkdir -p ~/Downloads/opencv_build \
&& cd ~/Downloads/opencv_build \
&& cmake -DCMAKE_BUILD_TYPE=RELEASE \
 -DCMAKE_INSTALL_PREFIX=/usr/local \
 -DINSTALL_C_EXAMPLES=ON \
 -DINSTALL_PYTHON_EXAMPLES=ON \
 -DWITH_CUDA=OFF \
 -DWITH_FFMPEG=ON \
 -DWITH_JPEG=ON \
 -DWITH_TBB=ON \
 -DOPENCV_EXTRA_MODULES_PATH=~/Downloads/opencv_contrib/modules \
 -DWITH_GTK=ON \
 -DWITH_OPENGL=ON \
 ~/Downloads/opencv \
&& make -j$(nproc) \
&& sudo make install


