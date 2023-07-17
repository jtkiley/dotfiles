#!/bin/zsh

# oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh


# Spaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git $HOME/.oh-my-zsh/custom/themes/spaceship-prompt --depth=1


# Plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-docker.git $HOME/.oh-my-zsh/custom/plugins/zsh-docker


# Create symlinks
ln -nfs $HOME/dotfiles/shell/zshrc $HOME/.zshrc
ln -nfs $HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme $HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme


# Mac
if [[ $(uname) == "Darwin" ]]; then
    ln -nfs $HOME/dotfiles/git/gitconfig $HOME/.gitconfig
    ln -nfs $HOME/dotfiles/git/gitignore $HOME/.gitignore
    ln -nfs "${HOME}/Library/Mobile Documents/com~apple~CloudDocs" $HOME/iCloud
fi
