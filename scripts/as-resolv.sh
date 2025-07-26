#!/bin/bash

ipv4='^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$'
ipv6='^[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}:[0-9a-fA-F]{1,4}$'
domain='^(www\.)?[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'

if [ -z "$1" ]
then
  echo "Provide a hostname or an IP address as an argument."
else
  if [[ $1 =~ $ipv4 ]] || [[  $1 =~ $ipv6 ]]
  then
    info=$(curl -s https://ipinfo.io/$1/json | jq -r '.org')

    echo $(echo ${info} | cut -d " " -f1)
    echo $(echo ${info} | cut -d " " -f2-)

  elif [[ $1 =~ $domain ]]
  then
    ip=$(dig $1 +short | head -n1)

    if [[ ! $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]
    then
      ip=$(dig $ip +short | head -n1)
    fi
  
    info=$(curl -s https://ipinfo.io/${ip}/json | jq -r '.org')
    sleep 0.5
  
    echo $ip
    echo $(echo ${info} | cut -d " " -f1)
    echo $(echo ${info} | cut -d " " -f2-)

  else
    echo "Invalid domain or IP."
  fi
fi
