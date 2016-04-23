FROM quay.io/nitrous/ubuntu

RUN \
  add-apt-repository ppa:webupd8team/java && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && apt-get update && apt-get install -yy --no-install-recommends  oracle-java8-installer
  
RUN \
  mkdir /opt/lein && curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > /opt/lein/lein && ln -s /opt/lein/lein /usr/local/bin/ && chmod a+x /opt/lein/lein 
  
RUN \
  curl http://zbyedidia.webfactional.com/micro/binaries/micro-linux64.tar.gz | tar -C /opt/ -zxv && ln -s /opt/micro/micro /usr/local/bin/
  
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle