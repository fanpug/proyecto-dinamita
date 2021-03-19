FROM ubuntu

MAINTAINER Humberto Navarro, Sergio Rodriguez, Kevin Lopez

#ENV HOME /root

COPY ./main.sh ./main.sh

RUN chmod 777 /main.sh

#CMD bash main.sh

ENTRYPOINT ["/main.sh"]
