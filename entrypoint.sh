#!/bin/bash

if [ ! -f /etc/ssh/ssh_host_rsa_key ]; then
  echo '*** Initialize /etc/ssh directory'
  mkdir -p /etc/ssh /var/log
  touch /var/log/wtmp
  cp -a /etc/ssh.orig/* /etc/ssh/
  ssh-keygen -A
fi

mkdir -p /var/log
touch /var/log/wtmp
/usr/sbin/sshd -D -e
