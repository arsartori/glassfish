FROM ubuntu:20.04
LABEL maintainer="Andre Sartori <andre@aph.dev.br>"
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Update and install
RUN apt update && apt install -y openjdk-8-jre wget unzip && apt clean
RUN wget https://eclipse.c3sl.ufpr.br/glassfish/glassfish-5.1.0.zip -P /tmp 
RUN unzip /tmp/glassfish-5.1.0.zip -d /opt && rm /tmp/glassfish-5.1.0.zip
WORKDIR /opt/glassfish5
EXPOSE 4848 8080 8181
CMD ["/opt/glassfish5/bin/asadmin","start-domain","--verbose"]
