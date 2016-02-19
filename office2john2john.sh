#!/bin/bash
echo -n "Enter your office documen[ENTER]: "
 read doc
echo -n "Enter your wordlist, if none just leave blank[ENTER]: "
 read list

echo "You entered:$doc"
python office2john.py $doc > $doc.hash
echo " your hash is now stored in $doc.hash"
./john --wordlist=$list --session=`date +%Y%m%d_%H%M` $doc.hash 
