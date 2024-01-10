FROM ubuntu:20.04

WORKDIR /twingate

RUN apt-get update && apt-get install -y sudo curl
RUN curl -s https://binaries.twingate.com/client/linux/install.sh | sudo bash
RUN twingate help

COPY entrypoint.sh .
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]