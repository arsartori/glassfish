# Install Glassfish on Linux

useradd -m -d /opt/glassfish6 -U -s /bin/false glassfish

unzip /opt/glassfish.zip -d /opt

chown -R glassfish: /opt/glassfish6

nano/etc/systemd/system/glassfish.service

[Unit]
Description = GlassFish Server v6
After = syslog.target network.target

[Service]
User=glassfish
ExecStart=/opt/glassfish6/bin/asadmin start-domain
ExecReload=/opt/glassfish6/bin/asadmin restart-domain
ExecStop=/opt/glassfish6/bin/asadmin stop-domain
Type = forking

[Install]
WantedBy = multi-user.target
