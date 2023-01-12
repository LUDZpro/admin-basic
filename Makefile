# Simple Makefile for the basic installation actions
dev-scripts-pirm: 
	chmod +x ./scripts/*.sh
reset-mariadb-password:
	./scripts/set_mariadb_password.sh