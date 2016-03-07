FROM node:latest

RUN mkdir -p /opt
RUN cd /opt && git clone https://github.com/feross/bittorrent-tracker
RUN cd /opt && git clone https://github.com/agustim/ginstant

ADD ./start.sh /start.sh

EXPOSE 9100
EXPOSE 8000

CMD ["/bin/bash", "/start.sh"]
