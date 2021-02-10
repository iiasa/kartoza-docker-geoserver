COMPOSE_PROJECT_NAME=ece-geoserver

GEOSERVER_VERSION_TAG=2.18.1
# Generic Env variables
GEOSERVER_ADMIN_USER=admin
GEOSERVER_ADMIN_PASSWORD=myawesomegeoserver
HOST_SYSTEM_PORT=8223
# Install the stable plugin specified in https://github.com/kartoza/docker-geoserver/blob/master/build_data/stable_plugins.txt
STABLE_EXTENSIONS=importer-plugin,netcdf-out-plugin,netcdf-plugin,sldservice-plugin
# Install the community edition plugins specified in https://github.com/kartoza/docker-geoserver/blob/master/build_data/community_plugins.txt
COMMUNITY_EXTENSIONS=
# https://docs.geoserver.org/stable/en/user/production/container.html#optimize-your-jvm
INITIAL_MEMORY=2G
# https://docs.geoserver.org/stable/en/user/production/container.html#optimize-your-jvm
MAXIMUM_MEMORY=4G
# https://docs.geoserver.org/latest/en/user/datadirectory/setting.html
GEOSERVER_DATA_DIR=/opt/geoserver/data_dir
# https://docs.geoserver.org/latest/en/user/data/raster/gdal.html#external-footprints-data-directory
FOOTPRINTS_DATA_DIR=/opt/footprints_dir
# https://docs.geoserver.org/latest/en/user/geowebcache/config.html#changing-the-cache-directory
GEOWEBCACHE_CACHE_DIR=/opt/geoserver/data_dir/gwc


# == Currently Unused/Irrelevant ==

POSTGIS_VERSION_TAG=13.0
# Show the tomcat manager in the browser
TOMCAT_EXTRAS=true
# https://docs.geoserver.org/stable/en/user/security/webadmin/csrf.html
GEOSERVER_CSRF_DISABLED=true
# Path where .ttf and otf font should be added
FONTS_DIR=/opt/fonts
# JVM Startup option for encoding
ENCODING='UTF8'
# JVM Startup option for timezone
TIMEZONE='GMT'
# DB backend to activate disk quota storage in PostgreSQL DB. Only permitted value is 'POSTGRES'
DB_BACKEND=
# https://docs.geoserver.org/latest/en/user/production/config.html#disable-the-auto-complete-on-web-administration-interface-login
LOGIN_STATUS=on
# https://docs.geoserver.org/latest/en/user/production/config.html#disable-the-geoserver-web-administration-interface
WEB_INTERFACE=false
# Rendering settings
ENABLE_JSONP=true 
MAX_FILTER_RULES=20 
OPTIMIZE_LINE_WIDTH=false
# SSL Settings explained here https://github.com/AtomGraph/letsencrypt-tomcat
SSL=false
HTTP_PORT=8080 
HTTP_PROXY_NAME= 
HTTP_PROXY_PORT= 
HTTP_REDIRECT_PORT= 
HTTP_CONNECTION_TIMEOUT=20000 
HTTPS_PORT=8443 
HTTPS_MAX_THREADS=150 
HTTPS_CLIENT_AUTH= 
HTTPS_PROXY_NAME= 
HTTPS_PROXY_PORT= 
JKS_FILE=letsencrypt.jks 
JKS_KEY_PASSWORD='geoserver' 
KEY_ALIAS=letsencrypt 
JKS_STORE_PASSWORD='geoserver' 
P12_FILE=letsencrypt.p12 
PKCS12_PASSWORD='geoserver' 
LETSENCRYPT_CERT_DIR=/etc/letsencrypt
CHARACTER_ENCODING='UTF-8' 
# Clustering  variables
# Activates clustering using JMS cluster plugin
CLUSTERING=False
# cluster env variables specified https://docs.geoserver.org/stable/en/user/community/jms-cluster/index.html
CLUSTER_DURABILITY=true 
BROKER_URL= 
READONLY=disabled 
RANDOMSTRING=23bd87cfa327d47e 
INSTANCE_STRING=ac3bcba2fa7d989678a01ef4facc4173010cd8b40d2e5f5a8d18d5f863ca976f 
TOGGLE_MASTER=true 
TOGGLE_SLAVE=true 
EMBEDDED_BROKER=enabled
# kartoza/postgis env variables https://github.com/kartoza/docker-postgis
POSTGRES_DB=gis,gwc
POSTGRES_USER=docker
POSTGRES_PASS=docker
ALLOW_IP_RANGE=0.0.0.0/0