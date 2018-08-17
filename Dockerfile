FROM ubuntu:latest

MAINTAINER Davi Marcondes Moreira <davi.marcondes.moreira@gmail.com>

LABEL org.label-schema.name="devdrops/tmux" \
      org.label-schema.vcs-ref="" \
      org.label-schema.build-date="" \
      org.label-schema.vcs-url="https://github.com/devdrops/how-was-life-without-tmux" \
      org,label-schema.schema-version="1.0"

RUN apt-get update && \
    apt-get install tmux vim ruby-full -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    gem install tmuxinator

