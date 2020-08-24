#!/bin/bash

source ~/.secrets/cloudflare
ansible-playbook -i inventory.yml main.yml --ask-become-pass
