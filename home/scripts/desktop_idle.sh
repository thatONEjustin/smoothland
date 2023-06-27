#!/bin/bash

swayidle -w \
	timeout 600 './swaylock_default.sh' \
  timeout 900 'systemctl suspend' 
