#!/bin/bash
value=$(<*remote_ip)

ssh-keygen -R $value