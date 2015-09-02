#!/bin/bash

[[ ! -d /srv ]] && mkdir /srv/ && chmod 0755 /srv
[[ ! -d /srv/ssh ]] && mkdir /srv/ssh

if [[ ! -e /srv/ssh/ssh_host_key.pub ]];
then
  echo "Generating ssh keys for this instance..."

  /usr/bin/ssh-keygen -A
  mv /etc/ssh/ssh_host* /srv/ssh/

  echo "DONE"
fi

echo "Starting SSH daemon..."

exec /usr/bin/sshd -D -e

