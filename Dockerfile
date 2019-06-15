# This is a comment
FROM python:alpine3.9
MAINTAINER gentkd

ENV PLANTUML_VERSION 1.2019.6
ENV LANG en_US.UTF-8

RUN mkdir /opt/plantuml \
    && mkdir /root/workspace

COPY ext-mkdocs-sample /root/mkdocs-sample
COPY mkdocs-sample-serve.sh /root/
COPY mkdocs-serve.sh /root/
COPY plantuml.sh /opt/plantuml/

RUN apk update && apk add --no-cache \
  graphviz \
  openjdk8

RUN apk add --no-cache curl \
    &&curl -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -o /opt/plantuml/plantuml.jar \
    && apk del curl

RUN link /root/mkdocs-serve.sh /bin/mkdocs-serve \
    && link /root/mkdocs-sample-serve.sh /bin/mkdocs-sample-serve \
    && link /opt/plantuml/plantuml.sh /bin/plantuml

RUN pip install \
  mkdocs \
  mkdocs-material \
  plantuml-markdown \
  pymdown-extensions \
  pygments

# expors for mkdocs serve
EXPOSE 8000

WORKDIR /root
