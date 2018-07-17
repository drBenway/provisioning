#!/bin/bash
docker build -t westworld/firefox .

# copy the firefox function to mysettings so you can start this firefox from the commandline
copy firefox.sh ~/.mySettings/