FROM java:8-jre

MAINTAINER Michael Rinus michael.rinus@holisticsystems.de
ENV HIVE_VERSION 3.1.5

#Install HiveMQ
WORKDIR /opt
COPY hivemq-$HIVE_VERSION.zip /opt/
RUN unzip hivemq-$HIVE_VERSION.zip && rm hivemq-$HIVE_VERSION.zip

EXPOSE 1883

CMD /opt/hivemq-$HIVE_VERSION/bin/run.sh