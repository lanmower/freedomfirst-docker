FROM ubuntu:18.04
ENV PRIVKEY xxx
ENV PUBKEY xxx
ENV NAME xxx
RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install git -y
RUN git clone https://github.com/lanmower/bling.git
RUN ls
WORKDIR /bling
RUN ./install.sh
VOLUME /bling/blockchain
RUN ./genesis_start.sh
RUN sleep 5
RUN ./stop.sh
RUN ./start.sh
