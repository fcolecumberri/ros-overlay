# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Exotica solvers based on the Open Motion Planning Libary \(OMPL\)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/${PN}/5.1.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/exotica_core
	ros-kinetic/exotica_python
	ros-kinetic/ompl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
