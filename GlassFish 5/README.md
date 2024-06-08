# Glassfish 5.1.0 container images

### Build image
```
docker build -t glassfish:5.1.0 .
```

### Start image
```
docker run -d --name glassfish -p 8080:8080 -p 4848:4848 glassfish:5.1.0
```

## Config Secure Admin Console (DAS)

### Connect to docker container
```
docker exec -it glassfish bash
```

### Set admin password
```
/opt/glassfish5/bin/asadmin --port 4848 change-admin-password
```

### Enable secure admin
```
/opt/glassfish5/bin/asadmin --port 4848 enable-secure-admin
```

## Restart GlassFish
```
/opt/glassfish5/bin/asadmin restart-domain
```
