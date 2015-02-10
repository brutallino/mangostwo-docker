# mangostwo-docker
An attempt at dockerizing mangostwo

# howto

```
docker run -i -p 3306:3306 --name mangos-mysql -e MYSQL_ROOT_PASSWORD=mangos -d mysql
docker build -t ilix/mangos-realmd:v1 realm
docker build -t ilix/mangos-mangosd:v1 world
git clone https://github.com/mangostwo/database.git db
cd db/_tools
sh make_full_db.sh
mysql --host=192.168.59.103 -u root -p mangos < full_db.sql

```
