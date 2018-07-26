#!/bin/bash

#It is necessary to go robot urdf folder

export MYROBOT_NAME="elir"
export URDF_LOCATION="/home/mega/catkin_ws/src/elir_tests/elir_description_with_ref/urdf"
export DAE_LOCATION="/home/mega/catkin_ws/src/elir_tests/elir_description_with_ref/urdf"
rosrun xacro xacro --inorder -o "$URDF_LOCATION"/"$MYROBOT_NAME".urdf "$MYROBOT_NAME".urdf.xacro
rosrun collada_urdf urdf_to_collada "$URDF_LOCATION"/"$MYROBOT_NAME".urdf "$DAE_LOCATION"/"$MYROBOT_NAME".dae

export IKFAST_PRECISION="5"
cp "$DAE_LOCATION"/"$MYROBOT_NAME".dae "$DAE_LOCATION"/"$MYROBOT_NAME".backup.dae  # create a backup of your full precision dae.
rosrun moveit_kinematics round_collada_numbers.py "$DAE_LOCATION"/"$MYROBOT_NAME".dae "$DAE_LOCATION"/"$MYROBOT_NAME".dae "$IKFAST_PRECISION"