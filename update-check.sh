#!/bin/bash

## TEST on RFPi

EMAIL_ADDRESS=""

# Retrieves update list and filters out lines we do not want to see
sudo apt-get -u upgrade --assume-no \
| grep -A 200 "upgraded:" \
| grep -v Abort \
| grep -v continue \
| grep -v operation \
| grep -v "Need to get"