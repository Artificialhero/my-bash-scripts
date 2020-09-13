#!/bin/bash
#When file outputs something like: Non-ISO extended-ASCII text
#Test all filetypes I can convert to, using iconv.
#A list in order to slim down amount of filetypes testing has been made in this context.
#I generated a list after this: https://superuser.com/questions/669700/non-iso-extended-ascii-text.
echo -n "Enter the target file: "
read filename
echo -n "Enter encoding to iterate: "
read encoding

$enc=UTF-8 #Change to iterate through a list of encoding

iconv -f $enc -t $enc $filename

