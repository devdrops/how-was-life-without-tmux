FROM ubuntu:latest

LABEL maintainer="davi.marcondes.moreira@gmail.com" \
      org.label-schema.name="devdrops/tmux" \
      org.label-schema.vcs-ref="" \
      org.label-schema.build-date="" \
      org.label-schema.vcs-url="https://github.com/devdrops/how-was-life-without-tmux" \
      org.label-schema.schema-version="1.0"

RUN apt-get update && \
    apt-get install tmux vim ruby-full htop curl cowsay -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    gem install tmuxinator && \
    echo "export EDITOR=vim" >> ~/.bashrc

RUN echo "highlight Normal ctermfg=Green" > ~/.vimrc

