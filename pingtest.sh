#! /bin/bash

ping -c 1 192.168.0.1

if [ $? != 0 ]
then
ifconfig enx00e04c680252 down && ifconfig enx00e04c680252 up
fi