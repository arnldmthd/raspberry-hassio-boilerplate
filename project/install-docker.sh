

echo "🧞‍♂ docker info"
docker info
if [ $? -eq 0 ]; then
    sudo usermod -a -G docker ${USER}
else
    sudo apt-get update
    sudo apt-get remove docker docker-engine docker.io -y
    sudo apt install docker.io -y
    sudo systemctl start docker
    sudo systemctl enable docker
    docker --version
    sudo usermod -a -G docker ${USER}
fi