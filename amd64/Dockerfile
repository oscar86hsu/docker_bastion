FROM oscar86hsu/bastion:latest

RUN apk add --no-cache openssh-client ca-certificates bash

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]