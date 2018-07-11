FROM kaggle/python:latest

RUN pip install telepot && \
    pip install telepot --upgrade && \
    # Savoir is an api for working with multichains
    pip install savoir && \
    # Tensorflow needs to be reinstalled for some issue errors
    conda install tensorflow && \
    pip install --upgrade pip && \
    # turicreate works like pandas but with biggest data source
    pip install turicreate && \
    # kaggle is the API for data competitions download
    pip install kaggle && \
    # This is for a photo object recognition
    pip install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.1/imageai-2.0.1-py3-none-any.whl && \
    wget https://github.com/OlafenwaMoses/ImageAI/releases/download/1.0/resnet50_coco_best_v2.0.1.h5 && \
    wget https://orig00.deviantart.net/f170/f/2013/087/e/0/wizards_of_waverly_place_png_by_ivygo-d5zjoqx.png && \
    # conda install py-xgboost && \
    # clean up pip cache
    rm -rf /root/.cache/pip/* && \
    # This is for the Neuronal Dynamics EPFLx Course http://neuronaldynamics.epfl.ch/lectures.html
    conda create --name bmnn python=2.7 && \
    source activate bmnn && \
    conda install -c brian-team -c epfl-lcn neurodynex
