#!/bin/bash

ENV="$1"

if [ -z "$ENV" ]; then
    echo "Usage: $0 <env>"
    exit 1
fi

ansible-playbook reset.yml -i inventory/$ENV/hosts.ini
