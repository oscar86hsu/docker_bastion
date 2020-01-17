FROM oscar86hsu/sshd:armv7

RUN apk add --no-cache openssh-client ca-certificates bash

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]