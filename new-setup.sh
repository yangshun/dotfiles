# Show hidden files in Mac
defaults write com.apple.Finder AppleShowAllFiles true

# Sublime text binary alias
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Change default screenshots location
mkdir ~/Screenshots & defaults write com.apple.screencapture location ~/Screenshots

# Quick Look Plugins - https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
