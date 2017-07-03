# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Single image rectification and color processing."
HOMEPAGE="http://www.ros.org/wiki/image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_proc/1.12.20-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/dynamic_reconfigure
	ros-lunar/image_geometry
	ros-lunar/image_transport
	ros-lunar/nodelet
	ros-lunar/nodelet_topic_tools
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-libs/boost
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
ros-cmake_src_prepare
}

