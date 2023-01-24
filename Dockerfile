FROM ubuntu:18.04

ENV QTDCORE=7
COPY ./entp.sh /

RUN apt-get update && apt-get install -y --no-install-recommends \
    g++ cmake libboost-dev libboost-system-dev libxml2-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN chmod a+x entp.sh 

CMD ./entp.sh ${QTDCORE}
