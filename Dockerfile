FROM python:3.8
MAINTAINER Farbod Farhangfar

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir app
WORKDIR /app
COPY ./app /app

RUN adduser user
USER user