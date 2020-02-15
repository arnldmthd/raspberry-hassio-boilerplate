#!/bin/bash
value=$(<raspberry_ip)

echo "🧞‍♂  ssh ubuntu@$value sudo usermod -aG sudo ubuntu"
ssh ubuntu@$value sudo usermod -aG sudo ubuntu

echo "🧞‍♂  ssh ubuntu@$value rm -rf project"
ssh ubuntu@$value sudo rm -rf project

echo "🧞‍♂  ssh ubuntu@$value mkdir -p project"
ssh ubuntu@$value sudo mkdir -p project

echo "🧞‍  rsync -avz -e ssh project/ ubuntu@$value:/home/ubuntu/project/"
rsync -avz -e ssh project/ ubuntu@$value:/home/ubuntu/project/

echo "🧞‍♂  ssh ubuntu@$value '(cd project && ./install-docker.sh)'"
ssh ubuntu@$value '(cd project && sudo ./install-docker.sh)'

echo "🧞‍♂  ssh -t  ubuntu@$value 'cd /home/ubuntu/project/ && ./start.sh'"
ssh -t  ubuntu@$value 'cd /home/ubuntu/project/ && ./start.sh'