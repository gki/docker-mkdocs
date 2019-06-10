# This is a comment
FROM python:alpine3.9
MAINTAINER gentkd

ENV PLANTUML_VERSION 1.2019.6
ENV LANG en_US.UTF-8

RUN apk update && apk add --no-cache \
  graphviz \
  curl \
  openjdk8

RUN mkdir /app \
    && curl -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -o /app/plantuml.jar \
    && apk del curl

RUN pip install \
  mkdocs \
  mkdocs-material \
  plantuml-markdown \
  python-markdown-math

# expors for mkdocs serve
EXPOSE 8000

# mkdocs serve -a 0.0.0.0:8000
