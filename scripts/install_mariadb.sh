#install mariadbserver and its dependencies 
apt-get install mariadb-server mariadb-client -y
# set the mariadbserver root password
read -p "Enter the password for the MARIADB root: " MYSQL_ROOT_PASSWORD
mysqladmin -u root password $MYSQL_ROOT_PASSWORD 
# set the mariadbserver root password
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_ROOT_PASSWORD';"