# A custom ROS message which defines information about a ChBody
# NOTE: to reduce overhead, this messge only includes state information

std_msgs/Header header

geometry_msgs/Pose pose # position and orientation
geometry_msgs/Twist twist # linear and angular velocity
geometry_msgs/Accel accel # linear and angular acceleration