#!/bin/bash

DOWNLOAD=~/Downloads

GTEST_DIR=$DOWNLOAD/googletest
cd  $GTEST_DIR \
&& mkdir build \
&& cd build \
&& cmake .. \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig

PROTOBUF_DIR=$DOWNLOAD/protobuf
cd  $PROTOBUF_DIR \
&& ./autogen.sh \
&& ./configure --prefix=/usr \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig \
&& sudo ln -s /usr/lib/libprotobuf.so /usr/lib/x86_64-linux-gnu/libprotobuf.so
 
GRPC_DIR=$DOWNLOAD/grpc
cd $GRPC_DIR \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig

OPENCV_DIR=$DOWNLOAD/opencv
OPENCV_CONTRIB_DIR=$DOWNLOAD/opencv_contrib
OPENCV_BUILD_DIR=$DOWNLOAD/opencv_build
OPENCV_BUILD_VER=3.4.0
cd $OPENCV_DIR \
&& git checkout $OPENCV_BUILD_VER \
&& cd $OPENCV_CONTRIB_DIR \
&& git checkout $OPENCV_BUILD_VER \
&& mkdir -p $OPENCV_BUILD_DIR \
&& cd $OPENCV_BUILD_DIR \
&& cmake -DCMAKE_BUILD_TYPE=RELEASE \
 -DCMAKE_INSTALL_PREFIX=/usr/local \
 -DINSTALL_C_EXAMPLES=ON \
 -DINSTALL_PYTHON_EXAMPLES=ON \
 -DWITH_CUDA=ON \
 -DWITH_FFMPEG=ON \
 -DWITH_JPEG=ON \
 -DWITH_TBB=ON \
 -DOPENCV_EXTRA_MODULES_PATH=$OPENCV_CONTRIB_DIR/modules \
 -DWITH_GTK=ON \
 -DWITH_OPENGL=ON \
 $OPENCV_DIR \
&& make -j$(nproc) \
&& sudo make install

