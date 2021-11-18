FROM python:3.7.5-slim-buster
LABEL maintainer='Edward Cheadle <edward.cheadle8@gmail.com>'

ENV INSTALL_PATH /snakeeyes
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

RUN pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .


CMD gunicorn -b 0.0.0.0:8000 --access-logfile - "snakeeyes.app:create_app()"