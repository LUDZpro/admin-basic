#copy nginx configs to /etc/nginx
#backup the default configs nginx.conf and mime.types to /etc/nginx/backup safely
mkdir -p /etc/nginx/backup
mv /etc/nginx/nginx.conf /etc/nginx/backup/nginx.conf.bak.$(date +%Y-%m-%d_%H-%M-%S)
#copy the new configs to /etc/nginx
cp /admin/admin-basic/nginx/etc/nginx.conf /etc/nginx/nginx.conf 
cp /admin/admin-basic/nginx/etc/global.config /etc/nginx/global.config
#override the default  nginx website config with the example config
cp -fr /admin/admin-basic/nginx/configs/example.conf /etc/nginx/sites-available/default