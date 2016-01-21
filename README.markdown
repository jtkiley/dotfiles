# Jason Kiley's dotfiles

This document (and respository) are very much a work in progress. Pardon the mess.


## Initial setup and package installs

The `scripts/initial_setup.sh` script is intended to call per-app scripts that configure each app or install its packages. It also copies (non-personalized) config files over from the `configs/` directory.

- Atom
- R
- Python


## To do

- Write overall install instructions
- Link app downloads
- Link fonts
- Set up an `osx.sh` script for my favorite settings.
- Figure out (whether as `.extra` or something else) a way to handle settings that shouldn't be in a public repo.
- Write good instructions on per-service ssh keys, particularly the `.ssh/config` part that is missing in my current instructions.
- Link the sources that I find helpful (other dotfiles repos).
- **DONE: Basically, use `requirements.txt` in venvs to set up for development.** Read up on python venvs and decide how I want to handle installs (i.e. venvs or base install).


## LICENSE

See the `LICENSE.markdown` file for the CC0 dedication. Please note that some files, particularly `osx_setup.sh`, are borrowed from other dotfiles repositories and not covered by the CC0 dedication. I try to be specific in each file and note whether I wrote it (i.e. it directs you to the LICENSE file) or borrowed it (i.e. it includes a link and a copy of the license from the original repository when available). When in doubt, please ask, though the commit history should make most of it obvious.
