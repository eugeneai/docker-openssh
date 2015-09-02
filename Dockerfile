# Dockerfile for Openssh on Archlinux
FROM eugeneai/archlinux:kampka

MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>

RUN pacman --noconfirm -Sy openssh &&\
    rm -r /var/cache/pacman/pkg && \
    rm -r /var/lib/pacman/sync

RUN touch /var/log/lastlog
ADD sshd_config /etc/ssh/sshd_config

ADD run.sh /run.sh
RUN chmod 0755 /run.sh

VOLUME ["/root", "/home", "/srv"]
EXPOSE 22

ENTRYPOINT ["/run.sh"]

