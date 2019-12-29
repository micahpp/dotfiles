
###############################################################################
# Keyboard & Input                                                            #
###############################################################################

# Disable smart quotes and dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false


###############################################################################
# Screen                                                                      #
###############################################################################

# Save screenshots to specific screenshots directory
export SCREENSHOT_PATH=$HOME/Pictures/screenshots
mkdir -p $SCREENSHOT_PATH
defaults write com.apple.screencapture location -string "${SCREENSHOT_PATH}"


###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true


###############################################################################
# Dock                                                                        #
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Don't show recently used applications in the Dock
defaults write com.Apple.Dock show-recents -bool false