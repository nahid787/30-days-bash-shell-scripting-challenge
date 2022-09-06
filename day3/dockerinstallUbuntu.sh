#!/bin/bash
# Author: Morshed Hasan
# Date: sep 5, 2022
# Modification date: sep 5, 2022
# Description: This shell script will install docker-ce, docker-ce-cli, containerd.io, docker-compose-plugin. You can install your required version. It's work on ubuntu 18.04, 20.02, 22.04.
# Note: Please run this script with root privileges. 


clear
sudo apt update -y
sudo apt-get install \
ca-certificates \
curl \
gnupg \
lsb-release
#
#
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#
#
sudo apt-get update -y
echo 
echo please chose on of the docker version bellow.
echo
echo 'a = Docker: 5:20.10.17~3-0'
echo 'b = Docker: 5:20.10.16~3-0'
echo 'c = Docker: 5:20.10.15~3-0'
echo 'd = Docker: 5:20.10.14~3-0'
echo 'e = Docker: 5:20.10.13~3-0'
echo 'f = Docker: 5:20.10.12~3-0'
echo
#
#
	read -p "Type your Docker version: " choices
	case $choices in
a) sudo apt-get install docker-ce=5:20.10.17~3-0~ubuntu-$(lsb_release -cs) docker-ce-cli=5:20.10.17~3-0~ubuntu-$(lsb_release -cs) containerd.io docker-compose-plugin -y;;
b) sudo apt-get install docker-ce=5:20.10.16~3-0~ubuntu-$(lsb_release -cs) docker-ce-cli=5:20.10.16~3-0~ubuntu-$(lsb_release -cs) containerd.io docker-compose-plugin -y;;
c) sudo apt-get install docker-ce=5:20.10.15~3-0~ubuntu-$(lsb_release -cs) docker-ce-cli=5:20.10.15~3-0~ubuntu-$(lsb_release -cs) containerd.io docker-compose-plugin -y;;
d) sudo apt-get install docker-ce=5:20.10.14~3-0~ubuntu-$(lsb_release -cs) docker-ce-cli=5:20.10.14~3-0~ubuntu-$(lsb_release -cs) containerd.io docker-compose-plugin -y;;
e) sudo apt-get install docker-ce=5:20.10.13~3-0~ubuntu-$(lsb_release -cs) docker-ce-cli=5:20.10.13~3-0~ubuntu-$(lsb_release -cs) containerd.io docker-compose-plugin -y;;
f) sudo apt-get install docker-ce=5:20.10.12~3-0~ubuntu-$(lsb_release -cs) docker-ce-cli=5:20.10.12~3-0~ubuntu-$(lsb_release -cs) containerd.io docker-compose-plugin -y;;
*) echo Invalid choice - Bye.
	esac

sudo docker run hello-world
