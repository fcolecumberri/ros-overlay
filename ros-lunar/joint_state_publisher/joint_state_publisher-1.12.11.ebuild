# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="This package contains a tool for setting and publishing joint state values for a"
HOMEPAGE="http://www.ros.org/wiki/joint_state_publisher"
SRC_URI="https://github.com/ros-gbp/robot_model-release/archive/release/lunar/joint_state_publisher/1.12.11-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-lunar/python_qt_binding
    ros-lunar/rospy
    ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D%/}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-lunar
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}