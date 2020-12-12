#! /bin/bash
sudo yum install git -y
/bin/bash -c "$(curl -fsSL https://github.com/gmurtaza24/SAMInstallation/blob/main/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile
echo "eval $($(brew --prefix)/bin/brew shellenv)" >> ~/.bash_profile
echo "eval $($(brew --prefix)/bin/brew shellenv)" >>~/.profile
brew tap aws/tap
brew install aws-sam-cli
