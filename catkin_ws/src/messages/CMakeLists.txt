cmake_minimum_required(VERSION 2.8.3)
project(messages)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs sensor_msgs)

add_message_files(
  FILES
    #   Injury_report.msg
    #   Injury_report_response.msg
    #   Status.msg
    #   Remaining_reports.msg
    #   Critical.msg
    #   Critical_report.msg
    #   Vitals.msg
    #   Injury.msg
    Prediction.msg 
    Prediction_element.msg 
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
)

catkin_package(
   CATKIN_DEPENDS message_runtime
)

include_directories(
)