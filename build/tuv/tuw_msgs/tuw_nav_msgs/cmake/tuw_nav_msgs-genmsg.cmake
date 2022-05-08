# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tuw_nav_msgs: 12 messages, 0 services")

set(MSG_I_FLAGS "-Ituw_nav_msgs:/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Ituw_geometry_msgs:/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_geometry_msgs/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tuw_nav_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg" "geometry_msgs/Quaternion:tuw_nav_msgs/RouteSegment:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg" ""
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg" "std_msgs/Header:tuw_nav_msgs/Float64Array"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg" "geometry_msgs/Quaternion:nav_msgs/Path:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg" NAME_WE)
add_custom_target(_tuw_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_nav_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_cpp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(tuw_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tuw_nav_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tuw_nav_msgs_generate_messages tuw_nav_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_cpp _tuw_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_nav_msgs_gencpp)
add_dependencies(tuw_nav_msgs_gencpp tuw_nav_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_nav_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_eus(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(tuw_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tuw_nav_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tuw_nav_msgs_generate_messages tuw_nav_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_eus _tuw_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_nav_msgs_geneus)
add_dependencies(tuw_nav_msgs_geneus tuw_nav_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_nav_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_lisp(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(tuw_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tuw_nav_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tuw_nav_msgs_generate_messages tuw_nav_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_lisp _tuw_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_nav_msgs_genlisp)
add_dependencies(tuw_nav_msgs_genlisp tuw_nav_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_nav_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_nodejs(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tuw_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tuw_nav_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tuw_nav_msgs_generate_messages tuw_nav_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_nodejs _tuw_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_nav_msgs_gennodejs)
add_dependencies(tuw_nav_msgs_gennodejs tuw_nav_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_nav_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)
_generate_msg_py(tuw_nav_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(tuw_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tuw_nav_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tuw_nav_msgs_generate_messages tuw_nav_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(tuw_nav_msgs_generate_messages_py _tuw_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_nav_msgs_genpy)
add_dependencies(tuw_nav_msgs_genpy tuw_nav_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_nav_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_nav_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tuw_nav_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET tuw_geometry_msgs_generate_messages_cpp)
  add_dependencies(tuw_nav_msgs_generate_messages_cpp tuw_geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(tuw_nav_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_nav_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tuw_nav_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET tuw_geometry_msgs_generate_messages_eus)
  add_dependencies(tuw_nav_msgs_generate_messages_eus tuw_geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(tuw_nav_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_nav_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tuw_nav_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET tuw_geometry_msgs_generate_messages_lisp)
  add_dependencies(tuw_nav_msgs_generate_messages_lisp tuw_geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(tuw_nav_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_nav_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tuw_nav_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET tuw_geometry_msgs_generate_messages_nodejs)
  add_dependencies(tuw_nav_msgs_generate_messages_nodejs tuw_geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(tuw_nav_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_nav_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tuw_nav_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET tuw_geometry_msgs_generate_messages_py)
  add_dependencies(tuw_nav_msgs_generate_messages_py tuw_geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(tuw_nav_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
