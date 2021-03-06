# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Localization using fiducial markers"
HOMEPAGE="http://wiki.ros.org/fiducials"
SRC_URI="https://github.com/UbiquityRobotics-release/${PN}-release/archive/release/melodic/${PN}/0.11.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/aruco_detect
	ros-melodic/fiducial_msgs
	ros-melodic/fiducial_slam
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
