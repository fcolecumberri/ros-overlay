# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/facontidavide/plotjuggler-release/archive/release/lunar/plotjuggler/1.1.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/ros_type_introspection
	ros-lunar/rosbag
	ros-lunar/rosbag_storage
	ros-lunar/roscpp
	ros-lunar/roscpp_serialization
	ros-lunar/rostime
	ros-lunar/topic_tools
	sys-devel/binutils
	dev-qt/qtsvg:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

