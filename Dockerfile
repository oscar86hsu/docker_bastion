FROM scratch
ADD rootfs.tar.gz /
RUN apk --update add openssh && rm -f /var/cache/apk/*
RUN ssh-keygen -A
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
  echo "PasswordAuthentication no" >> /etc/ssh/sshd_config && \
  echo "ChallengeResponseAuthentication no" >> /etc/ssh/sshd_config && \
  echo "Port 2222" >> /etc/ssh/sshd_config && \
  echo "StrictModes no" >> /etc/ssh/sshd_config

RUN  mkdir -p /root/.ssh
VOLUME /root/.ssh
ADD lighten.sh /usr/bin/lighten.sh
RUN chmod 700 /usr/bin/lighten.sh && /usr/bin/lighten.sh
USER root
CMD ["/usr/sbin/sshd", "-D"]