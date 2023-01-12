# Simple Makefile for the basic installation actions
dev-scripts-pirm : 
	chmod +x ./scripts/*.sh
	chmod +x ./nginx/scripts/*.sh
reset-mariadb-password :
	./scripts/set_mariadb_password.sh
nginx-copy-config :
	./nginx/scripts/copy_configs.sh
nginx-restart :
	service nginx restart

nginx-certbot :
	certbot --nginx -d $(domain) -d www.$(domain) 
certbot-status :
	certbot certificates
certbot-renew :
	certbot renew --dry-run
certbot-renew-force :
	certbot renew --force-renewal
certbot-renew-force-all :
	certbot renew --force-renewal --dry-run
certbot-check-cron-status :
	sudo systemctl status certbot.timer
