#!/bin/bash
echo "Please ensure USR, PASSWD, and SSH_PORT environment variables are set"

docker run -d --rm --name dev -p ${SSH_PORT}:22 alpine:3.18.4 sh -c "apk add bash openssh && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && adduser -h /home/${USR} -s /bin/bash -D ${USR} && echo -n '${USR}:${PASSWD}' | chpasswd && ssh-keygen -A && exec /usr/sbin/sshd -D"
