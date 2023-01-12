#safely create a folder to download nginx to in /admin/nginx-1.22.1
mkdir -p /admin/nginx && cd /admin/nginx 
#download nginx to the folder
wget -P /admin/nginx https://nginx.org/download/nginx-1.22.1.tar.gz
#extract the tar.gz file
tar -xvf /admin/nginx/nginx-1.22.1.tar.gz -C /admin/nginx
#remove the tar.gz file
rm -rf /admin/nginx/nginx-1.22.1.tar.gz
