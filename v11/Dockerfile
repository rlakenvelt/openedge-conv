
FROM ubuntu:22.04
ARG INSTALL_FILE=PROGRESS_OE_11.tar.gz

RUN mkdir -p /install/openedge/
ADD ./$INSTALL_FILE /install/openedge

COPY ./response.ini install/openedge/
COPY ./restore.sh /usr/bin/
RUN chmod +x /usr/bin/restore.sh
COPY ./ActivationFile.txt /install/openedge/
RUN /install/openedge/proinst -b /install/openedge/response.ini -l /tmp/openedge_install.log
RUN rm -rf /install/
CMD [ "tail", "-f", "/dev/null" ]
