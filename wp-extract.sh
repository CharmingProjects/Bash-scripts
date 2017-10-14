#!/bin/bash
magenta=`etaf 5`
yellow=`tput setaf 3`
reset=`tput sgr 0`
bgc=`tput setab 0`

echo "${yellow}${bgc}Downloading wordpress...${reset}"

wget http://wordpress.org/latest.tar.gz
echo "${yellow}${bgc}Extracting wordpress...${reset}"
tar xfz latest.tar.gz
mv wordpress/* ./
rmdir ./wordpress/
rm -f latest.tar.gz

echo "${magenta}${bgc}Wordpress is ready work!${reset}"
