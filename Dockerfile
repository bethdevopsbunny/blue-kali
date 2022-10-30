FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

COPY install_core.sh .
RUN ./install_core.sh

COPY install_go.sh .
RUN ./install_go.sh
ENV PATH="$PATH:/usr/local/go/bin:/root/go/bin"

COPY install_tools.sh .
RUN ./install_tools.sh


RUN cat versions
CMD bash -c 'while true; do sleep 10; done;'
