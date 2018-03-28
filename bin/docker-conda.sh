#!/bin/bash

docker run -it continuumio/anaconda /bin/bash
#Alternatively, you can start a Jupyter Notebook server and interact with Anaconda via your browser:

#docker run -it -p 8888:8888 continuumio/anaconda /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser"
