FROM ubuntu:24.04
LABEL authors="Erich Bremer"
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://download.java.net/openjdk/jdk25/ri/openjdk-25+36_linux-x64_bin.tar.gz
RUN tar xvfz openjdk-25+36_linux-x64_bin.tar.gz
RUN mkdir /usr/java
RUN mv jdk-25 /usr/java
RUN ln -s /usr/java/jdk-25/bin/java /usr/bin/java
COPY run.sh /root
COPY *.jar /usr/bin
COPY imageloader /usr/bin
COPY maploader /usr/bin
RUN chmod 0755 /usr/bin/imageloader
RUN chmod 0755 /usr/bin/maploader
CMD ["sh", "/root/run.sh"]

