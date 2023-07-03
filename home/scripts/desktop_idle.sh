#!/bin/bash

swayidle -w \
	timeout 600 '$HOME/git/smoothland/home/scripts/swaylock_default.sh' \
  timeout 900 'systemctl suspend' 
