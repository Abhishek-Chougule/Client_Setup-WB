# Copyright (c) 2023, Abhishek Chougule and contributors
# Contact developer.mrabhi@gmail.com for more.
# For license information, please see license.txt
#chmod +x setup-client.sh
#./setup-client.sh

#______________________________________________________________________________________
#   
#         Dont Edit This File it will malfunction the things !
#______________________________________________________________________________________

#!/bin/bash


SCRIPT_PATH=/home/${USER}/Downloads/client.py

sudo bash -c 'cat << EOF > /etc/systemd/system/client-mrabhi.service
[Unit]
Description=Client Python Script by Abhishek Chougule. Copyright (c) 2023, Abhishek Chougule and contributors Contact developer.mrabhi@gmail.com for more. For license information, please see license.txt

[Service]
ExecStart=/usr/bin/python3 '${SCRIPT_PATH}'
Restart=always
User='${USER}'

[Install]
WantedBy=multi-user.target
EOF'


sudo systemctl daemon-reload
sudo systemctl enable client-mrabhi.service
sudo systemctl start client-mrabhi.service
