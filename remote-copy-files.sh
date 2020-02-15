#!/bin/bash
value=$(<*remote_ip)

## Copy Project files

echo "
🧞‍♂  ssh ubuntu@$value  '(rm -rf project && mkdir -p project)'
"
ssh ubuntu@$value '(rm -rf project && mkdir -p project)'

echo "
🧞‍  rsync -avz -e ssh project/ ubuntu@$value:/home/ubuntu/project/
"
rsync -avz -e ssh project/ ubuntu@$value:/home/ubuntu/project/
