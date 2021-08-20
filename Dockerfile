FROM python:3.7-alpine
MAINTAINER GAURAV GUPTA

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY ./app /app
WORKDIR /app

RUN adduser -D user
USER user
