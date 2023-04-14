# Ros 1 Noetic with Kalibr Docker

It'a a easy to use Docker container package with ROS 1 Noetic distro and Kalibr.
Created mainly for Robotics and Autonomus Systems specialization
students in Poznan University of Technology.

## Key features

- predifined Shared folder `/home/$USER/Shared/RiSA_Ros1NoeticKalibr` with '/catkin_ws/Shared'
- Pre-sourced ROS and Kalibr
- Working command hints
- Easy way to add apt-get libraries in packages.txt

## Quick guide

### Build and run

To build Dockerfile use this command:

```
./build
```

To run Docker container use this command:
```
./run
```

### Moving in container shortcuts

Leave container:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> D <br> </kbd>

Kill active proces:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> C <br> </kbd>

Create new terminal:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> N <br> </kbd>

Create new tab:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> T <br> </kbd>

Change tab:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> -> <br> </kbd>

or

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> <- <br> </kbd>

## Wiki

[ROS](http://wiki.ros.org/ROS/Tutorials)

[Kalibr](https://github.com/ethz-asl/kalibr/wiki)

## License (BSD)
**This Dockerfile to create Docker container uses Kalibr repo, which has this license:**<br>

Copyright (c) 2014, Paul Furgale, Jérôme Maye and Jörn Rehder, Autonomous Systems Lab, ETH Zurich, Switzerland<br>
Copyright (c) 2014, Thomas Schneider, Skybotix AG, Switzerland<br>
All rights reserved.<br>

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

1. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

1. All advertising materials mentioning features or use of this software must display the following acknowledgement: This product includes software developed by the Autonomous Systems Lab and Skybotix AG.

1. Neither the name of the Autonomous Systems Lab and Skybotix AG nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTONOMOUS SYSTEMS LAB AND SKYBOTIX AG ''AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL the AUTONOMOUS SYSTEMS LAB OR SKYBOTIX AG BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
