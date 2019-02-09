#!/bin/bash

# testing RANDOM command 

P=${RANDOM}
echo ${P}
PASSWORD=$((RANDOM | head -c3))
echo $PASSWORD

