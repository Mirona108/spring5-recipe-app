# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

#connect to mysql and run as root user
#Create Databases
CREATE DATABASE bio_dev;
CREATE DATABASE bio_prod;

#Create database service accounts
CREATE USER 'bio_dev_user'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'bio_prod_user'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'bio_dev_user'@'%' IDENTIFIED BY 'admin';
CREATE USER 'bio_prod_user'@'%' IDENTIFIED BY 'admin';

#Database grants
GRANT SELECT ON bio_dev.* to 'bio_dev_user'@'localhost';
GRANT INSERT ON bio_dev.* to 'bio_dev_user'@'localhost';
GRANT DELETE ON bio_dev.* to 'bio_dev_user'@'localhost';
GRANT UPDATE ON bio_dev.* to 'bio_dev_user'@'localhost';
GRANT SELECT ON bio_prod.* to 'bio_prod_user'@'localhost';
GRANT INSERT ON bio_prod.* to 'bio_prod_user'@'localhost';
GRANT DELETE ON bio_prod.* to 'bio_prod_user'@'localhost';
GRANT UPDATE ON bio_prod.* to 'bio_prod_user'@'localhost';
GRANT SELECT ON bio_dev.* to 'bio_dev_user'@'%';
GRANT INSERT ON bio_dev.* to 'bio_dev_user'@'%';
GRANT DELETE ON bio_dev.* to 'bio_dev_user'@'%';
GRANT UPDATE ON bio_dev.* to 'bio_dev_user'@'%';
GRANT SELECT ON bio_prod.* to 'bio_prod_user'@'%';
GRANT INSERT ON bio_prod.* to 'bio_prod_user'@'%';
GRANT DELETE ON bio_prod.* to 'bio_prod_user'@'%';
GRANT UPDATE ON bio_prod.* to 'bio_prod_user'@'%';