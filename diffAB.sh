#! /bin/bash

diff ipA.txt ipB.txt | grep \> | awk '{print $2}'

