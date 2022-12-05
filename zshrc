autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

alias switchyubikey="gpg-connect-agent 'scd serialno' 'learn --force' /bye"

antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh

eval "$(pyenv init -)"
export PATH="/Users/maxi/git/git-fuzzy/bin:$PATH"
autoload -Uz compinit && compinit
unsetopt multios

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent /bye
