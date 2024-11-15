# My Zsh Configuration Dotfiles

Welcome to my dotfiles repository! This repository contains my personalized Zsh configurations, including custom aliases, exports, and functions used with [Oh My Zsh](https://ohmyz.sh/). The purpose of this repository is to version control and easily manage my shell settings across different machines, with a focus on modularity, portability, and flexibility.

## Structure

- `.zshrc`: Main configuration file for Zsh, sourced to set up my shell environment.
- `custom/`
  - `aliases.zsh`: Contains my custom aliases to speed up and simplify common tasks.
  - `exports.zsh`: Environment variables and exports tailored for my development workflow.
  - `functions.zsh`: Custom functions to enhance productivity and streamline commands.

## Installation

Optional: back up your existing `.zshrc` and `custom/*.zsh` files.

```bash
cp ~/.zshrc ~/.zshrc.backup

# create a backup of each *.zsh in ~/.oh-my-zsh/custom/
for file in ~/.oh-my-zsh/custom/*.zsh; do [ -e "$file" ] && cp "$file" "$file.backup"; done
```

To use these configurations, clone this repository and create symbolic links from the files in this repository to their intended locations on your system:

**NOTE:** Creating symbolic links will **overwrite** existing files! Create backups!

```bash
git clone https://github.com/cellwebb/dotfiles.git ~/dotfiles

# Create symbolic links 
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/custom/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -s ~/dotfiles/custom/exports.zsh ~/.oh-my-zsh/custom/exports.zsh
ln -s ~/dotfiles/custom/functions.zsh ~/.oh-my-zsh/custom/functions.zsh
```

## Features

- Aliases: Custom shortcuts to common commands.
- Exports: Personalized environment settings.
- Functions: Handy custom functions to enhance shell productivity.
- Version Control: Easy tracking and synchronization of configurations using Git.

## Usage

Feel free to modify these files to fit your own workflow. All changes are tracked using Git, so you can experiment and easily revert changes if needed.

## Contributing

If you have suggestions for improving these configurations or would like to contribute, feel free to open an issue or submit a pull request.

## License

This repository is open-sourced for sharing and learning purposes. Feel free to use it as inspiration or as a starting point for your own custom dotfiles.
