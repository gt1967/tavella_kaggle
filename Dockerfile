FROM kaggle/python:latest

# Tensorflow needs to be reinstalled for some issue errors
RUN conda install tensorflow

# Telegram Bot API
RUN pip install telepot && \
    pip install telepot --upgrade

# Savoir is an api for working with multichains
RUN pip install savoir

# ARG TENSORFLOW_VERSION=0.12.1
# ARG TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-${TENSORFLOW_VERSION}-cp35-cp35m-linux_x86_64.whl
# ARG KERAS_VERSION=1.2.2

# RUN pip --no-cache-dir install --upgrade ${TF_BINARY_URL}

# Install Keras
RUN pip --no-cache-dir install git+git://github.com/fchollet/keras.git@${KERAS_VERSION}

RUN pip install --upgrade pip

# turicreate works like pandas but with biggest data source
RUN pip install turicreate

# kaggle is the API for data competitions download
RUN pip install kaggle

# This is for a photo object recognition
RUN pip install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.1/imageai-2.0.1-py3-none-any.whl && \
    wget https://github.com/OlafenwaMoses/ImageAI/releases/download/1.0/resnet50_coco_best_v2.0.1.h5 && \
    wget https://orig00.deviantart.net/f170/f/2013/087/e/0/wizards_of_waverly_place_png_by_ivygo-d5zjoqx.png
# conda install py-xgboost && \

# This is for the Neuronal Dynamics EPFLx Course http://neuronaldynamics.epfl.ch/lectures.html
# conda create --name bmnn python=2.7 && \
# source activate bmnn && \
RUN pip install -c brian-team -c epfl-lcn neurodynex

# clean up pip cache
RUN rm -rf /root/.cache/pip/*
