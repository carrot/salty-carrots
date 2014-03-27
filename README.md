# Salty Carrots
Salt Stack based provisioning for Carrot Creative servers

Add all your public SSH keys to `salt/ssh/keys`, they will be included
automatically. This is configured to deny all password auth, so public-key
auth is the only way to access the server.

The default username is `carrot`, which can be changed in `pillar/users.sls`.
The root user is disabled for security.

The default password is `core2062` which can be changed in
`pillar/password_hash.sls`. Since password auth is disabled, this password
probably doesn't need to be a secret - the only place you will use it is for
`sudo` (not for logging into the system).

setup script:

```bash
sudo apt-get install git
git clone https://github.com/carrot/salty-carrots.git /srv
sudo sh /srv/setup.sh
sudo salt-call --local state.highstate
```

Then just wait for it to run (it takes awhile).
