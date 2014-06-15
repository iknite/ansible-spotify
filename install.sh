#!/usr/bin/env bash

ansible-galaxy install iknite.spotify

cat <<EOF > /tmp/spoty-role.yml
---
- hosts: 127.0.0.1
  connection: local
  roles:
    - iknite.spotify
EOF

ansible-playbook /tmp/spoty-role.yml

rm /tmp/spoty-role.yml

ansible-galaxy remove iknite.spotify
