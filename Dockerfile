FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install git -y
RUN git pull https://github.com/lanmower/bling.git
RUN cd bling
RUN ./install.sh
RUN ./genesis_start.sh
RUN sleep 5
RUN ./stop.sh
RUN ./start.sh
