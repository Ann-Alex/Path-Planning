# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tuw_waypoint_to_spline_msgs: 0 messages, 1 services")

set(MSG_I_FLAGS "-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Ituw_nav_msgs:/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Ituw_geometry_msgs:/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_geometry_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tuw_waypoint_to_spline_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv" NAME_WE)
add_custom_target(_tuw_waypoint_to_spline_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuw_waypoint_to_spline_msgs" "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv" "geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:tuw_nav_msgs/Spline:nav_msgs/Path:tuw_nav_msgs/Float64Array:geometry_msgs/PoseStamped"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(tuw_waypoint_to_spline_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
)

### Generating Module File
_generate_module_cpp(tuw_waypoint_to_spline_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tuw_waypoint_to_spline_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages tuw_waypoint_to_spline_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv" NAME_WE)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_cpp _tuw_waypoint_to_spline_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_waypoint_to_spline_msgs_gencpp)
add_dependencies(tuw_waypoint_to_spline_msgs_gencpp tuw_waypoint_to_spline_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_waypoint_to_spline_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(tuw_waypoint_to_spline_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
)

### Generating Module File
_generate_module_eus(tuw_waypoint_to_spline_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tuw_waypoint_to_spline_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages tuw_waypoint_to_spline_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv" NAME_WE)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_eus _tuw_waypoint_to_spline_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_waypoint_to_spline_msgs_geneus)
add_dependencies(tuw_waypoint_to_spline_msgs_geneus tuw_waypoint_to_spline_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_waypoint_to_spline_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(tuw_waypoint_to_spline_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
)

### Generating Module File
_generate_module_lisp(tuw_waypoint_to_spline_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tuw_waypoint_to_spline_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages tuw_waypoint_to_spline_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv" NAME_WE)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_lisp _tuw_waypoint_to_spline_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_waypoint_to_spline_msgs_genlisp)
add_dependencies(tuw_waypoint_to_spline_msgs_genlisp tuw_waypoint_to_spline_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_waypoint_to_spline_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(tuw_waypoint_to_spline_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
)

### Generating Module File
_generate_module_nodejs(tuw_waypoint_to_spline_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tuw_waypoint_to_spline_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages tuw_waypoint_to_spline_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv" NAME_WE)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_nodejs _tuw_waypoint_to_spline_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_waypoint_to_spline_msgs_gennodejs)
add_dependencies(tuw_waypoint_to_spline_msgs_gennodejs tuw_waypoint_to_spline_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_waypoint_to_spline_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(tuw_waypoint_to_spline_msgs
  "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
)

### Generating Module File
_generate_module_py(tuw_waypoint_to_spline_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tuw_waypoint_to_spline_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages tuw_waypoint_to_spline_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_waypoint_to_spline_msgs/srv/PathToSpline.srv" NAME_WE)
add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_py _tuw_waypoint_to_spline_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuw_waypoint_to_spline_msgs_genpy)
add_dependencies(tuw_waypoint_to_spline_msgs_genpy tuw_waypoint_to_spline_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuw_waypoint_to_spline_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_waypoint_to_spline_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET tuw_nav_msgs_generate_messages_cpp)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_cpp tuw_nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_waypoint_to_spline_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET tuw_nav_msgs_generate_messages_eus)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_eus tuw_nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_waypoint_to_spline_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET tuw_nav_msgs_generate_messages_lisp)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_lisp tuw_nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_waypoint_to_spline_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET tuw_nav_msgs_generate_messages_nodejs)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_nodejs tuw_nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_waypoint_to_spline_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_waypoint_to_spline_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuw_waypoint_to_spline_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET tuw_nav_msgs_generate_messages_py)
  add_dependencies(tuw_waypoint_to_spline_msgs_generate_messages_py tuw_nav_msgs_generate_messages_py)
endif()
