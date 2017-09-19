FROM debian:jessie
RUN apt update
RUN apt install -y wget
RUN wget https://files.freeswitch.org/repo/deb/debian/freeswitch_archive_g0.pub
RUN apt-key add freeswitch_archive_g0.pub
RUN echo "deb http://files.freeswitch.org/repo/deb/freeswitch-1.6/ jessie main" > /etc/apt/sources.list.d/freeswitch.list
RUN apt update
RUN apt install -y freeswitch-meta-all

CMD ["service","freeswitch","restart"]
