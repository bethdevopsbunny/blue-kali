#!/bin/bash
apt update
apt -yq install wget
echo "wget:$(wget -V | head -1 | awk '{print $3}'):$(ls -lh $(which wget) | awk '{print $5}')" >> versions
apt -yq install curl
echo "curl:$(curl -V | head -1 | awk '{print $2}'):$(ls -lh $(which curl) | awk '{print $5}')" >> versions
apt -yq install git
echo "git:$(git --version | awk '{print $3}'):$(ls -lh $(which git) | awk '{print $5}')" >> versions
apt -yq install nmap
echo "nmap:$(nmap -V | head -1 | awk '{print $3}'):$(ls -lh $(which nmap) | awk '{print $5}')" >> versions

rm -rf /var/lib/apt/lists/*