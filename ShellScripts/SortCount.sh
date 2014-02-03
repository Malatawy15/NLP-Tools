#!/bin/bash
#This script generates a training file from a given corpus.
#The training file looks as follows:
#	count word
#All words in the file are converted to lower case letters and sorted in lexicographical order.

echo "Enter the corpus file name:"
read corpus_file_name
echo "Enter the target file name:"
read target_file_name
tr -sc 'A-Za-z' '\n' < $corpus_file_name | tr '[:upper:]' '[:lower:]' | sort | uniq -c > $target_file_name
