# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="tf2_eigen"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/bouncy/${PN}/0.9.1-1.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/geometry_msgs
	ros-bouncy/tf2
	ros-bouncy/tf2_ros
	test? ( ros-bouncy/ament_cmake_gtest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
