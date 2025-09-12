#!/bin/bash
set -e

echo " Installing Ansible via pip "

# Update system
sudo apt update -y
sudo apt install -y python3 python3-pip python3-venv

# Install Ansible with pip 
pip install --user ansible

# Add ~/.local/bin to PATH if not already
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
  export PATH=$PATH:$HOME/.local/bin
fi

echo " Installation complete "
ansible --version


