# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The usb_cam_controllers package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/melodic/${PN}/0.0.4-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_info_manager
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/usb_cam_hardware_interface
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
