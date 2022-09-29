 SSL

## Table of contents
Files | Description
----- | -----------
[0-https_abc](./0-https_abc) | What is HTTPS?, Why do you need HTTPS?, You want to setup HTTPS on your website, where shall you place the certificate?
[1-world_wide_web](./1-world_wide_web) | Bash script that will display information about subdomains
[2-haproxy_ssl_termination](./2-haproxy_ssl_termination) | HAproxy configuration file
[100-redirect_http_to_https](./100-redirect_http_to_https) | HAproxy configuration file to automatically redirect HTTP traffic to HTTPS

# Configures a new Ubuntu server with a custom HTTP header response
apt-get -y update
apt-get -y install nginx
ufw allow "Nginx HTTP"
echo "Hello World!" > /var/www/html/index.nginx-debian.html
sed -i "/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default
sed -i "/listen 80 default_server;/a add_header X-Served-By $hostname;" /etc/nginx/sites-available/default
service nginx start

