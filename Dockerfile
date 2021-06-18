#FROM ubuntu:20.04
FROM ubuntu:18.04

# time zone data
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# set ports
EXPOSE 6878

# config volume
VOLUME /root/.ACEStream

# update
RUN apt-get update && apt-get upgrade -y

# install deps
RUN apt-get install -y \
curl \
python-setuptools \
python-m2crypto \
python-apsw \
libpython2.7 \
net-tools \
python-lxml \
python-pkg-resources

# install acestream
RUN mkdir /opt/acestream
RUN curl http://acestream.org/downloads/linux/acestream_3.1.49_ubuntu_18.04_x86_64.tar.gz | tar -C /opt/acestream -xpz

# clean up
RUN apt-get autoremove -y && apt-get autoclean

# acestream engine start
ADD files/start.sh /opt/start.sh
RUN chmod +x /opt/start.sh
CMD ["/opt/start.sh"]
#ENTRYPOINT ["/opt/acestream/start-engine"]
#CMD ["--client-console --access-token dobrinkos"]
