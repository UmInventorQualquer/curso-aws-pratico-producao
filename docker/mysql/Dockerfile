# our base image
FROM mysql:8.0

# specify the port number the container should expose
EXPOSE 3306

# use mysql_native_password for compatibility with the old mysql client
CMD ["mysqld", "--default-authentication-plugin=mysql_native_password"]
