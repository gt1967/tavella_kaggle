FROM kaggle/python

    # Scikit-Learn nightly build
RUN cd /usr/local/src && git clone https://github.com/scikit-learn/scikit-learn.git && \
    cd scikit-learn && python setup.py build && python setup.py install && \
    # HDF5 support
    conda install h5py && \
    # https://github.com/biopython/biopython
    pip install biopython && \
    # clean up
    rm -rf /usr/local/src/* && \
    conda clean -i -l -t -y && \
    rm -rf /root/.cache/pip/*
    
RUN pip install telepot && \
    pip install telepot --upgrade && \
    pip install savoir && \
    # Tensorflow needs to be reisntalled for some issue errors
    conda install tensorflow && \
    pip install --upgrade pip && \
    pip install turicreate && \
    pip install kaggle && \
    pip install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.1/imageai-2.0.1-py3-none-any.whl && \
    wget https://github.com/OlafenwaMoses/ImageAI/releases/download/1.0/resnet50_coco_best_v2.0.1.h5 && \
    wget https://orig00.deviantart.net/f170/f/2013/087/e/0/wizards_of_waverly_place_png_by_ivygo-d5zjoqx.png && \
    # conda install py-xgboost && \
    # clean up
    rm -rf /usr/local/src/* && \
    conda clean -i -l -t -y && \
    rm -rf /root/.cache/pip/*
    
CMD ["mkdir", "~/.kaggle"]

COPY ./kaggle.json ~/.kaggle/kaggle.json

