# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Interprocess mechanisms vary greatly across platforms - sysv, posix, win32,[...]"
HOMEPAGE="http://wiki.ros.org/ecl_ipc"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/${PN}/1.0.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ecl_build
	ros-eloquent/ecl_config
	ros-eloquent/ecl_errors
	ros-eloquent/ecl_exceptions
	ros-eloquent/ecl_license
	ros-eloquent/ecl_threads
	ros-eloquent/ecl_time
	ros-eloquent/ecl_time_lite
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"