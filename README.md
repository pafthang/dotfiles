## My ubuntu dotfiles
You need git to be installed before th Show:


```Shell
sudo apt update -y
sudo apte upgrade -y
sudo apt install git
```

After this - just clone the repo and start and have fun:
```Shell
git clone https://github.com/pafthang/docfiles /.dotfiles
./symlink
./install
```
Important:
> Don't forgetn to change Git credentinals

Todo:
- During clean installation you should run install.sh 2 times.
- Backup symlinks + user need to choose not to symlink.
- Issue with installing VS Code extenetion.

Workaround with N issue:
```Shell
# make cache folder (if missing) and take ownership
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n
# make sure the required folders exist (safe to execute even if they already exist)
sudo mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
# take ownership of Node.js install destination folders
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
```

Install bun script:
```Shell
curl -fsSL https://bun.sh/install | bash
```