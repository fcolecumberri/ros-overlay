# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing default plugins for format converters"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/${PN}/0.3.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/pluginlib
	ros-foxy/rcpputils
	ros-foxy/rmw
	ros-foxy/rmw_fastrtps_cpp
	ros-foxy/rosbag2_cpp
	ros-foxy/rosidl_runtime_cpp
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/rcpputils )
	test? ( ros-foxy/rmw_fastrtps_cpp )
	test? ( ros-foxy/rosbag2_cpp )
	test? ( ros-foxy/rosbag2_test_common )
	test? ( ros-foxy/test_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
