#install nginx dependencies in order to compile nginx from source 
apt-get install libpcre3 libpcre3-dev libpcre++-dev libssl-dev -y
apt-get install libgeoip-dev libgeoip1 -y
apt-get install libgd-dev libgd3 -y
apt-get install libperl-dev libperl5.28 -y
apt-get install libxslt1-dev libxslt1.1 -y
apt-get install libxml2-dev libxml2 -y
apt-get install libpam0g-dev libpam0g -y
apt-get install libgd-dev libgd3 -y
# install the extra modules for nginx 
apt-get install libnginx-mod-http-ndk -y
apt-get install libnginx-mod-http-perl -y
apt-get install libnginx-mod-http-auth-pam -y
apt-get install libnginx-mod-http-subs-filter -y
apt-get install libnginx-mod-http-cache-purge -y
apt-get install libnginx-mod-http-uploadprogress -y
apt-get install libnginx-mod-http-dav-ext -y
apt-get install libnginx-mod-http-upstream-fair -y
apt-get install libnginx-mod-http-echo -y
apt-get install libnginx-mod-http-xslt-filter -y
apt-get install libnginx-mod-http-fancyindex -y
apt-get install libnginx-mod-mail -y
apt-get install libnginx-mod-http-geoip2 -y
apt-get install libnginx-mod-nchan -y
apt-get install libnginx-mod-http-geoip -y
apt-get install libnginx-mod-stream -y
apt-get install libnginx-mod-http-headers-more-filter -y
apt-get install libnginx-mod-stream-geoip2 -y
apt-get install libnginx-mod-http-image-filter -y
apt-get install libnginx-mod-stream-geoip -y
apt-get install libgeoip-dev libgeoip1  -y
apt-get update

# for these modules
# --with-http_ndk_module \
# --with-http_auth_pam_module \
# --with-http_cache_purge_module \
# --with-http_uploadprogress_module \
# --with-http_headers_more_filter_module \
# --with-http_geoip2_module \
# --with-http_fancyindex_module \
# --with-http_echo_module \
# --with-http_upstream_fair_module \
# --with-stream_geoip2_module \


#compile nginx from source with the following modules and options 
cd /admin/nginx/nginx-1.22.1
./configure --prefix=/etc/nginx \
--prefix=/etc/nginx \
--sbin-path=/usr/sbin/nginx \
--conf-path=/etc/nginx/nginx.conf \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-http_ssl_module \
--with-http_v2_module \
--with-http_perl_module \
--with-http_sub_module \
--with-http_dav_module \
--with-http_gzip_static_module \
--with-http_realip_module \
--with-http_stub_status_module \
--with-http_secure_link_module \
--with-http_xslt_module \
--with-http_image_filter_module \
--with-http_geoip_module \
--with-http_slice_module \
--with-http_degradation_module \
--with-stream \
--with-stream_ssl_module \
--with-stream_ssl_preread_module \
--with-stream_ssl_module \
--with-stream_realip_module \
--with-stream_geoip_module \
--with-mail \
--with-mail_ssl_module \
--with-pcre \
--with-pcre-jit \
--with-threads \
--with-file-aio 

