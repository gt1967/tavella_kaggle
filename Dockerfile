FROM kaggle/python:latest

RUN pip install telepot && \
    pip install telepot --upgrade && \
    # conda install py-xgboost && \
    # clean up pip cache
    rm -rf /root/.cache/pip/*
