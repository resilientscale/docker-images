#!/bin/bash

echo "Logging you in..."
/home/tutorial/.cf-login.sh > /dev/null

clear

msg=$(cf t | awk '{print tolower($0)}')
# echo " "
if [ "$msg" == "failed" ]; then
	echo "Provisioning failed. Please refresh this page to try again."
else
	echo "Provisioning complete. Please proceed with the tutorial."
fi