FROM ubuntu:14.04
LABEL maintainer="Andre Sartori <andre@aph.dev.br>"
ARG VERSION
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Update and install
RUN apt update && apt install -y openjdk-8-jdk wget unzip && apt clean
RUN wget http://download.oracle.com/glassfish/${VERSION}/release/glassfish-${VERSION}.zip -P /tmp
RUN unzip /tmp/glassfish-${VERSION}.zip -d /opt && rm /tmp/glassfish-${VERSION}.zip
WORKDIR /opt/glassfish5
EXPOSE 4848 8080 8181
CMD ["/opt/glassfish5/bin/asadmin","start-domain","--verbose"]
