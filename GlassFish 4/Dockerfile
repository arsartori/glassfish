FROM alpine:3.16
LABEL maintainer="Andre Sartori <dev@aph.dev.br>"
RUN apk add --no-cache openjdk7-jre curl
WORKDIR /opt
RUN curl -O https://download.oracle.com/glassfish/4.1.2/release/glassfish-4.1.2.zip
RUN unzip glassfish-4* && rm glassfish-4*.zip
RUN ln -s glassfish4 glassfish
WORKDIR /opt/glassfish
EXPOSE 4848 8080 8181
CMD ["/opt/glassfish/bin/asadmin","start-domain","--verbose"]
