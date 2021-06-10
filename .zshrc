# Load Antigen Plugin Manager
source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle pip
antigen bundle docker
antigen bundle docker-compose
antigen bundle colored-man-pages

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zdharma/fast-syntax-highlighting 


# Load the theme.
antigen theme fino-time

# Tell Antigen that you're done.
antigen apply

autoload -Uz compinit;compinit
eval "$(pyenv init -)"
export PATH="/Users/maxi/git/git-fuzzy/bin:$PATH"
