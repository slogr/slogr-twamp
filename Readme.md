
<h1>Slogr TWAMP</h1>

````````txt

                                ██████  ██▓     ▒█████    ▄████  ██▀███  
                              ▒██    ▒ ▓██▒    ▒██▒  ██▒ ██▒ ▀█▒▓██ ▒ ██▒
                              ░ ▓██▄   ▒██░    ▒██░  ██▒▒██░▄▄▄░▓██ ░▄█ ▒
                                ▒   ██▒▒██░    ▒██   ██░░▓█  ██▓▒██▀▀█▄  
                              ▒██████▒▒░██████▒░ ████▓▒░░▒▓███▀▒░██▓ ▒██▒
                              ▒ ▒▓▒ ▒ ░░ ▒░▓  ░░ ▒░▒░▒░  ░▒   ▒ ░ ▒▓ ░▒▓░
                              ░ ░▒  ░ ░░ ░ ▒  ░  ░ ▒ ▒░   ░   ░   ░▒ ░ ▒░
                              ░  ░  ░    ░ ░   ░ ░ ░ ▒  ░ ░   ░   ░░   ░ 
                                    ░      ░  ░    ░ ░        ░    ░     


````````



<h2>Structure</h2>
Slogr TWAMP system consists of TWO major components.
<h3>a. Agent</h3>
Agents are binaries which can be deployed on each end point, acting
as client and server both simultaneously.
Agents communicate through minimal artificially created traffic to
record two way network metrics
<h3>b. Controller</h3>
Controller is responsible for initiating and scheduling sessions
between agents.
A Mysql database stores all the session data.
Sessions can be created through controller’s Web Interface.
<br>
<br>
<em>Currently Agents and Controller are packaged as Docker Containers.</em>


<h2>Prerequisites</h2>
<strong>Ports ( 9000, 5000, 8009 ) need to open for inbound and
outbound<br><br>
Internet Connection for installation of necessary packages<br><br>
SSH access to VM for deployment cmds</strong><br><br>


<h2>Deployment Steps</h2>
<h3>a. Agent</h3>
<p>Install Docker</p>
<code>curl -fsSL get.docker.com -o get-docker.sh</code><br>
<br>
<code>sudo sh get-docker.sh</code><br>
<br>
<p>Clone the Repository</p>
<code>git clone https://github.com/slogr/slogr-twamp.git</code><br><br>
<p>Change directory to slogr-twamp/agent</p>
<code>cd slogr-twamp/agent/</code><br><br
<p>Run Docker compose ( use sudo )</p>
<code>sudo docker compose up -d</code><br><br>
<strong><em>Agent should be up and running in Docker Container. Run <code>sudo docker ps</code> to check.</em></strong>
<h3>b. Controller</h3>
<p>Install Docker if not installed</p>
<code>curl -fsSL get.docker.com -o get-docker.sh</code><br>
<br>
<code>sudo sh get-docker.sh</code><br>
<br>
<p>Clone the Repository if not already cloned</p>
<code>git clone https://github.com/slogr/slogr-twamp.git</code><br><br>
<p>Change directory to slogr-twamp/controller</p>
<code>cd slogr-twamp/controller/</code><br><br
<p>Run Docker compose ( use sudo )</p>
<code>sudo docker compose up -d</code><br><br>
<strong><em>Controller and Database should be up and running in Docker Container. Run <code>sudo docker ps</code> to check.</em></strong>
<strong>Open [ vm-public-ip:5000 ] in your browser for Web interface.</strong><br>

<h2>Access db</h2>
<code>sudo docker exec -it slogr-controller-db-1 /bin/bash</code><br><br>
<code>mysql –u root –p</code><br><br>
<code>Password: root</code><br><br>

