

if command -v docker >/dev/null; then
    sudo usermod -a -G docker ${USER}
else
    echo "🧞‍♂ Installing Docker"
    sudo apt-get update
    sudo apt-get remove docker docker-engine docker.io -y
    sudo apt install docker.io -y
    sudo systemctl start docker
    sudo systemctl enable docker
    docker --version
    sudo usermod -a -G docker ${USER}
    echo "🧞‍♂ Docker Installed"
fi
