#!/bin/bash
# Author : Victor Mataigne (ABiMS, Station Biologique de Roscoff)
# A small script which rename a file correctly, according to its number of sequences

name=$(echo $1 | cut -d _ -f 1)
under=$(echo _sp)   
number=$(grep '>' $1 | wc -l)
fasta=$(echo .fasta)
new_file=$name$under$number$fasta 
cat $1 > $new_file
ln -s $new_file $2