FROM ruby:2.1-onbuild
MAINTAINER Gabriel McArthur <gabriel.mcarthur@gmail.com>

# Pre-requisites
RUN echo "deb http://deb-multimedia.org jessie main non-free" > /etc/apt/sources.list.d/non-free.list
RUN apt-get update
RUN apt-get install -y --force-yes deb-multimedia-keyring
RUN apt-get install -y --force-yes ffmpeg

# Configure the user
RUN apt-get install -y zsh rlwrap tmux vim-common vim-scripts vim-nox
RUN useradd gabriel -u 1000 -s /bin/zsh --no-create-home
#RUN mkdir -p /etc/sudoers.d/ && echo "gabriel ALL=(ALL:ALL) NOPASSWD:ALL
VOLUME ["/home/gabriel"]

# Cleanup
USER root
RUN apt-get clean 
