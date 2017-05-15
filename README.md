# Setup Scripts for Various OSes

#### Windows
```
.\choco-set-up.ps1
```
Sets Execution Policy to RemoteSigned

Installs The Following
- Chocolatey (for installing everything else)
- 7zip
- ccleaner
- consolez
- CrashPlan
- keepass
- launchy
- notepadplusplus
- rainmeter
- sumatrapdf
- virtualbox
- VirtualCloneDrive
- vlc
- git
- cf cli
- intellijidea-ultimate
- jdk8
- nodejs
- poshgit
- postgresql
- python2
- ruby
- SQLite

Adds Following Git Aliases
co, br, ci, st, lola

#### Mac
Inspired by [NMahoney's](https://github.com/nmahoney-pivotal/scripts) script for basics

This has all of NMahoney's plus extra for development

**This assumes [Homebrew](http://brew.sh) is installed already**
```
ruby homebrew-set-up.rb
```
Installs The Following
- tree
- google-chrome
- flycut
- iterm2
- shiftit
- flux
- Bash it
- vim
- git
- git-duet
- cf-cli
- java
- intellij-idea
- node

Adds Following Git Aliases
co, br, ci, st, dci, drv, dmg, lola

**Note:**  Disables [Brew Analytics](https://git.io/brew-analytics)

#### vimrc & inputrc
Homebrew script copies them to appropiate $HOME locations (rest of you operating systems are on your own (suckers)) 
Then go here for vim plug https://github.com/junegunn/vim-plug
And here for colors https://github.com/petelewis/vim-evolution/blob/master/colors/evolution.vim

#### User Initials in Git Info
Copy `add_user_initials_to_git_info.bash` to `$HOME/.bash_it/custom` you bum (again, maybe someday I'll yadda yadda)

#### ConsoleZ colors
Copy `console.xml` to `C:\Users\{USERNAME}\AppData\Roaming\Console` or at least the stuff in `<colors></colors>`
