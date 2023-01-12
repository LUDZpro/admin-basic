#copy nginx configs to /etc/nginx
#backup the default configs nginx.conf and mime.types to /etc/nginx/backup safely
mkdir -p /etc/nginx/backup
mv /etc/nginx/nginx.conf /etc/nginx/backup/nginx.conf.(date +%Y-%m-%d_%H:%M:%S)

#copy the new configs to /etc/nginx
cp /admin/admin-basic/nginx/etc/nginx.conf /etc/nginx/nginx.conf 
cp /admin/admin-basic/nginx/etc/global.config /etc/nginx/global.config

#copy or replace the website configs to /etc/nginx/conf.d/example.conf
cp /admin/admin-basic/nginx/configs/example.conf /etc/nginx/conf.d/example.conf