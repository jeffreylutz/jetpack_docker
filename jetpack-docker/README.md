## Method for creating Jetpack Ubuntu docker image

-- Due to Jetpack installer only being a GUI installer, the docker container image must have ubuntu-desktop installed and xwindows setup and the changed to the image committed.  Here are the steps for completing this:

1) Create the container image by running:  ./build-jetpack-docker-image

2) Open xwindows display by running:   xhost +

3) Start the container by running:  ./run-jetpack-container

4) Run within the container:   apt-get install ubuntu-desktop

5) Confirm xwindows is setup in the container by running:  xeyes

6) Now, become the jet normal user:  su - jet  (pass: passwd)

7) Run the Jetpack installer:  ./JetPack-L4T-3.2-linux-x64_b196.run

8) On the host commit the container changes:  docker commit <container_id>

