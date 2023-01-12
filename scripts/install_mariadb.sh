#install mariadbserver and its dependencies 
apt-get install mariadb-server mariadb-client -y
# set the mariadbserver root password
read -p "Enter the password for the MARIADB root: " MYSQL_ROOT_PASSWORD
mysqladmin -u root password $MYSQL_ROOT_PASSWORD 