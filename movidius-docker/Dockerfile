FROM ubuntu:16.04 

ARG http_proxy

ARG https_proxy

ENV http_proxy ${http_proxy}

ENV https_proxy ${https_proxy}

RUN echo $https_proxy

RUN echo $http_proxy

# Uncomment the two lines below if you wish to use an Ubuntu mirror repository
# that is closer to you (and hence faster). The 'sources.list' file inside the
# 'tools/docker/' folder is set to use one of Ubuntu's official mirror in Taiwan.
# You should update this file based on your own location. For a list of official
# Ubuntu mirror repositories, check out: https://launchpad.net/ubuntu/+archivemirrors
#COPY sources.list /etc/apt
#RUN rm /var/lib/apt/lists/* -vf

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
      build-essential \
      git \
      lsb-release \
      sudo \
      udev \
      usbutils \
      wget \
      vim \
    && apt-get clean all
COPY 10-installer /etc/sudoers.d/
RUN mkdir -p /etc/udev/rules.d/
WORKDIR /
RUN git clone https://github.com/jeffreylutz/ncsdk.git
WORKDIR /ncsdk
## Issue with udev in docker container.  
## Have to not run udevadm in /opt/NCSDK/install-ncsdk.sh
RUN cd /ncsdk && chmod +x *.sh && ./install.sh
RUN cd /ncsdk && ./install-opencv.sh
#RUN make install
#RUN make examples


