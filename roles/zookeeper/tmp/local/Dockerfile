FROM docker.io/openjdk:8
COPY file.tar /
RUN tar xf /file.tar
RUN tar xzf /zookeeper-3.5.9.tar.gz
EXPOSE 2181 2888 3888
WORKDIR /
CMD /zookeeper_start.sh
