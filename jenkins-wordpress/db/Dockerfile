FROM mysql:5.7

COPY mysql_params.cnf /etc/mysql/conf.d/

EXPOSE 3306 33060
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]

