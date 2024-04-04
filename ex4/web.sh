#!/bin/bash
yum install wget unzip git nginx -y
systemctl start nginx
systemctl enable nginx
git clone https://github.com/ridhampatel24/Portfolio.git
wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip
unzip -o 2117_infinite_loop.zip
cp -r 2117_infinite_loop/*  /usr/share/nginx/html
systemctl restart nginx