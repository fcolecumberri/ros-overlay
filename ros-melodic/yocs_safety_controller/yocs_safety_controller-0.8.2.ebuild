# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A controller ensuring the safe operation of your robot.\
\
	The SafetyCo[...]"
HOMEPAGE="http://ros.org/wiki/yocsd_safety_controller"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/${PN}/0.8.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_threads
	ros-melodic/geometry_msgs
	ros-melodic/nodelet
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/yocs_controllers
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
