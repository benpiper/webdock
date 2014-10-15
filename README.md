ash scripts and php files for use with the benpiper/lbwebtest docker image and boot2docker.

generate-error.sh and clear-error.sh:
The scripts are designed to simulate failure and recovery of a simple web application to test load balancer monitoring.

bootsync.sh:
Configures IP addresses, default gateway, and lanuches docker containers from lbwebtest

webserver1	192.168.200.1
...
webserver4	192.168.200.4

Default gateway/load balancer	192.168.200.250
