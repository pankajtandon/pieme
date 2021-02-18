FROM python:3.8-buster
MAINTAINER Vesto LLC

RUN mkdir -p /mypy/src
WORKDIR "/mypy/src"
COPY mypie.py /mypy/src

ENTRYPOINT python mypie.py

