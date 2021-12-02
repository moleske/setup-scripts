echo 'Setting ExecutionPolicy to RemoteSigned'
Set-ExecutionPolicy RemoteSigned

echo 'Installing Chocolatey'
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

echo 'Installing Base'
cinst 7zip ccleaner ditto keepass rainmeter sumatrapdf tixati -y

echo 'Installing Development Tools'
cinst adoptopenjdk git cloudfoundry-cli nodejs poshgit -y

echo 'Adding Git Aliases co, br, ci, st, lola'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.lola "log --graph --decorate --pretty=oneline --abbrev-commit --all"
