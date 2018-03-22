FROM ubuntu:latest

# RUN apt-get update && apt-get install -y vim sudo ubuntu-desktop git
RUN apt-get update  -qq && apt-get install -y -qq vim sudo locales

## Yuke.  Locale junk that is not well defined:  
##  https://askubuntu.com/questions/770309/cannot-permanently-change-locale-on-16-04-server`
##  http://jaredmarkell.com/docker-and-locales/
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN dpkg-reconfigure --frontend=noninteractive locales
RUN localedef -i en_US -c -f UTF-8 en_US.UTF-8
RUN echo "LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8\nLANGUAGE=en_US.UTF-8\n" >> /etc/default/locale
#RUN update-locale var=locale

RUN adduser --quiet --disabled-password --shell /bin/bash --home /home/jet --gecos "Jetpack User" jet
RUN echo "jet:passwd" |chpasswd
RUN usermod -aG sudo jet
#COPY etc-default-locale /etc/default/locale
COPY JetPack-L4T-3.2-linux-x64_b196.run /home/jet/.
RUN chown jet:jet /home/jet/JetPack*.run

#USER jet
#ENV HOME /home/jet
#RUN cd /home/jet
# CMD /bin/bash

