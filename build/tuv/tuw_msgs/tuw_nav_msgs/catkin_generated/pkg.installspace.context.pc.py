# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "tf;message_runtime;std_msgs;tuw_geometry_msgs;nav_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ltuw_nav_msgs".split(';') if "-ltuw_nav_msgs" != "" else []
PROJECT_NAME = "tuw_nav_msgs"
PROJECT_SPACE_DIR = "/home/alvina/new_proj/install"
PROJECT_VERSION = "0.0.13"
