FROM mysql
COPY . .
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
VOLUME /var/lib/mysql
EXPOSE 3306 33060
CMD ["bash", "./cmd.sh"]
