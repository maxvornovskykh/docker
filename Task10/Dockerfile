FROM mysql


COPY createdb.sql /opt
WORKDIR /opt

CMD service mysql start && \
    echo "create database discovery" | mysql -u root -p && \
    mysql discovery < createdb.sql