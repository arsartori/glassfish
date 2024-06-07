# Glassfish container images

### Build image
```
docker build -t glassfish:<version> .
```

### Start image
```
docker run -d --name glassfish -p 8080:8080 -p 4848:4848 glassfish:<version>
```

### Config Secure Admin Console (DAS)
```
/opt/glassfish5/bin/asadmin --port 4848 change-admin-password
/opt/glassfish5/bin/asadmin --port 4848 enable-secure-admin
/opt/glassfish5/bin/asadmin restart-domain
```
