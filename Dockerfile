FROM kaggle/python:latest

CMD ["mkdir", "~/.kaggle"]

COPY ./kaggle.json ~/.kaggle/kaggle.json
