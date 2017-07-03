# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Baxter-specific programs for Amazon Robotics Challenge 2017 at JSK Lab."
HOMEPAGE="http://wiki.ros.org/jsk_arc2017_baxter"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_arc2017_baxter/3.0.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/jsk_2015_05_baxter_apc
    ros-indigo/jsk_2016_01_baxter_apc
    ros-indigo/jsk_apc2015_common
    ros-indigo/jsk_apc2016_common
    ros-indigo/jsk_arc2017_common
    ros-indigo/jsk_baxter_startup
    ros-indigo/jsk_data
    ros-indigo/jsk_interactive_marker
    ros-indigo/jsk_perception
    ros-indigo/jsk_recognition_utils
    ros-indigo/jsk_rqt_plugins
    ros-indigo/jsk_rviz_plugins
    ros-indigo/jsk_topic_tools
    ros-indigo/robot_state_publisher
    ros-indigo/rospy
    ros-indigo/xacro
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/roseus
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}