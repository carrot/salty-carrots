# Salty Carrots
Salt Stack based provisioning for Carrot Creative servers

Add all your public SSH keys to `ssh/keys`, they will be included automatically.

You should remove that and put your key there instead.

The default username is `slang`, and the password is `core2062` (changing the username is kinda hard, but the password can be changed in `salt/users/init.sls`). However, you need to use ssh keys to actually access it because it's configured to deny password based authentication.

setup script:

```bash
sudo apt-get install git
git clone https://github.com/carrot/salty-carrots.git /srv
sudo sh /srv/setup.sh
sudo salt-call --local state.highstate
```

Then just wait for it to run (it takes awhile).
