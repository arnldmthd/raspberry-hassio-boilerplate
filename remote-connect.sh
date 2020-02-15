#!/bin/bash
value=$(<*remote_ip)
echo "🧞‍♂  ssh ubuntu@$value"

ssh ubuntu@$value