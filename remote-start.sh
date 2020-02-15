#!/bin/bash
value=$(<*remote_ip)

ssh -t  ubuntu@$value 'cd /home/ubuntu/project/ && ./start.sh'