# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Python library to assist in publishing markers easily"
HOMEPAGE="http://ros.org/wiki/easy_markers"
SRC_URI="https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/${PN}/0.2.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/rospy
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/roslint )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
