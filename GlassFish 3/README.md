# Glassfish 3.1.2.2 container images

### Build image
```
docker build -t glassfish:3.1.2.2 .
```

### Start image
```
docker run -d --name glassfish -p 8080:8080 -p 4848:4848 glassfish:3.1.2.2
```

## Config Secure Admin Console (DAS)

### Connect to docker container
```
docker exec -it glassfish sh
```

### Set admin password
```
/opt/glassfish3/bin/asadmin --port 4848 change-admin-password
```

### Enable secure admin
```
/opt/glassfish3/bin/asadmin --port 4848 enable-secure-admin
```

## Restart GlassFish
```
/opt/glassfish3/bin/asadmin restart-domain
```
