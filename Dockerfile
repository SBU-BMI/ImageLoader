FROM ubuntu:20.04
LABEL authors="Erich Bremer"
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz
RUN tar xvfz jdk-17_linux-x64_bin.tar.gz
RUN mkdir /usr/java
RUN mv jdk-17.0.3.1 /usr/java
RUN ln -s /usr/java/jdk-17.0.3.1/bin/java /usr/bin/java
COPY run.sh /root
COPY *.jar /usr/bin
COPY imageloader /usr/bin
COPY maploader /usr/bin
RUN chmod 0755 /usr/bin/imageloader
RUN chmod 0755 /usr/bin/maploader
CMD ["sh", "/root/run.sh"]

