FROM ubuntu:latest

# RUN apt-get update && apt-get install -y vim sudo ubuntu-desktop
RUN adduser --home /home/jet  jet hhhhhh
RUN adduser --quiet --disabled-password --shell /bin/bash --home /home/hi --gecos "The User" hi
RUN echo "hi:passwd" |chpasswd

