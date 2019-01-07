FROM ubuntu:18.04

RUN git pull https://github.com/lanmower/bling.git
RUN cd bling
RUN ./install.sh
RUN ./genesis_start.sh
RUN sleep 5
RUN ./stop.sh
RUN ./start.sh
