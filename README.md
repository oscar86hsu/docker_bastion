# docker_bastion

## Usage

```docker run --name bastion -d --restart=always -v $(pwd)/authorized_keys:/root/.ssh/authorized_keys:ro -p 2222:2222 oscar86hsu/bastion```<Br>

```ssh -p 2222 -i key dev@bation.address```