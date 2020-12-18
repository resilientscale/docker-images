#!/bin/bash

/home/tutorial/.cf-login.sh
rm -fr /home/tutorial/.cf-login.sh

clear

msg=$(cf t)
if [ "$msg" == *"Not logged in."* ] || [ "$msg" == *"No API endpoint set"* ]; then
	echo "Provisioning failed. Please refresh this page to try again."
else
	echo "Provisioning complete. Please proceed with the tutorial."
fi