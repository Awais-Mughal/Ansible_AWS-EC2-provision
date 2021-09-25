#!bin/bash

mkdir ~/awais
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo echo " #load balance
upstream balance {

#enter server address here


}

server {
        listen 80;
        server_name localhost;
        location / {
                proxy_pass http://balance;
                proxy_set_header Host \$host;
                }
        } " > /etc/nginx/sites-enabled/default

sudo systemctl restart nginx
