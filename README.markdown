# Jason Kiley's dotfiles

My dotfiles for macOS and procedure for setting up a new Mac.


# Initial setup


## Dropbox

[Dropbox](https://www.dropbox.com/install2)

*Install the client and let it sync the `mini_projects` and `_config` folders.*

Link up the mini_projects folder using a symlink.

```sh
ln -s ~/Dropbox/mini_projects/ ~/projects/mini_projects
```

## XCode Command Line Tools

```bash
xcode-select --install
```


## dotfiles

```bash
$ bash -c "$(curl -fsSL raw.github.com/jtkiley/dotfiles/master/bin/dotfiles)"
```


# Install and configure software


## Install Homebrew cask items

```bash
brew cask install mactex
brew cask install jupyter-notebook-viewer
brew cask install gitter
brew cask install skype
brew cask install anaconda
brew cask install visual-studio-code
```


## Install from App Store

- [Magnet](https://itunes.apple.com/us/app/magnet/id441258766?mt=12)
- [Pages](https://itunes.apple.com/us/app/pages/id409201541?mt=12&uo=4)
- [Keynote](https://itunes.apple.com/us/app/keynote/id409183694?mt=12)
- [Numbers](https://itunes.apple.com/us/app/numbers/id409203825?mt=12)
- [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12&uo=4)
- [Slack](https://itunes.apple.com/us/app/slack/id803453959?mt=12)
- [Things](https://itunes.apple.com/us/app/things-3/id904280696?mt=12)


## Install from Third-Party Websites

    - Stata 15 (installed from `iCloud Drive/storage/software/`)
    - [ScanSnap Manager](http://www.fujitsu.com/global/support/computing/peripheral/scanners/software/s1300i.html)


## Stata command line

- `Stata > Install Terminal Utility`


## Fonts

```bash
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro
brew cask install font-source-serif-pro
brew cask install font-source-sans-pro

```

- [Linux Libertine (OTF)](http://www.linuxlibertine.org/index.php?id=91&L=1)


## SSH

```bash
source ~/Dropbox/_config/email.sh
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/id_rsa
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/github
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/bitbucket
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/wrds
```


### Github

```bash
# Copy ssh key to github.com
code ~/.ssh/github.pub

# Test connection
ssh -T git@github.com

```


### Bitbucket

```bash
# Copy ssh key to bitbucket.org
code ~/.ssh/bitbucket.pub

# Test connection
ssh -T git@bitbucket.org

```

### WRDS

```bash
cat ~/.ssh/wrds.pub | ssh USERNAME@wrds.wharton.upenn.edu 'cat >> .ssh/authorized_keys'
```

# Rerun dotfiles script

```bash
source ~/dotfiles/bin/dotfiles

```

# Acknowledgements

Most of what is here is code, adaptation, or inspiration from:

- https://github.com/necolas/dotfiles
- https://github.com/mathiasbynens/dotfiles
