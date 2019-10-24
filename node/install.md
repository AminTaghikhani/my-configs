Node.js v12.x:
```bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```
Node.js v10.x:
```bash
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
```



#NVM

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
```
Running either of the above commands downloads a script and runs it. The script clones the nvm repository to ~/.nvm, and adds the source lines from the snippet below to your profile (~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc).
```bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

[more](https://github.com/nvm-sh/nvm#installation-and-update)