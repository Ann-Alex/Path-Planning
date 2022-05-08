# Install script for directory: /home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_multi_robot_msgs/msg" TYPE FILE FILES
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/RobotGoals.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/RobotGoalsArray.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/RoutePrecondition.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/RouteSegment.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/Route.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/RouterStatus.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/Vertex.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/Graph.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/RobotInfo.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/Order.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/OrderArray.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/Pickup.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/OrderPosition.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/Station.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/StationArray.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/msg/RouteProgress.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_multi_robot_msgs/srv" TYPE FILE FILES
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/srv/StationManagerControlProtocol.srv"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/srv/StationManagerStationProtocol.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_multi_robot_msgs/cmake" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_multi_robot_msgs/catkin_generated/installspace/tuw_multi_robot_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/include/tuw_multi_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/roseus/ros/tuw_multi_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/common-lisp/ros/tuw_multi_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/gennodejs/ros/tuw_multi_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/alvina/new_proj/devel/lib/python3/dist-packages/tuw_multi_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/lib/python3/dist-packages/tuw_multi_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_multi_robot_msgs/catkin_generated/installspace/tuw_multi_robot_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_multi_robot_msgs/cmake" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_multi_robot_msgs/catkin_generated/installspace/tuw_multi_robot_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_multi_robot_msgs/cmake" TYPE FILE FILES
    "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_multi_robot_msgs/catkin_generated/installspace/tuw_multi_robot_msgsConfig.cmake"
    "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_multi_robot_msgs/catkin_generated/installspace/tuw_multi_robot_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_multi_robot_msgs" TYPE FILE FILES "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tuw_multi_robot_msgs" TYPE DIRECTORY FILES "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_multi_robot_msgs/include/tuw_multi_robot_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

