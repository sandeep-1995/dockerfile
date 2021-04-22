from centos:latest
maintainer sandeepkumargiri93@gmail.com
run yum  update -y && yum  install httpd zip unzip  vim -y
add https://www.free-css.com/assets/files/free-css-templates/download/page255/bizpage.zip /var/www/html/
workdir /var/www/html/
run unzip bizpage.zip
run rm -rf bizpage.zip
run cp -rf BizPage/* .
cmd ["/usr/sbin/httpd", "-D", "FOREGROUND"]
expose 80
