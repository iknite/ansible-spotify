spotify
=======

DRY motto 1: `I don't have enought memory nor time to search this again`

DRY motto 2: `I want to test the full cycle of ansible-galaxy with something interesting`


Usage
-----
```sh
wget -qO- https://raw.github.com/iknite/ansible-spotify/master/install.sh | sudo bash
```

that does the following:

```sh
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
```

Prerequisites
-------------
ansible `sudo pip install ansible`

Contributing
------------

git clone git@github.com:iknite/ansible-spotify

---
3-clause BSD license.  Copyright © 2014, Enrique Paredes
