FROM openjdk:8
LABEL authors="Erich Bremer"
RUN apt-get -y update
COPY QuIPUtils-2.0.0.jar /usr/bin
COPY test.sh /usr/bin
COPY up2 /usr/bin
RUN chmod 0755 /usr/bin/test.sh
CMD ["/bin/bash"]
