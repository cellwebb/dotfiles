# Path to Oh-My-Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Auto update behavior
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
HIST_STAMPS="%m/%d/%Y %H:%M:%S"

# Completion and auto-correction settings
setopt auto_menu
setopt menu_complete
setopt list_packed
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="false"

# Ensure completions get loaded
fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -C

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'  # remote
else
  export EDITOR='code'  # local
fi

# Source custom configurations
if [ -f "$ZSH/custom/exports.zsh" ]; then
  source "$ZSH/custom/exports.zsh"
fi
if [ -f "$ZSH/custom/alias.zsh" ]; then
  source "$ZSH/custom/alias.zsh"
fi
if [ -f "$ZSH/custom/functions.zsh" ]; then
  source "$ZSH/custom/functions.zsh"
fi
if [ -f "$ZSH/custom/secrets.zsh" ]; then
  source "$ZSH/custom/secrets.zsh"
fi

# Initialize rbenv (Ruby version manager)
eval "$(rbenv init - zsh)"

# Oh-My-Zsh Plugins
plugins=(
    aliases
    alias-finder
    # autoenv
    brew
    deno
    docker
    docker-compose
    # dotenv
    git
    github
    gitignore
    git-prompt
    vscode
    web-search
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Alias Finder Plugin Configuration
zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer yes
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes

# Load autoenv
# source ~/.dotfiles/lib/zsh-autoenv/autoenv.zsh

# Remove duplicate PATH entries
typeset -U PATH

# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh
