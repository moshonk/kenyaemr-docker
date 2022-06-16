FROM mysql:5.6

#ENV MYSQL_ROOT_PASSWORD=r00t
#ENV MYSQL_DATABASE=openmrs
#ENV MYSQL_USER=openmrs_user
#ENV MYSQL_PASSWORD=r00t
#ENV MYSQL_DATA_DIRECTORY=/opt/kenyaemr/data/system/mysql

ADD kenyaemr-mysql.cnf /etc/mysql/my.cnf
ADD backup /usr/bin/backup
ADD localtime /etc/localtime

RUN chmod 0444 /etc/mysql/my.cnf

RUN apt-get update && apt-get install -y \
    zip \
    unzip

COPY kenyaemr_db_20200728.sql.zip /tmp/kenyaemr_db_20200728.sql.zip
COPY kenyaemr_etl_dev_db_20200719.sql.zip /tmp/kenyaemr_etl_dev_db_20200719.sql.zip
COPY kenyaemr_dt_dev_db_20200719.sql.zip /tmp/kenyaemr_dt_dev_db_20200719.sql.zip


COPY run.sh /run.sh

RUN chmod 0777 /run.sh

VOLUME /opt/kenyaemr/data

EXPOSE 3306

ENTRYPOINT ["/run.sh"]

