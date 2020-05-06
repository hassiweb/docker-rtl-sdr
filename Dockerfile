FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -yq git cmake autoconf automake libusb-1* g++ 
RUN git clone https://github.com/osmocom/rtl-sdr/ -b 0.6.0

WORKDIR /rtl-sdr/build
RUN cmake ../  
RUN make && make install && ldconfig

RUN echo "rtl_tcp -a \`hostname -i\` -p 1234" > /run.sh
CMD ["sh", "/run.sh"]