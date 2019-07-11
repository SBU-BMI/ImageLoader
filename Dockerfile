FROM openjdk:8
LABEL authors="Erich Bremer"
RUN apt-get -y update
COPY run.sh /root
COPY QuIPUtils-2.0.0.jar /usr/bin
COPY imageloader /usr/bin
COPY maploader /usr/bin
RUN chmod 0755 /usr/bin/imageloader
RUN chmod 0755 /usr/bin/maploader
CMD ["sh", "/root/run.sh"]

