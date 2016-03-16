# Jason Kiley's dotfiles

This document (and respository) are very much a work in progress. Pardon the mess.


## Install and configure software


### Install from App Store

- [1Password](https://itunes.apple.com/us/app/1password-password-manager/id443987910?mt=12)
- [Pages](https://itunes.apple.com/us/app/pages/id409201541?mt=12&uo=4)
- [Keynote](https://itunes.apple.com/us/app/keynote/id409183694?mt=12)
- [Numbers](https://itunes.apple.com/us/app/numbers/id409203825?mt=12)
- [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?mt=12&uo=4)
- [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12&uo=4)
- [Slack](https://itunes.apple.com/us/app/slack/id803453959?mt=12)


### Install from Third-Party Websites

- Research
    - [Atom](https://atom.io/download/mac)
    - [R 3.2.3](http://mirrors.nics.utk.edu/cran/bin/macosx/R-3.2.3.pkg)
    - [R Studio 0.99.489](https://download1.rstudio.org/RStudio-0.99.489.dmg)
    - Stata 13 (installed from `iCloud Drive/storage/software/`)
    - [Python 3.5.1](https://www.python.org/ftp/python/3.5.1/python-3.5.1-macosx10.6.pkg)
    - [MacTex 2014](http://tug.org/cgi-bin/mactex-download/MacTeX.pkg)
    - [Dropbox](https://www.dropbox.com/install2)
    - [Sente](http://www.thirdstreetsoftware.com/site/DownloadingSente6.html)

- Utilities
    - [ScanSnap Manager](http://www.fujitsu.com/global/support/computing/peripheral/scanners/software/s1300i.html)
    - [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)

- Fun
    - [Battle.net Launcher](http://us.battle.net/account/download/index.xml?show=bnetapp&locale=en-us)


### Command Line Tools

- `Xcode > Preferences > Downloads > Command Line Tools`
- `Atom > Install Shell Commands`


### Homebrew

[Homebrew](http://brew.sh) is a package manager for OS X.

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


### Dropbox

**ADD: client install**

Link up the mini_projects folder using a symlink.
These are projects without a git repo.

```sh
ln -s ~/Dropbox/mini_projects/ ~/projects/mini_projects
```


### Package installs

The `scripts/initial_setup.sh` script is intended to call per-app scripts that configure each app or install its packages. It also copies (non-personalized) config files over from the `configs/` directory.

- Python
- Homebrew
- Atom
- R


### Fonts

* [Adobe Source Code Pro](https://github.com/adobe-fonts/source-code-pro/releases/latest)
* [Adobe Source Serif Pro](https://github.com/adobe-fonts/source-serif-pro/releases/latest)
* [Adobe Source Sans Pro](https://github.com/adobe-fonts/source-sans-pro/releases/latest)
* [Linux Libertine (OTF)](http://www.linuxlibertine.org/index.php?id=91&L=1)


## To do

- Write overall install instructions
- Set up an `osx.sh` script for my favorite settings.
- Figure out (whether as `.extra` or something else) a way to handle settings that shouldn't be in a public repo.
- Write good instructions on per-service ssh keys, particularly the `.ssh/config` part that is missing in my current instructions.
- Link the sources that I find helpful (other dotfiles repos).
- **DONE: Basically, use `requirements.txt` in venvs to set up for development.** Read up on python venvs and decide how I want to handle installs (i.e. venvs or base install).


## LICENSE

See the `LICENSE.markdown` file for the MIT license. Please note that some files, particularly `osx_setup.sh`, are borrowed from other dotfiles repositories and not covered by the license. I try to be specific in each file and note whether I wrote it (i.e. it directs you to the LICENSE file) or borrowed it (i.e. it includes a link and a copy of the license from the original repository when available). When in doubt, please ask, though the commit history should make most of it obvious.
