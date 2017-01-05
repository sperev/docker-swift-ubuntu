
FROM ubuntu:16.04
MAINTAINER Sergei Perevoznikov <sperev@bk.ru>
LABEL Description="Linux Ubuntu 16.04 image prepared for swift usage"

# Linux OS utils and libraries
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y \
  build-essential \
  git \
  nano \
  wget \
  curl \
  unzip \
  openssl \
  clang-3.8 \
  libxml2 \
  libssl-dev \
  libpython2.7 \
  libicu-dev \
  libcurl4-openssl-dev \
  libmysqlclient-dev
  

# Set clang 3.8 as default
RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100
RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.8 100