FROM mysql
COPY . .
ENTRYPOINT ["bash", "./cmd.sh"]
VOLUME /var/lib/mysql
EXPOSE 3306 33060
CMD ["mysqld"]
