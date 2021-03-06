# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="rqt_action provides a feature to introspect all available ROS\
  action typ[...]"
HOMEPAGE="http://wiki.ros.org/rqt_action"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/python_qt_binding
	ros-foxy/rclpy
	ros-foxy/rqt_gui
	ros-foxy/rqt_gui_py
	ros-foxy/rqt_msg
	ros-foxy/rqt_py_common
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
