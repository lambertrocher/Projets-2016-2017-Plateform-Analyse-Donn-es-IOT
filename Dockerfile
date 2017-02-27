FROM ubuntu
MAINTAINER Rocher Lambert <lambert.rocher@gmail.com>

# update packages
RUN apt-get update -y

# install R
RUN apt-get install r-base-core -y

#install curl
RUN apt-get install curl -y
RUN apt-get install libcurl4-gnutls-dev -y

#install openssl
RUN apt-get install libssl-dev -y


# install latest version of influxdb
#RUN dnf install -y https://dl.influxdata.com/influxdb/releases/influxdb-0.13.0.x86_64.rpm

#install grafana 
#RUN dnf install -y https://grafanarel.s3.amazonaws.com/builds/grafana-4.1.1-1484211277.x86_64.rpm
#RUN dnf clean all
# upload and configure for execution start.sh script

ADD start.sh /start.sh
ADD test.r /test.r

#EXPOSE 3000
#EXPOSE 8083
#EXPOSE 8086
#VOLUME /var/lib/grafana

RUN chmod +x /start.sh
CMD ["/start.sh"]
