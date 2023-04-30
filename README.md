# docker-glassfish
Glassfish container images

## Build image
docker build -t glassfish .

## Start image
docker run -d --name glassfish -p 8080:8080 -p 4848:4848 glassfish
