# ncsdk_container

Instructions for running movidius inside a docker container

1) Build docker image
   Run the command:  ./build-movidius-container

2) Run the docker container:
   ./run-movidius-container

3) Test Movidius device:
   cd examples/apps/hello_ncs_cpp
   sudo make run

   Expected output:  "NCS device working."
