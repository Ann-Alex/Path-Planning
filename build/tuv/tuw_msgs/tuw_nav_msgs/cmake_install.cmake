# Install script for directory: /home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs/msg" TYPE FILE FILES
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/Spline.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg"
    "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs/cmake" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/include/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/roseus/ros/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/common-lisp/ros/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/share/gennodejs/ros/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/alvina/new_proj/devel/lib/python3/dist-packages/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/alvina/new_proj/devel/lib/python3/dist-packages/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs/cmake" TYPE FILE FILES "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs/cmake" TYPE FILE FILES
    "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgsConfig.cmake"
    "/home/alvina/new_proj/build/tuv/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs" TYPE FILE FILES "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/alvina/new_proj/devel/lib/libtuw_nav_msgs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so"
         OLD_RPATH "/opt/ros/noetic/lib:/home/alvina/new_proj/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tuw_nav_msgs" TYPE DIRECTORY FILES "/home/alvina/new_proj/src/tuv/tuw_msgs/tuw_nav_msgs/include/tuw_nav_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

