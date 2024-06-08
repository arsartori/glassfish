# Glassfish 6.2.5 container images

### Build image
```
docker build -t glassfish:6.2.5 .
```

### Start image
```
docker run -d --name glassfish -p 8080:8080 -p 4848:4848 glassfish:6.2.5
```

## Config Secure Admin Console (DAS)

### Connect to docker container
```
docker exec -it glassfish bash
```

### Set admin password
```
/opt/glassfish6/bin/asadmin --port 4848 change-admin-password
```

### Enable secure admin
```
/opt/glassfish6/bin/asadmin --port 4848 enable-secure-admin
```

## Restart GlassFish
```
/opt/glassfish6/bin/asadmin restart-domain
```
