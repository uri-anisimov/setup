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

