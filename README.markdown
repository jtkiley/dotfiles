# Jason Kiley's dotfiles

This document (and repository) are very much a work in progress. Pardon the mess.


# Install and configure software


## Install from App Store

- [1Password](https://itunes.apple.com/us/app/1password-password-manager/id443987910?mt=12)
- [Pages](https://itunes.apple.com/us/app/pages/id409201541?mt=12&uo=4)
- [Keynote](https://itunes.apple.com/us/app/keynote/id409183694?mt=12)
- [Numbers](https://itunes.apple.com/us/app/numbers/id409203825?mt=12)
- [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?mt=12&uo=4)
- [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12&uo=4)
- [Slack](https://itunes.apple.com/us/app/slack/id803453959?mt=12)


## Install from Third-Party Websites

- Research
    - [Atom](https://atom.io/download/mac)
    - [R](https://rweb.crmda.ku.edu/cran/)
    - [R Studio](https://www.rstudio.com/products/rstudio/download2/)
    - Stata 13 (installed from `iCloud Drive/storage/software/`)
    - [Python 3.x](https://www.python.org/downloads/)
    - [Rodeo](http://bareback.s.yhat.com/download/mac)
    - [MacTex](https://tug.org/mactex/mactex-download.html)
    - [Dropbox](https://www.dropbox.com/install2)
    - [Sente](http://www.thirdstreetsoftware.com/site/DownloadingSente6.html)

- Utilities
    - [ScanSnap Manager](http://www.fujitsu.com/global/support/computing/peripheral/scanners/software/s1300i.html)
    - [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)

- Fun
    - [Battle.net Launcher](http://us.battle.net/account/download/index.xml?show=bnetapp&locale=en-us)


## Command Line Tools

- `Xcode > Preferences > Downloads > Command Line Tools`
- `Atom > Install Shell Commands`


## Homebrew

[Homebrew](http://brew.sh) is a package manager for OS X.

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


## Dropbox

*Install the client and let it sync the `mini_projects` folder.*

Link up the mini_projects folder using a symlink.
These are projects without a git repo.

```sh
ln -s ~/Dropbox/mini_projects/ ~/projects/mini_projects
```


## Package installs

The `scripts/initial_setup.sh` script calls per-app scripts that configure each app or install its packages.
It also copies (non-personalized) config files over from the `configs/` directory.

- Python
- Homebrew
- Atom
- R


## Fonts

* [Adobe Source Code Pro](https://github.com/adobe-fonts/source-code-pro/releases/latest)
* [Adobe Source Serif Pro](https://github.com/adobe-fonts/source-serif-pro/releases/latest)
* [Adobe Source Sans Pro](https://github.com/adobe-fonts/source-sans-pro/releases/latest)
* [Linux Libertine (OTF)](http://www.linuxlibertine.org/index.php?id=91&L=1)


## SSH

*Add SSH key generation after looking into email issue.**


### Github

```bash
# Copy ssh key to github.com
atom ~/.ssh/github.pub

# Test connection
ssh -T git@github.com

```


### Bitbucket

```bash
# Copy ssh key to bitbucket.org
atom ~/.ssh/bitbucket.pub

# Test connection
ssh -T git@bitbucket.org

```


# To do

- Set up an `osx.sh` script for my favorite settings **Comb through latest `.macos` version and just extract what I like or might like**.
- Figure out (whether as `.extra` or something else) a way to handle settings that shouldn't be in a public repo **DONE: Use `~/Dropbox/_config`**.
- Add SSH key generation after looking into email issue.



# LICENSE

See the `LICENSE.markdown` file for the MIT license. Please note that some files, particularly `osx_setup.sh` and `bootstrap.sh`, are borrowed from other dotfiles repositories and have links and their original licenses embedded.
