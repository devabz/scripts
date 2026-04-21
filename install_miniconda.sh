#!/bin/bash

# Update the package list and install necessary dependencies
sudo apt update
sudo apt install -y wget curl

# Download the latest Miniconda installer
echo "Downloading Miniconda..."
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/Miniconda3-latest-Linux-x86_64.sh

# Verify the download (optional but recommended)
echo "Verifying downloaded file..."
sha256sum ~/Miniconda3-latest-Linux-x86_64.sh

# Run the Miniconda installer
echo "Running Miniconda installer..."
bash ~/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

# Initialize Conda for your shell
echo "Initializing Conda..."
$HOME/miniconda3/bin/conda init

# Restart the shell to apply changes
echo "Restarting shell..."
source ~/.bashrc

# Verify the installation
echo "Verifying Conda installation..."
conda --version

echo "Conda installation complete!"
