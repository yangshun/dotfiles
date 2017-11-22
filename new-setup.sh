#################
# Installations #
#################

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# Install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#################
# Configuration #
#################

# Show hidden files in Mac
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder /System/Library/CoreServices/Finder.app

# Change default screenshots location
mkdir ~/Screenshots & defaults write com.apple.screencapture location ~/Screenshots

# Quick Look Plugins - https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
