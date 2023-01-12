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
