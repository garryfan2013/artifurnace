#!/bin/sh

BUILD_DIR="/opt/build"

docker run -h apachegpdb.localdomain -v `pwd`:$BUILD_DIR -w $BUILD_DIR centos:6.7 bash -c "${BUILD_DIR}/build.sh"
