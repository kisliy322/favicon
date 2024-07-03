FROM python:3.8 AS builder
COPY requirements.txt .
RUN pip install --user -r requirements.txt
WORKDIR /usr/app/src
COPY test_scr.py ./
CMD ["python", "./test_scr.py"]
