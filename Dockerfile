FROM kaggle/python:latest

CMD ["mkdir", "~/.kaggle"]
CMD ["mkdir", "test"]

COPY ./kaggle.json ~/.kaggle/kaggle.json
