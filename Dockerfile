FROM python:3.11.2-alpine
LABEL maintainer="chernous.oleh@gmail.com"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR code/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
