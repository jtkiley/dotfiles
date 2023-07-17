#!/usr/bin/env zsh


osascript -e 'tell application "System Preferences" to quit'

sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Set sidebar icon size to large
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 3

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Trackpad: enable silent clicking
defaults write com.apple.AppleMultitouchTrackpad ActuationStrength -int 0

# Trackpad: set click to "Light"
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0

# Dock
defaults write com.apple.dock 'orientation' -string 'left'
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock autohide -bool true

# Turn off default bottom right hot corner.
defaults write com.apple.dock wvous-bl-corner -int 0

# Energy saver
sudo pmset -c sleep 0

# Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
chflags nohidden ~/Library
sudo chflags nohidden /Volumes
defaults write com.apple.finder FXInfoPanesExpanded -dict \
    General -bool true \
    OpenWith -bool true \
    Privileges -bool true


# Safari
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write com.apple.Safari AlwaysShowTabBar 1
defaults write com.apple.Safari TabCreationPolicy 2
defaults write com.apple.Safari CanPromptForPushNotifications 0
defaults write com.apple.Safari ShowStatusBar 1
defaults write com.apple.Safari ShowStatusBarInFullScreen 1


# Calendar
defaults write com.apple.iCal "TimeZone support enabled" -int 1

# Messages
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false


# Restart apps
for app in "Calendar" \
    "cfprefsd" \
    "Contacts" \
    "Dock" \
    "Finder" \
    "Mail" \
    "Messages" \
    "Safari" \
    "SystemUIServer" \
    "Terminal"; do
    killall "${app}" &> /dev/null
done
echo "macOS settings configured."
