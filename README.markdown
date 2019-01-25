# Jason Kiley's dotfiles

My dotfiles for macOS and procedure for setting up a new Mac.


# Install and configure software


## Install from App Store

- [Magnet](https://itunes.apple.com/us/app/magnet/id441258766?mt=12)
- [Pages](https://itunes.apple.com/us/app/pages/id409201541?mt=12&uo=4)
- [Keynote](https://itunes.apple.com/us/app/keynote/id409183694?mt=12)
- [Numbers](https://itunes.apple.com/us/app/numbers/id409203825?mt=12)
- [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12&uo=4)
- [Slack](https://itunes.apple.com/us/app/slack/id803453959?mt=12)
- [Things](https://itunes.apple.com/us/app/things-3/id904280696?mt=12)


## Install from Third-Party Websites

- Research
    - [Anaconda](https://www.anaconda.com/download/#macos)
    - VS Code (from Anaconda)
    - Stata 13 and 15 (installed from `iCloud Drive/storage/software/`)
    - [MacTex](https://tug.org/mactex/mactex-download.html)
    - [Dropbox](https://www.dropbox.com/install2)
    - [Jupyter Notebook Viewer](https://github.com/tuxu/nbviewer-app/releases/latest)

- Utilities
	- [Gitter](https://update.gitter.im/osx/latest)
    - [ScanSnap Manager](http://www.fujitsu.com/global/support/computing/peripheral/scanners/software/s1300i.html)
    - [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)


## Command Line Tools

- `Xcode > Preferences > Downloads > Command Line Tools`
- `Atom > Install Shell Commands`
- `Stata > Install Terminal Utility`


## Dropbox

*Install the client and let it sync the `mini_projects` folder.*

Link up the mini_projects folder using a symlink.
These are projects without a git repo.

```sh
ln -s ~/Dropbox/mini_projects/ ~/projects/mini_projects
```


## Fonts

* [Adobe Source Code Pro](https://github.com/adobe-fonts/source-code-pro/releases/latest)
* [Adobe Source Serif Pro](https://github.com/adobe-fonts/source-serif-pro/releases/latest)
* [Adobe Source Sans Pro](https://github.com/adobe-fonts/source-sans-pro/releases/latest)
* [Linux Libertine (OTF)](http://www.linuxlibertine.org/index.php?id=91&L=1)


## SSH

```bash
source ~/Dropbox/_config/email.sh
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/id_rsa
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/github
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/bitbucket
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
cat ~/.ssh/id_rsa.pub | ssh USERNAME@wrds.wharton.upenn.edu 'cat >> .ssh/authorized_keys'
```


# Acknowledgements

Most of what it here is code, adaptation, or inspiration from:

- https://github.com/necolas/dotfiles
- https://github.com/mathiasbynens/dotfiles
