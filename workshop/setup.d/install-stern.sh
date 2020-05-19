#!/bin/bash
mkdir -p /home/eduk8s/bin
curl -L -o /home/eduk8s/bin/stern \
   https://github.com/wercker/stern/releases/download/1.11.0/stern_linux_amd64
chmod +x /home/eduk8s/bin/stern