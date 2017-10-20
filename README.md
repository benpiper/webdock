<h2>Download the webdock OVF</h2>

For all current download options, visit https://benpiper.com/webdock/

<h2>About</h2>

webdock is a virtual machine (OVF) that uses Docker to spin up multiple web servers for testing NetScaler load-balancing. Designed for my Pluralsight course <a href="http://www.shareasale.com/r.cfm?b=620905&u=1321192&m=53701&urllink=https://www.pluralsight.com/courses/citrix-netscaler-10-design-deployment&afftrack=github">Citrix NetScaler 10: Design and Deployment</a>

ash scripts and php files for use with the <a href="https://registry.hub.docker.com/u/benpiper/lbwebtest/">benpiper/lbwebtest</a> docker image and boot2docker.

generate-error.sh and clear-error.sh:
The scripts are designed to simulate failure and recovery of a simple web application to test load balancer monitoring.

bootsync.sh:
Configures IP addresses, default gateway, and lanuches docker containers from lbwebtest

webserver1	192.168.200.1
...
webserver4	192.168.200.4

Default gateway/load balancer	192.168.200.250
