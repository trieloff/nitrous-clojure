FROM quay.io/nitrous/ubuntu

RUN \
  add-apt-repository ppa:webupd8team/java && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && apt-get update && apt-get install -yy --no-install-recommends  oracle-java8-installer
  
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle