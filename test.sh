#! /bin/bash

cat a.txt | awk '{print $1}' | sort | uniq > ipA.txt

cat b.txt | awk '{print $1}' | sort | uniq > ipB.txt

numA=`wc -l ipA.txt | awk '{print $1}'`
numB=`wc -l ipB.txt | awk '{print $1}'`

echo -e "There are \e[1;34m$numA\e[0m ip in a.txt"
echo -e "There are \e[1;34m$numB\e[0m ip in b.txt"

cat ipA.txt ipB.txt > ip.txt
totalNum=`sort -u ip.txt | wc -l`

echo -e "There are total \e[1;34m$totalNum\e[0m ip"
