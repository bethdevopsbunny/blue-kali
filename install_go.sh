#!/bin/bash
wget https://go.dev/dl/go1.19.2.linux-amd64.tar.gz
tar -C /usr/local/ -xzf  go1.19.2.linux-amd64.tar.gz
echo "go:1.19.2:15M'" >> versions
