#!/bin/bash
value=$(<raspberry_ip)
echo "🧞‍♂  cat ~/.ssh/id_rsa.pub | ssh ubuntu@$value 'cat >> ~/.ssh/authorized_keys'"

cat ~/.ssh/id_rsa.pub | ssh ubuntu@$value 'cat >> ~/.ssh/authorized_keys'