FROM ubuntu

RUN sudo apt-get install -y software-properties-common
RUN sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential gcc g++ automake git-core autoconf make patch libmysql++-dev libtool libssl-dev grep binutils zlibc libc6 libbz2-dev cmake libace-dev

COPY ./setup.sh /tmp/setup.sh
RUN /bin/sh /tmp/setup.sh
