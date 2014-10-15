#/bin/sh
echo Configuring IP addresses...


ifconfig eth0   192.168.200.1 netmask 255.255.255.0
ifconfig eth0:1 192.168.200.2 netmask 255.255.255.0
ifconfig eth0:2 192.168.200.3 netmask 255.255.255.0
ifconfig eth0:3 192.168.200.4 netmask 255.255.255.0
ifconfig eth0:4 192.168.200.5 netmask 255.255.255.0

route add default gw 192.168.200.250 eth0


docker rm webserver1
docker rm webserver2
docker rm webserver3
docker rm webserver4

echo Launching Docker containers...

docker run -d --name webserver1 -e CONTAINERNAME=webserver1 -p 192.168.200.1:80:80 benpiper/lbwebtest
docker run -d --name webserver2 -e CONTAINERNAME=webserver2 -p 192.168.200.2:80:80 benpiper/lbwebtest
docker run -d --name webserver3 -e CONTAINERNAME=webserver3 -p 192.168.200.3:80:80 benpiper/lbwebtest
docker run -d --name webserver4 -e CONTAINERNAME=webserver4 -p 192.168.200.4:80:80 benpiper/lbwebtest

