[Unit]
Description=nexus service
After=network.target

[Service]
Type=forking
LimitNOFILE=65536
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
User={{ nexus_user }}
Group={{ nexus_group }}
Restart=on-abort

[Install]
WantedBy=multi-user.target