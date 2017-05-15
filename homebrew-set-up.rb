#! /usr/bin/env ruby
puts 'Disable Brew Analytics'
`brew analytics off`

puts 'Installing Homebrew Cask...'
`brew install cask`

puts 'Installing tree...'
`brew install tree`

puts 'Installing Google Chrome...'
`brew cask install google-chrome`

puts 'Installing Flycut...'
`brew cask install flycut`

puts 'Installing iTerm...'
`brew cask install iterm2`

puts 'Installing ShiftIt...'
`brew cask install shiftit`

puts 'Installing f.lux...'
`brew cask install flux`

puts 'Installing Bash it...'
`git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it`
`~/.bash_it/install.sh`
`echo "export BASH_IT_THEME='envy'" >> ~/.bashrc`
`bash-it enable completion git`

puts 'Installing VIM...'
`brew install vim`
`git config --global core.editor /usr/bin/vim`

puts 'Installing git...'
`brew install git`

puts 'Installing git-duet...'
`brew tap git-duet/tap`
`brew install git-duet`

puts 'Adding git aliases (co, br, ci, and st)...'
`git config --global alias.co checkout`
`git config --global alias.br branch`
`git config --global alias.ci commit`
`git config --global alias.st status`

puts 'Adding git aliases dci, drv, dmg, lola'
`git config --global alias.dci duet-commit`
`git config --global alias.drv duet-revert`
`git config --global alias.dmg duet-merge`
`git config --global alias.lola "log --graph --decorate --pretty=oneline --abbrev-commit --all"`

puts 'Installing CF CLI'
`brew tap cloudfoundry/tap`
`brew install cf-cli`

puts 'Installing rbenv'
`brew install rbenv`

puts 'Installing Java...'
`brew cask install java`

puts 'Installing Intellij...'
`brew cask install intellij-idea`

puts 'Installing Node...'
`brew install node`

puts 'Moving Files'
`mv vimrc ~/.vimrc`
`mv inputrc ~/.inputrc`
`mv add_user_initials_to_git_info.bash ~/.bash_it/custom`
