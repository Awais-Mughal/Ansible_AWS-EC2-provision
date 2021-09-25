#!bin/bash

mkdir awais
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
echo "<!DOCTYPE html>
<html>
<body>
<h1>Hello!</h1>
<p>This Server is ( $(hostname -f)</p>
</body>
</html>" > /var/www/html/index.html

