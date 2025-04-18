# PATH
export PATH="$HOME/.local/bin:$PATH"  # Add local bin to PATH
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"  # Add OpenJDK 11 to PATH
export PATH="$(brew --prefix)/bin:$PATH"  # Add Homebrew to PATH
export PATH=".venv/bin:venv/bin:$PATH"  # Add virtualenv to PATH
export PATH="/Users/cell/.codeium/windsurf/bin:$PATH"  # Add Windsurf to PATH
# export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"  # Add PostgreSQL to PATH
# export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"  # Add PostgreSQL to PATH
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"  # Add PostgreSQL to PATH

# Language settings - helps optimize shell startup speed
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Java (OpenJDK 11)
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"

# Docker
export COMPOSE_BAKE=true
