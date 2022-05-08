# Install script for directory: /home/alvina/new_proj/src/tuv/tuw_msgs/tuw_local_controller_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/alvina/new_proj/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_local_controller_msgs/action" TYPE FILE FILES "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_local_controller_msgs/action/ExecutePath.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_local_controller_msgs/msg" TYPE FILE FILES
    "/home/alvina/new_proj/devel/share/tuw_local_controller_msgs/msg/ExecutePathAction.msg"
    "/home/alvina/new_proj/devel/share/tuw_local_controller_msgs/msg/ExecutePathActionGoal.msg"
    "/home/alvina/new_proj/devel/share/tuw_local_controller_msgs/msg/ExecutePathActionResult.msg"
    "/home/alvina/new_proj/devel/share/tuw_local_controller_msgs/msg/ExecutePathActionFeedback.msg"
    "/home/alvina/new_proj/devel/share/tuw_local_controller_msgs/msg/ExecutePathGoal.msg"
    "/home/alvina/new_proj/devel/share/tuw_local_controller_msgs/msg/ExecutePathResult.msg"
    "/home/alvina/new_proj/devel/share/tuw_local_controller_msgs/msg/ExecutePathFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_local_controller_msgs/cmake" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_local_controller_msgs/catkin_generated/installspace/tuw_local_controller_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/include/tuw_local_controller_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/roseus/ros/tuw_local_controller_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/common-lisp/ros/tuw_local_controller_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/gennodejs/ros/tuw_local_controller_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/alvina/new_proj/devel/lib/python3/dist-packages/tuw_local_controller_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/lib/python3/dist-packages/tuw_local_controller_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_local_controller_msgs/catkin_generated/installspace/tuw_local_controller_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_local_controller_msgs/cmake" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_local_controller_msgs/catkin_generated/installspace/tuw_local_controller_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_local_controller_msgs/cmake" TYPE FILE FILES
    "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_local_controller_msgs/catkin_generated/installspace/tuw_local_controller_msgsConfig.cmake"
    "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_local_controller_msgs/catkin_generated/installspace/tuw_local_controller_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_local_controller_msgs" TYPE FILE FILES "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_local_controller_msgs/package.xml")
endif()
