#! /usr/bin/env ruby
puts 'Installing VIM...'
`brew install vim`

puts 'Installing git...'
`brew install git`

puts 'Installing git-duet...'
`brew tap git-duet/tap`
`brew install git-duet`

puts 'Adding git aliases (dci, drv, dmg)...'
`git config --global alias.dci duet-commit`
`git config --global alias.drv duet-revert`
`git config --global alias.dmg duet-merge`

puts 'Installing Java...'
`brew cask install java`

puts 'Installing Intellij...'
`brew cask install intellij-idea`

puts 'Installing Node...'
`brew install node`
