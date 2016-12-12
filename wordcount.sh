#! /bin/bash
 
 export file=$1
 if [[ -e $file ]];
 then
  
  lines=`wc -l $1`
  words=`wc -w $1`
  wordfreq=`cat $1 | tr '[:space:]' '[\n*]' | sort | uniq -c | sort -bnr | head -n 1`
  leastword=`cat $1 | tr '[:space:]' '[\n*]' | sort | uniq -c | sort -bnr | tail -n 1`
  dwords=`cat $1 | tr '[:space:]' '[\n*]' | grep -o '\b[dD][\da-zA-Z]*[dD]\b' | sort | wc -w`
  awords=`cat $1 | tr '[:space:]' '[\n*]' | grep -o '\b[aA]' | wc -w`
  numbers=`cat $1 | tr '[:space:]' '[\n*]' | grep -o '[1-9]\{1,\}' | sort | wc -l`
  numwords=`cat $1 | tr '[:space:]' '[\n*]' | grep -o '[1-9a-zA-Z]\{1,\}' | sort | wc -l`
   
   echo "Number of lines: $lines"
   echo "Number of words: $words"
   echo "Most frequent word: $wordfreq"
   echo "Least frequent word: $leastword"
   echo "Number of words that start and end with d: $dwords"
   echo "Number of words that start with a: $awords"
   echo "Numeric words: $numbers"
   echo "Alphanumeric words: $num"
    
    else
     echo "Improper file path"
     fi
