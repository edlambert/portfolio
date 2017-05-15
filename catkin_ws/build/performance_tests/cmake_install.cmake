# Install script for directory: /mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/src/performance_tests

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/performance_tests/msg" TYPE FILE FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/src/performance_tests/msg/SuperAwesome.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/performance_tests/cmake" TYPE FILE FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/build/performance_tests/catkin_generated/installspace/performance_tests-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/devel/include/performance_tests")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/devel/share/roseus/ros/performance_tests")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/devel/share/common-lisp/ros/performance_tests")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/devel/share/gennodejs/ros/performance_tests")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/devel/lib/python2.7/dist-packages/performance_tests")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/devel/lib/python2.7/dist-packages/performance_tests")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/build/performance_tests/catkin_generated/installspace/performance_tests.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/performance_tests/cmake" TYPE FILE FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/build/performance_tests/catkin_generated/installspace/performance_tests-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/performance_tests/cmake" TYPE FILE FILES
    "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/build/performance_tests/catkin_generated/installspace/performance_testsConfig.cmake"
    "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/build/performance_tests/catkin_generated/installspace/performance_testsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/performance_tests" TYPE FILE FILES "/mnt/93608ce9-2166-458c-b91a-e4ee6dae9eb0/git_clones/portfolio/catkin_ws/src/performance_tests/package.xml")
endif()

