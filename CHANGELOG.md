## v2.0.0 (2024-01-28)

### Feat

- **.bashrc**: add `dotfiles_release` function
- **nvim**: rough first cut of set up. plugins etc still to configure

### Fix

- instal `stylua`, reformat lua files. Add stylua to install_apps.sh, clean up script.

### Refactor

- remove vim files and dirs :(
- include mason, lspconfig, lua and pylsp, plus key commands. phew
- rename actual dotfiles. clean `setup.sh`, remove dead files, remove pyenv invocations

## v1.5.0 (2023-12-18)

### Feat

- complete coc.vim setup

### Fix

- **vim**: tagbar settings
- use tagbar instead of vista. add F6 key for bufexplorer

## v1.4.0 (2023-06-12)

### Feat

- **bashrc**: add app_release function
- new `app_release` script. TODO: on setup, link to .local/bin

### Fix

- **ftplugin**: use expandtab in python
- add remarkrc.json, add markdown ftplugin, add bufexplorer vim plugin
- **install_apps**: install vim-plug instead of Vundle
- **install_apps**: include fonts-powerline. exclude vim/autload and /plugged dirs
- grab git-completion script in install_apps and source in bashrc
- **vim/init**: install gutentags plugin. set cache dir (#2)
- **install_apps**: include openssh-server and start service

### Refactor

- **vim**: use vim-plug instead of vundle. clean up configs

## v1.3.0 (2023-01-22)

### Feat

- **install_apps.sh**: use apt to install default packages. install Vundle, compile YCM
- split vim config into separate files
- revised vimr and new vim dir for ftplugins
- vimrc: include black plugin
- add hook for machine specific vimrc
- clean up pyenv invocation
- reworked vimrc
- bashrc: hooks for machinerc & aliases. pyenv fluff. ssh-agent key
- setupsh: copy in template files
- gitconfig: remove user section
- **setup, inputrc**: include inputrc, sort out bell
- **profile**: only do ssh_auth_sock on penguin
- **vimrc**: cleanups
- **gitconfig**:  ff only
- **vimrc**: cleanup vundles, clean pu python settings
- **setup**: include vimrc in setup
- clean up paths. remove command that breaks tty

### Fix

- **setup**: safe way to symlink vim directories. exclude vim/bundle used to store vim plugins
- **setup**: new vim links
- **setup**: broken setup

## v1.2.1 (2020-11-21)

## v1.2.0 (2019-06-05)

### Feat

- simplify for future boxes.

## v1.1.0 (2015-12-09)

## v1.0.1 (2015-10-06)

## v1.0.0 (2015-07-10)
