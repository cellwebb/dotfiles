# Run `alias` for full list of active aliases.

# Python shortcuts
alias python=python3
# alias pip=pip3
alias server="python3 -m http.server"

# Git shortcuts
alias gs='git status'
alias gc='git commit'
alias gp='git pull'
alias gcm='git checkout main'
alias undo-commit='git reset --soft HEAD~1'
alias undo-commit-hard='git reset --hard HEAD~1'

# Directory navigation
alias ..='cd ..'
alias ...='cd ../..'

# List directories
alias ll='ls -la'
alias la='ls -A'
alias ldot='ls -d .*'

# Directory shortcuts
alias proj='cd /Volumes/projects'

# Zsh quick access
alias zshconfig="open ~/.zshrc"
alias ohmyzsh="open ~/.oh-my-zsh"
