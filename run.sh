#!/bin/bash
if [ $1 = "retry" ]
then
    echo "retry"
    ansible-playbook -i localhost -e "@variaveis.json" --limit @/Users/richardsantana/Documents/projetos/ambiente/main-playbook.retry main-playbook.yml -K
else
    echo "normal"
    ansible-playbook -i localhost -e "@variaveis.json" main-playbook.yml -K
fi