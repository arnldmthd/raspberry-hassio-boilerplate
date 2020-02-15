

if command -v docker-compose >/dev/null; then
    echo "🧞‍♂ Docker Found"
    sudo usermod -a -G docker ${USER}
else
    echo "🧞‍♂  Installing Docker"
    sudo apt-get update -y
    sudo apt-get remove docker docker-engine docker.io -y
    .
    sudo apt install docker.io docker-compose -y
    sudo systemctl start docker
    sudo systemctl enable docker

    sudo usermod -aG docker ${USER}
    
    docker --version

    echo "🧞‍♂  Docker Installed"
fi
