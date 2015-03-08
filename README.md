# mangostwo-docker

An attempt at dockerizing mangostwo - a world of warcraft server for wrath of the lich king (version 3.3.5).

Read the instructions before you start, you may want to modify some of the steps to fit your needs better.

# database

```
docker pull mysql
docker run -i -p 3306:3306 --name mangos-mysql -e MYSQL_ROOT_PASSWORD=mangos -d mysql

```

See https://github.com/mangostwo/database for more info.

# mangos base image

The mangos folder contains a Dockerfile that is used to download and compile the latest mangostwo source code. Use this to build an image called "mangos-base".

```
docker build -t mangos-base mangos
```

# realm and world

Check the Dockerfiles in realm/ and /world. You want to use the image produced in the step above.

```
docker build -t ilix/mangos-realmd:v1 realm
docker build -t ilix/mangos-mangosd:v1 world
git clone https://github.com/mangostwo/database.git db
cd db/_tools
sh make_full_db.sh
mysql --host=192.168.59.103 -u root -p mangos < full_db.sql

docker run -t -p 8085:8085 --link mangos-mysql:mangos-mysql <mangosd-id>
docker run -t -p 3724:3724 --link mangos-mysql:mangos-mysql <realmd-id>

```

# other

You will need World of Warcraft: Wrath of The Lich King (3.3.5a) to play on your dockerized mangos. Also, you need to open your realmlist.wtf and set the address to your docker host and of course, create a user in the realms db.

```
INSERT INTO realmd.`account` (`username`,`sha_pass_hash`) VALUES ('ilix', SHA1(CONCAT(UPPER('ilix'),':',UPPER('mangos'))))
```