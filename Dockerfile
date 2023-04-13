FROM osrf/ros:noetic-desktop

# Copy required package list and performed commands
COPY packages.txt .

# Enviromental variables
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Warsaw
ENV WORKSPACE /catkin_ws

# Proceed instalation
RUN echo "Installing dependencies..." \
    && apt-get update -yq \
    && apt-get install -yq --no-install-recommends $(cat packages.txt) \
    && apt-get -y autoclean autoremove clean \
    && rm -rf /var/lib/apt/lists/*

# Copy Kalibr Repo
RUN echo "export USER=root" >> /root/.bashrc \
    && /bin/bash -c "source ~/.bashrc" \
    && mkdir -p $WORKSPACE/src \
    && cd $WORKSPACE/src \
    && git clone https://github.com/ori-drs/kalibr

# Build Kalibr
RUN cd $WORKSPACE \
    && catkin init \
    && catkin config --extend /opt/ros/noetic \
    && catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release \
    && catkin build -j$(nproc)

# Set settings
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc \
    && echo "source devel/setup.bash" >> ~/.bashrc \
    && /bin/bash -c "source ~/.bashrc" \
    && touch /root/.Xauthority

# Set default loc
WORKDIR $WORKSPACE

# Create shared folder
RUN mkdir -p Shared
