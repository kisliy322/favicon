FROM python:3.8 AS builder
COPY requirements.txt .
RUN pip install --user -r requirements.txt
WORKDIR /usr/app/src
COPY main.py ./
CMD ["python", "./main.py"]
