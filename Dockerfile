FROM python:3.8-buster
MAINTAINER Vesto LLC

RUN mkdir -p /mypy/src
WORKDIR "/mypy/src"
COPY requirements.txt /mypy/src
COPY mypie.py /mypy/src
COPY requirements.txt /mypy/src
COPY server.py /mypy/src

RUN pip install --user -r requirements.txt

ENTRYPOINT python server.py

