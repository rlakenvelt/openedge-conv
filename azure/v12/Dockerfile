
FROM ubuntu:22.04

RUN mkdir -p /install/openedge/
RUN mkdir -p /install/jdk/

COPY --from=eclipse-temurin:17.0.15_6-jdk /opt/java/openjdk /opt/java/openjdk

ADD ./PROGRESS_OE_12.tar.gz /install/openedge

COPY ./response.ini install/openedge/
COPY ./convert.sh /usr/bin/
RUN chmod +x /usr/bin/convert.sh
COPY ./ActivationFile.txt /install/openedge/
RUN /install/openedge/proinst -b /install/openedge/response.ini -l /tmp/openedge_install.log
RUN rm -rf /install/
CMD [ "tail", "-f", "/dev/null" ]

