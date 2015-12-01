FROM ubuntu:14.04
MAINTAINER Stephanie Herman, stephanie.herman.3820@student.uu.se

RUN apt-get install --yes apt-transport-https
RUN echo "deb http://ftp.acc.umu.se/mirror/CRAN/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
RUN apt-get update --yes && \
    apt-get install --yes --force-yes r-base
ADD HelloWorld.r ./
ENTRYPOINT ["Rscript", "HelloWorld.r"] 
