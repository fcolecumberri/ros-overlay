# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The robot description files for the Desistek SAGA ROV underwater vehicle"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/desistek_saga-release/archive/release/melodic/${PN}/0.3.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/gazebo_ros
	ros-melodic/robot_state_publisher
	ros-melodic/uuv_assistants
	ros-melodic/uuv_descriptions
	ros-melodic/uuv_gazebo_ros_plugins
	ros-melodic/uuv_sensor_ros_plugins
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	test? ( ros-melodic/xacro )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
