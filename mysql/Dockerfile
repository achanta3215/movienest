FROM mysql:latest
COPY ./init.sh /docker-entrypoint-initdb.d/init.sh
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql
COPY ./db_dump.sql /db_dump.sql
