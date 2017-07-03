# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Extract geometry value of a vehicle from urdf"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/urdf_geometry_parser-release/archive/release/lunar/urdf_geometry_parser/0.0.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/roscpp
	ros-lunar/tf2
	ros-lunar/urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
