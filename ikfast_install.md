
# IKFAST INSTALLATION

## Getting started
### Necessary Programs
```
sudo apt-get install cmake g++ git ipython minizip python-dev python-h5py python-numpy python-scipy qt4-dev-tools
```
#Necessary Libraries
```
sudo apt-get install libassimp-dev libavcodec-dev libavformat-dev libavformat-dev libboost-all-dev libboost-date-time-dev libbullet-dev libfaac-dev libglew-dev libgsm1-dev liblapack-dev liblog4cxx-dev libmpfr-dev libode-dev libogg-dev libpcrecpp0v5 libpcre3-dev libqhull-dev libqt4-dev libsoqt-dev-common libsoqt4-dev libswscale-dev libswscale-dev libvorbis-dev libx264-dev libxml2-dev libxvidcore-dev
```

### Enabling OpenRave
```
sudo apt-get install libcairo2-dev libjasper-dev libpoppler-glib-dev libsdl2-dev libtiff5-dev libxrandr-dev
```

```
git clone https://github.com/openscenegraph/OpenSceneGraph.git --branch OpenSceneGraph-3.4
cd OpenSceneGraph
mkdir build; cd build
cmake .. -DDESIRED_QT_VERSION=4
make -j$(nproc)
sudo make install
```

### Update simpy  version 
If you dont have pip installed 
```
sudo apt-get install python-pip
```
Then
```
pip install --upgrade --user sympy==0.7.1
```
### Remove mpmath
```
sudo apt remove python-mpmath
```
### MoveIt! IKFAST installation 
```
sudo apt-get install ros-kinetic-moveit-kinematics
```

Go to your catkin workspace and :


```
git clone https://github.com/ros-planning/moveit.git
```

###Open Rave installation
```
export PYTHONPATH=$PYTHONPATH:`openrave-config --python-dir`
```

In ubuntu 16.04 is necessary to do the source install
```
git clone --branch latest_stable https://github.com/rdiankov/openrave.git
```
```
cd openrave && mkdir build && cd build
```
```
cmake -DODE_USE_MULTITHREAD=ON -DOSG_DIR=/usr/local/lib64/ ..
```

```
make -j$(nproc)
```
```
sudo make install
```
