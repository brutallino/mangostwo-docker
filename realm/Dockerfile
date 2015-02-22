FROM mangos-base

COPY ./setup.sh /tmp/setup.sh
COPY ./realmd.conf /tmp/realmd.conf

RUN /bin/sh /tmp/setup.sh

EXPOSE 3724
CMD ["/opt/mangos-server/bin/realmd"]