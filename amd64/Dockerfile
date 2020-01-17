FROM oscar86hsu/sshd:latest

RUN apk add --no-cache openssh-client ca-certificates bash

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]