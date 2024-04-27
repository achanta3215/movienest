-- Needed *.* for Prisma shadow databse
GRANT ALL PRIVILEGES ON *.* TO 'your_user'@'%';

FLUSH PRIVILEGES;

CREATE DATABASE  IF NOT EXISTS `movienest_shadow`;

ALTER USER 'your_user'@'%' IDENTIFIED WITH mysql_native_password BY 'Password';
