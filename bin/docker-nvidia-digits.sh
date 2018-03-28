#!/bin/bash

# For DIGITS 6.0
docker run --runtime=nvidia --name digits -d -p 5000:5000 -p 6006:6006 -v digits-jobs:/jobs nvidia/digits:6.0

