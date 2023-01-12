# set mariadb password for the user root
read -p "Enter the password for the user root: " MYSQL_ROOT_PASSWORD
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_ROOT_PASSWORD';"
#writing the password to the file /admin/.dbpass
echo $MYSQL_ROOT_PASSWORD > /admin/.dbpass
#set the permissions for the file /admin/.dbpass
chmod 600 /admin/.dbpass
#set the owner of the file /admin/.dbpass
chown root:root /admin/.dbpass
