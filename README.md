# docker-smokeping

# install Docker on Ubuntu 16.04

sudo groupadd docker

sudo usermod -aG docker <YOUR_USER_NAME>

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install -y docker-ce

# Run using Docker build

git clone https://github.com/alaluces/docker-smokeping.git

cd docker-smokeping

docker run -d --name docker-smokeping -p 80:80 docker-smokeping

point your browser to http://YOUR_IP_ADDRESS/smokeping/smokeping.cgi

OR...

# Pull and run the pre built image from dockerhub
docker run -d --name docker-smokeping -p 80:80 arieslaluces/smokeping
