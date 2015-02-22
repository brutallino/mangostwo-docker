FROM mangos-base

COPY ./setup.sh /tmp/setup.sh
COPY ./mangosd.conf /tmp/mangosd.conf

RUN /bin/sh /tmp/setup.sh

EXPOSE 8085
CMD ["/opt/mangos-server/bin/mangosd"]