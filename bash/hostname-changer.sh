#!/bin/bash
str1="pc"
strhostname=$(hostname)
echo "Current hostname is $strhostname"
read -p "Please insert your student number: " studentnumber
str1str2=$str1$studentnumber
sed -i "s/$strhostname/$str1str2/" /etc/hosts
if [[ $strhostname != $str1str2 ]] ;
then
	hostnamectl set-hostname $str1str2
fi
echo "Current hostname has been changed from $strhostname to $str1str2"
echo "Please initiate code 6 to reboot to be sure a new name took full effect in this system."
