FROM ubuntu:20.04
LABEL authors="Erich Bremer"
RUN apt-get update
RUN apt-get install -y wget
RUN https://download.java.net/openjdk/jdk17/ri/openjdk-17+35_linux-x64_bin.tar.gz
RUN tar xvfz openjdk-17+35_linux-x64_bin.tar.gz
RUN mkdir /usr/java
RUN mv jdk-17 /usr/java
RUN ln -s /usr/java/jdk-17/bin/java /usr/bin/java
COPY run.sh /root
COPY *.jar /usr/bin
COPY imageloader /usr/bin
COPY maploader /usr/bin
RUN chmod 0755 /usr/bin/imageloader
RUN chmod 0755 /usr/bin/maploader
CMD ["sh", "/root/run.sh"]

