# ELIR MoveIt Tests!

These are the packages used to test the elir robot compatibility with MoveIt!

## Requirements

  * [Ubuntu 16.04 LTS (Xenial)](http://releases.ubuntu.com/14.04/) 
  * [ROS Kinetic Kame](http://wiki.ros.org/indigo/Installation/Ubuntu) 
  * [ROS Workspace](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment)

This packages were used to try to implement the motion planning of elir robot

## Packages Included
The "with_ref" packages where the packages that elir was configured as panda robot, creating a reference link beetween the joint2_f and the traction unit, considering the traction unit as the end_effector, like our robot "hand"

The "dummy_eef" packages contains the elir robot with a dummy end effector in the end of the traction unit.

## Avaiable Applications

The RVIZ Visualization with the Robot Model plugin is avaible for the descrpition packages:

```
$ roslaunch elir_description_with_ref elir_view.launch

```


## Contributions
* **Mandruvah Team**
* **Cleber Couto** - [clebercoutof](https://github.com/clebercoutof)

## Credits
* **Marco Reis** - [mhar-vell](https://github.com/mhar-vell)