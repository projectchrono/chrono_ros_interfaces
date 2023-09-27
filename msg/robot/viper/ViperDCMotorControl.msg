# Input message that is to be sent to the viper robot 
# Input should be passed to the ViperDCMotorControl driver class
#
# The input includes steering angle(s), and lifting angle(s)

chrono_ros_interfaces/ViperDriver driver_commands

chrono_ros_interfaces/ViperMotorStallTorque stall_torque
chrono_ros_interfaces/ViperMotorNoLoadSpeed no_load_speed