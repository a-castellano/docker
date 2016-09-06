###Building the image###
```
#!bash
build -t IMAGE_NAME .
docker create  --name ArchonWeb --hostname ArchonWeb -p 8080:80  -v $PWD/apache2_sites_enabled:/etc/apache2/sites-enabled -v $PWD/apache2_www:/var/www -i IMAGE_NAME
docker start ArchonWeb
```
