FROM ubuntu:20.04
LABEL maintainer="Andre Sartori <andre@aph.dev.br>"
ARG VERSION
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Update and install
RUN apt update && apt install -y openjdk-11-jre wget unzip && apt clean
RUN wget https://eclipse.c3sl.ufpr.br/ee4j/glassfish/glassfish-6.2.5.zip -P /tmp 
RUN unzip /tmp/glassfish-6.2.5.zip -d /opt && rm /tmp/glassfish-6.2.5.zip
WORKDIR /opt/glassfish6
EXPOSE 4848 8080 8181
CMD ["/opt/glassfish6/bin/asadmin","start-domain","--verbose"]
