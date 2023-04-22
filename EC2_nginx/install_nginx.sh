#!/bin/bash
#sudo #! /bin/bash
sudo yum install nginx -y 
sudo systemctl enable nginx
sudo systemctl start nginx
echo "<h1>Hello World from Navsari</h1>" > /usr/share/nginx/html/index.html
sudo systemctl restart nginx

