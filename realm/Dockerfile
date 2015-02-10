from ubuntu

WORKDIR /tmp
COPY ./setup.sh /tmp/setup.sh
COPY ./realmd.conf /tmp/realmd.conf

RUN sudo apt-get install -y software-properties-common
RUN sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential gcc g++ automake git-core autoconf make patch libmysql++-dev libtool libssl-dev grep binutils zlibc libc6 libbz2-dev cmake libace-dev

RUN /bin/sh /tmp/setup.sh

CMD ["/opt/mangos-server/bin/realmd"]