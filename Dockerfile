FROM ubuntu:18.04
LABEL authors="Erich Bremer"
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://download.java.net/java/GA/jdk12.0.2/e482c34c86bd4bf8b56c0b35558996b9/10/GPL/openjdk-12.0.2_linux-x64_bin.tar.gz
RUN tar xvfz openjdk-12.0.2_linux-x64_bin.tar.gz
RUN mkdir /usr/java
RUN mv jdk-12.0.2 /usr/java
RUN ln -s /usr/java/jdk-12.0.2/bin/java /usr/bin/java
COPY run.sh /root
COPY QuIPUtils-2.2.3.jar /usr/bin
COPY imageloader /usr/bin
COPY maploader /usr/bin
RUN chmod 0755 /usr/bin/imageloader
RUN chmod 0755 /usr/bin/maploader

RUN chgrp -R 0 /root && \
    chmod -R g+rwX /root

RUN mkdir -p /data/images && \
	chgrp -R 0 /data && \
    chmod -R g+rwX /data

USER 1001

CMD ["sh", "/root/run.sh"]

