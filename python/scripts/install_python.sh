#!/usr/bin/env bash

sudo apt-get update
sudo apt-get autoremove -y

sudo apt-get install -qqy \
    curl \
    wget \    
    build-essential \
    python-dev \
    python-pip \
    apt-transport-https \
    ca-certificates \
    lxc \
    iptables

sudo wget https://bootstrap.pypa.io/ez_setup.py -O - | python

sudo pip install -r fuzzywuzzy
sudo pip install -r python-levenshtein