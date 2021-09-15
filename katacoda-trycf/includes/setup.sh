#!/bin/bash

/home/tutorial/.cf-login.sh

clear

msg=$(cf t | awk '{print tolower($0)}')
echo " "
if [ "$msg" == "failed" ]; then
	echo "Provisioning failed. Please refresh this page to try again."
else
	echo "Provisioning complete. Please proceed with the tutorial."
fi