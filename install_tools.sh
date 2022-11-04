#!/bin/bash

apt -yq install dirb
echo "dirb:$(dirb -h | head -3 | tail -1 | awk '{print $2}'):$(ls -lh $(which dirb) | awk '{print $5}')" >> versions

apt -yq install netcat-traditional
echo  "nc:$(nc -h 2>&1| head -1):$(ls -lh $(which nc) | awk '{print $5}')" >> versions

go install github.com/c-sto/gogitdumper@latest
echo "gogitdumper:$(gogitdumper -h 2>&1 | head -2 | tail -1 | awk '{print $2}'):$(ls -lh $(which gogitdumper) | awk '{print $5}')" >> versions

apt -yq install nikto
echo "nikto:$(nikto -Version | head -6 | tail -1 | awk '{print $3}'):$(ls -lh $(which nikto) | awk '{print $5}')" >> versions

apt -yq install medusa
echo "medusa:$(medusa -V | head -1 | awk '{print $2}'):$(ls -lh $(which medusa) | awk '{print $5}')" >> versions

apt -yq install ffuf
echo "ffuf:$(ffuf -V | awk '{print $3}'):$(ls -lh $(which ffuf) | awk '{print $5}')" >>  versions




