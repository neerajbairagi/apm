apm:
   image: mitrasonu/apache
   ports:
     - "80:80"
   links:
     - db

db:
  image: mariadb
  restart: always
  environment:
    MYSQL_ROOT_PASSWORD: Apm@123
    MYSQL_USER: apm
    MYSQL_PASSWORD: Apm@123
    MYSQL_DATABASE: apm
  ports:
    - "3306:3306"
