FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        gdb \
        git \
        strace \
        ltrace \
        netcat \
        curl \
        nmap \
        ca-certificates \
        file \
        less \
        binutils \
        jhead \
        libimage-exiftool-perl \
        gcc-multilib \
        g++-multilib
RUN git clone https://github.com/longld/peda.git ~/peda &&  echo "source ~/peda/peda.py" >> ~/.gdbinit
