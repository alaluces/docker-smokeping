# docker-smokeping

# Run using Docker build

git clone https://github.com/alaluces/docker-smokeping.git

cd docker-smokeping

docker run -d --name docker-smokeping -p 80:80 docker-smokeping

point your browser to http://YOUR_IP_ADDRESS/smokeping/smokeping.cgi

OR...

# Pull and run the pre built image from dockerhub
docker run -d --name docker-smokeping -p 80:80 arieslaluces/smokeping
