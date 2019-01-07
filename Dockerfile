FROM ubuntu:18.04
RUN apt-get update
RUN apt-get wget
RUN apt-get install git -y
RUN git clone https://github.com/lanmower/bling.git
RUN ls
RUN /bling/install.sh
RUN /bling/genesis_start.sh
RUN sleep 5
RUN ./stop.sh
RUN ./start.sh
