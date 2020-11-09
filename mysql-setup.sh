mysql -uroot -e "CREATE DATABASE phplist CHARACTER SET utf8 COLLATE utf8_unicode_ci"
mysql -uroot -e "CREATE USER 'student'@'localhost' IDENTIFIED BY 'qwe@123';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON phplist.* TO 'student'@'localhost';"
mysql -uroot -e "FLUSH PRIVILEGES;"
mysql -u student -pqwe@123 phplist < /root/sql.dmp
