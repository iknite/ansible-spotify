spotify
=======

DRY motto 1: `I don't have enought memory nor time to search this again`
DRY motto 2: `I want to test the full cycle of ansible-galaxy with something meaningful`


Usage
-----
```sh
wget -qO- https://raw.github.com/iknite/ansible-spotify/master/install.sh | bash
```

that does the following:

```sh
#!/usr/bin/env bash
ansible-galaxy install iknite.spotify

cat <<EOF > /tmp/spoty-role.yml
---
- hosts: 127.0.0.1
  connection: local
  user: root
  roles:
    - iknite.spotify
EOF

sudo ansible-playbook /tmp/spoty-role.yml

rm /tmp/spoty-role.yml

ansible-galaxy remove iknite.spotify
```

Configure
---------

```yaml
spotify_apt_key: { keyserver: keyserver.ubuntu.com, id: 94558F59 }

spotify_apt_repository: { repo: 'deb http://repository.spotify.com stable non-free' }

spotify_package: spotify-client
```

LICENSE: 3-clause BSD license.

CONTRIBUTING
------------

git clone git@github.com:iknite/ansible-spotify

---
Copyright © 2014, Enrique Paredes
