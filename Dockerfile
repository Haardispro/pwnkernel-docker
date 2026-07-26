FROM ubuntu:22.04 

RUN apt-get update && \
    apt-get install -y --no-install-recommends git wget gdb gdbserver python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*


RUN groupadd -r ctf && useradd -r -g ctf -d /home/ctf -s /usr/sbin/nologin ctf && \
    mkdir -p /home/ctf


WORKDIR /home/ctf 

COPY . . 
