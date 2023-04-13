#!/bin/bash
loc="/home/${USER}/Shared/RiSA_Ros1NoeticKalibr"
mkdir -p $loc
xhost +local:root
docker run -it --rm \
	--privileged \
	--name=ros1noetickalibr \
	--shm-size=1g \
	--ulimit memlock=-1 \
	-e DISPLAY=$DISPLAY \
	-e XDG_RUNTIME_DIR=/tmp \
	-e QT_X11_NO_MITSHM=1 \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $loc:/catkin_ws/Shared \
	--device=/dev/dri:/dev/dri \
	--device=/dev/video0 \
	--net=host \
	ros1noetickalibr \
	kitty
