FROM python:3.10-bullseye
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
RUN apt-get install -y vim less

ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

WORKDIR /usr/src

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

# If you want to install the library, uncomment "RUN pip install-rrequirements.txt".
# Also, place requirements.txt in "docker_python / src".
# RUN pip install -r requirements.txt