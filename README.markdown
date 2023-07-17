# Jason Kiley's dotfiles

My dotfiles for macOS and Linux containers, with additional install scripts for macOS.

## Containers

Add the repository and installer in VS Code, and it will handle the rest.
The macOS specific parts include an OS check that skips on non-macOS.

## Initial setup

### XCode Command Line Tools

```zsh
xcode-select --install
```

For beta versions of macOS, the command line tools may need to be retrieved from [Apple's XCode Developer Site](https://developer.apple.com/download/all/?q=Xcode).

### Clone dotfiles

```zsh
cd ~
git clone git@github.com:jtkiley/dotfiles.git
```

### Install dotfiles

```zsh
zsh dotfiles/install.sh
```

### Run brew and cask install script

```zsh
zsh dotfiles/macos/brew.sh
```

### Run MAS CLI install

```zsh
zsh dotfiles/macos/mascli.sh
```

### Run macOS setting script

**Note:** Before running this, give iTerm2 Full Disk Access in settings.

```zsh
zsh dotfiles/macos/macos.sh
```
