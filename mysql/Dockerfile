FROM mysql:5.6

ENV MYSQL_ROOT_PASSWORD=r00t
ENV MYSQL_DATABASE=openmrs
ENV MYSQL_USER=openmrs_user
ENV MYSQL_PASSWORD=r00t
ENV MYSQL_DATA_DIRECTORY=/opt/kenyaemr/data/system/mysql

ADD kenyaemr-mysql.cnf /root/.my.cnf
ADD backup /usr/bin/backup
ADD localtime /etc/localtime

RUN chmod 0444 /root/.my.cnf

RUN apt-get update && apt-get install -y \
    zip \
    unzip

COPY kenyaemr_db_20200706.sql.zip /tmp/kenyaemr_db_20200706.sql.zip

COPY run.sh /run.sh

VOLUME /opt/kenyaemr/data

EXPOSE 3306

CMD ["/run.sh"]
