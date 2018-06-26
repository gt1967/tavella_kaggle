FROM kaggle/python:latest

RUN pip install telepot && \
    pip install telepot --upgrade && \
    pip install savoir && \
    # Tensorflow needs to be reisntalled for some issue errors
    conda install tensorflow && \
    pip install --upgrade pip && \
    pip install turicreate %% \
    # conda install py-xgboost && \
    # clean up pip cache
    rm -rf /root/.cache/pip/*
