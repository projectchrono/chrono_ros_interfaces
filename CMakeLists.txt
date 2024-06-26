cmake_minimum_required(VERSION 3.5)
project(chrono_ros_interfaces)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

# Allow interfaces to be used for both C++ or Python
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  msg/Body.msg

  # vehicle
	msg/vehicle/DriverInputs.msg

  # robot viper
  msg/robot/viper/Viper.msg
  msg/robot/viper/ViperDCMotorControl.msg
  msg/robot/viper/ViperDriver.msg
  msg/robot/viper/ViperMotorNoLoadSpeed.msg
  msg/robot/viper/ViperMotorStallTorque.msg
  msg/robot/viper/ViperSteeringCommand.msg
  msg/robot/viper/ViperWheelID.msg

  # robot rassor
  msg/robot/rassor/Rassor.msg
  msg/robot/rassor/RassorDriver.msg
  msg/robot/rassor/RassorDrumID.msg
  msg/robot/rassor/RassorWheelID.msg
  msg/robot/rassor/RassorSpeedDriverArm.msg
  msg/robot/rassor/RassorSpeedDriverDrum.msg
  msg/robot/rassor/RassorSpeedDriverWheel.msg  

  DEPENDENCIES geometry_msgs std_msgs
)

ament_package()
