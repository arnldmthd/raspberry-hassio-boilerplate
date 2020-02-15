#!/bin/bash
value=$(<raspberry_ip)
echo "🧞‍♂  ssh ubuntu@$value"

ssh ubuntu@$value