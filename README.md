#Setup Scripts for Various OSes

####Windows
```
.\choco-set-up.ps1
```
Sets Execution Policy to RemoteSigned
Installs The Following
- Chocolatey (for installing everything else)
- 7zip
- ccleaner
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
- intellijidea-ultimate
- jdk8
- nodejs
- poshgit
- postgresql
- python2
- ruby
- SQLite

Adds Following Git Aliases
co, br, ci, st

####Mac
Try [NMahoney's](https://github.com/nmahoney-pivotal/scripts) script for basics
This has extra for development
```
ruby homebrew-set-up.rb
```
Installs The Following
- vim
- git
- git-duet
- java
- intellij-idea
- node

Adds Following Git Aliases
dci, drv, dmg
