#!/bin/bash
ansible-playbook -i localhost -e "@variaveis.json" main-playbook.yml -K