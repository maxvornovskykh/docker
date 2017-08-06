FROM mysql
Label Author="Sergey Morenets"
ENV MYSQL_ROOT_PASSWORD root
COPY mysql/createdb.sql /opt/
COPY mysql/init.sh /opt/
RUN chmod +x /opt/init.sh
WORKDIR /opt
ENTRYPOINT /opt/init.sh && /bin/sh

