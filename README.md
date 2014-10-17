Download the webdock OVF from the following locations:

<p><a href="https://www.hightail.com/download/UlRUV295eFVrWTgxWjhUQw" target="_blank">webdock on Hightail</a>
<p><a href="https://www.dropbox.com/s/o8btkuytx67gvjv/webdock.zip?dl=0" target="_blank">webdock on Dropbox
<p></a><a href="http://benpiper.com/wp-content/uploads/2014/10/webdock.torrent">webdock on bittorrent</a>


ash scripts and php files for use with the benpiper/lbwebtest docker image and boot2docker.

generate-error.sh and clear-error.sh:
The scripts are designed to simulate failure and recovery of a simple web application to test load balancer monitoring.

bootsync.sh:
Configures IP addresses, default gateway, and lanuches docker containers from lbwebtest

webserver1	192.168.200.1
...
webserver4	192.168.200.4

Default gateway/load balancer	192.168.200.250
