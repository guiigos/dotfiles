# Shell
## Overview
These files are scripts that are executed when bash is invoked and contain preferences and shortcuts to make the job easier. The settings were created for personal use, they may not meet the needs of third parties. Shortcuts make it easier to execute commands, improving performance on the desktop.

## Elements
- [**.bash_profile**](.bash_profile) <small>Contains custom data and loads the other files.</small>
- [**.bash_aliases**](.bash_aliases) <small>File with shortcuts and custom commands.</small>
- [**.bash_backup**](.bash_backup) <small>Backup of git repositories.</small>
- [**.bash_functions**](.bash_functions) <small>File that contains functions.</small>
- [**.bash_prompt**](.bash_prompt) <small>Responsible for customizing the promp.</small>

## Usage
The files must be inserted in the `~/` directory to work.

```bash
$ ln -s ~/.dotfiles/shell/.inputrc ~/.inputrc

$ ln -s ~/.dotfiles/shell/.hushlogin ~/.hushlogin

$ ln -s ~/.dotfiles/shell/.bash_backup ~/.bash_backup
$ ln -s ~/.dotfiles/shell/.bash_prompt ~/.bash_prompt
$ ln -s ~/.dotfiles/shell/.bash_aliases ~/.bash_aliases
$ ln -s ~/.dotfiles/shell/.bash_functions ~/.bash_functions
$ ln -s ~/.dotfiles/shell/.bash_prompt ~/.bash_prompt
$ ln -s ~/.dotfiles/shell/.bash_profile ~/.bash_profile
```

## License
[![License: MIT](https://img.shields.io/github/license/guiigos/dotfiles?color=black&style=flat-square)](../LICENSE)
