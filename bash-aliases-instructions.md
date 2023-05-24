# Bash Aliases

- Follow the instructions to configure these aliases for your preferred shell.

1. Navigate to home: `cd ~`
2. Create a file named: `.bash_aliases` using: `touch .bash_aliases` (do not forget the dot (.) before the file name, it makes it a hidden file)
3. Paste the following contents into this newly created file using your favorite file editor.
```
alias gsts='git status'
alias gbr='git branch'
alias ncheck='ping www.google.co.in'
alias repos='cd ~/work/repos'
alias work='cd ~/work'
alias gad='git add'
alias gcom='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias gcho='git checkout'
alias gstash='git stash save -u'
alias calias='cat ~/.bash_aliases'
alias vialias='vim ~/.bash_aliases'
alias mci='mvn clean install'
alias mci-d='mvn clean install -Dmaven.test.skip=true'
alias ll='ls -ltr'
alias la='ls -ltra'
alias lh='ls -ltrh'
alias lah='ls -ltrah'
alias update-system='sudo apt update && sudo apt dist-upgrade -y --fix-missing && sudo apt autoremove -y'
alias ngrok='~/work/software/ngrok/ngrok'
alias slackoff='~/work/files/scripts/put-slack-away.sh'
alias slackon='~/work/files/scripts/bring-slack-back.sh'
alias fpkapps='cd /home/work/software/flatpak'
alias ngrok='~/work/software/ngrok/ngrok'
alias restart-plasma='~/work/files/scripts/restart-plasma.sh'
alias wg-up='sudo wg-quick up ~/work/tokens/innovation/wireguard.conf'
alias wg-down='sudo wg-quick down ~/work/tokens/innovation/wireguard.conf'
alias vpn-up='sudo openvpn --config ~/work/tokens/measured-vpn.ovpn > /dev/null 2>&1'
alias vpn-down='sudo killall openvpn'

```

4. Save and close the `.bash_aliases` file.
5. Open the RC file of your interactive shell and paste the following content at the bottom of the file (here, i'll be changing `.bashrc` for this document. An RC file name might be one of `.bashrc`, `.zshrc`, etc.)
```
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```
6. Once this is done, exit your current interactive shell and open a new session. (Or else, you can execute `source ~/.bashrc` to load these aliases as well).
7. You should be able to use these aliases across your entire system for this shell.

