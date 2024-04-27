#!/bin/bash

sed -i '/^\[mysqld\]$/a sql_mode=""' /etc/my.cnf

cat /db_dump.sql | mysql -u root -pyour_root_password --force
