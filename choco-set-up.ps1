echo 'Setting ExecutionPolicy to RemoteSigned'
Set-ExecutionPolicy RemoteSigned

echo 'Installing Chocolatey'
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

echo 'Installing Base'
cinst 7zip ccleaner CrashPlan keepass launchy notepadplusplus rainmeter sumatrapdf virtualbox VirtualCloneDrive vlc -y

echo 'Installing Development Tools'
cinst easy.install git intellijidea-ultimate jdk8 nodejs poshgit postgresql python2 ruby SQLite -y

echo 'extra?'
#cinst msysgit pip ruby2.devkit upx

echo 'Adding Git Aliases co, br, ci, st'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
