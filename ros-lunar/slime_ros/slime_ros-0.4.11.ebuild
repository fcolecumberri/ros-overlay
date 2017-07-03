# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Extensions for slime to assist in working with ROS packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/lunar/slime_ros/0.4.11-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/rosemacs
	ros-lunar/roslisp
	ros-lunar/slime_wrapper
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

