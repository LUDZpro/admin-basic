#enable firewall ufw and allow ssh, http and https traffic
ufw allow ssh
ufw allow http
ufw allow https
ufw enable
ufw status
