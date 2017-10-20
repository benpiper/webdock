<h2>Download the webdock OVF from the following locations:</h2>

<p><a href="http://benpiper.com/wp-content/uploads/2014/10/webdock.torrent">webdock on bittorrent</a>
<p><a href="https://www.hightail.com/download/UlRUV295eFVrWTgxWjhUQw" target="_blank">webdock on Hightail</a>
<p><a href="https://www.dropbox.com/s/qrfj8i206iysof4/webdock.zip?dl=0">webdock on Dropbox</a>

<h2>About</h2>

webdock is a virtual machine (OVF) that uses Docker to spin up multiple web servers for testing NetScaler load-balancing. Designed for my Pluralsight course <a href="https://www.pluralsight.com/authors/ben-piper?utm_medium=affiliate&utm_source=1321192">Citrix NetScaler 10: Design and Deployment</a>

ash scripts and php files for use with the <a href="https://registry.hub.docker.com/u/benpiper/lbwebtest/">benpiper/lbwebtest</a> docker image and boot2docker.

generate-error.sh and clear-error.sh:
The scripts are designed to simulate failure and recovery of a simple web application to test load balancer monitoring.

bootsync.sh:
Configures IP addresses, default gateway, and lanuches docker containers from lbwebtest

webserver1	192.168.200.1
...
webserver4	192.168.200.4

Default gateway/load balancer	192.168.200.250
