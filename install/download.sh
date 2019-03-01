#!/bin/bash

DOWNLOAD=~/Downloads
cd $DOWNLOAD

GITS=(
	grpc/grpc.git
	google/googletest.git
	protocolbuffers/protobuf.git
	opencv/opencv.git
	opencv/opencv_contrib.git
	rgaufman/live555.git
	RhobanDeps/flycapture.git
)

for GIT in "${GITS[@]}"
do
	echo "--------[$GIT]"
	cd $DOWNLOAD
	git clone https://github.com/$GIT
	echo "--------[$GIT] ok"
done

echo "--------[INTEL]"
cd $DOWNLOAD
mkdir intel && cd intel
wget http://registrationcenter-download.intel.com/akdlm/irc_nas/tec/14887/l_ipp_2019.1.144.tgz
cd $DOWNLOAD
echo "--------[INTEL] ok"

echo "--------[CUDA]"
cd $DOWNLOAD
mkdir -p cuda && cd cuda
wget https://developer.nvidia.com/compute/cuda/9.2/Prod2/local_installers/cuda-repo-ubuntu1710-9-2-local_9.2.148-1_amd64 -O cuda-repo-ubuntu1710-9-2-local_9.2.148-1_amd64.deb
wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64 -O cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64.deb
cd $DOWNLOAD
echo "--------[CUDA] OK"

