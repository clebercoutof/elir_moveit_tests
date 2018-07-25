#!/bin/bash

#It is necessary to go robot urdf folder

export MYROBOT_NAME="elir"
export URDF_LOCATION="/home/mega/catkin_ws/src/elir_tests/elir_description_with_ref/urdf"
export DAE_LOCATION="/home/mega/catkin_ws/src/elir_tests/elir_description_with_ref/urdf"
roscore
rosrun xacro xacro --inorder -o "$URDF_LOCATION"/"$MYROBOT_NAME".urdf "$MYROBOT_NAME".urdf.xacro
rosrun collada_urdf urdf_to_collada "$URDF_LOCATION"/"$MYROBOT_NAME".urdf "$DAE_LOCATION"/"$MYROBOT_NAME".dae
