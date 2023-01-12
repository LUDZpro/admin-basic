# set mariadb password for the user root
read -p "Enter the password for the MARIADB root: " MYSQL_ROOT_PASSWORD
mysqladmin -u root password $MYSQL_ROOT_PASSWORD 
#writing the password to the file /admin/.dbpass
echo $MYSQL_ROOT_PASSWORD > /admin/.dbpass
#set the permissions for the file /admin/.dbpass
chmod 600 /admin/.dbpass
#set the owner of the file /admin/.dbpass
chown root:root /admin/.dbpass
