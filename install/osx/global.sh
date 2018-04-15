#!/bin/bash

# scutil
computername="Guilherme"
sudo scutil --set ComputerName "${computername}"    # scutil --get ComputerName
sudo scutil --set LocalHostName "${computername}"   # scutil --get LocalHostName
sudo scutil --set HostName "${computername}"        # scutil --get HostName

## nvram
# Boot argument options
##########################################

# Disable or reenable startup sound
# sudo nvram -d SystemAudioVolume
sudo nvram SystemAudioVolume=%00

## pmset
# Manipulate power management settings
# The setting standby will be visible in pmset −g
##########################################


## systemsetup
# Manipulate system settings
##########################################

# Restart automatically if your computer freezes
# sudo systemsetup -getrestartfreeze
sudo systemsetup -setrestartfreeze on

# Set amount of idle time until computer sleeps
# sudo systemsetup -getcomputersleep
sudo systemsetup -setcomputersleep 15

## NSGlobalDomain
# Global defaults
# defaults read [property]
##########################################

# Disable natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Double click action in the window
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"

# Highlight colour
defaults write NSGlobalDomain AppleHighlightColor -string "0.847059 0.847059 0.862745"

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Dark dock
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Disable menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Disable scroller navigation with mouse swipe
defaults write NSGlobalDomain AppleEnableMouseSwipeNavigateWithScrolls -bool false

# Sidebar icon size
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Disable automatic termination of inactive apps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Save to disk by default rather than to iCloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic capitalisation
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smooth scrolling
defaults write NSGlobalDomain NSScrollAnimationEnabled -bool false

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Hide percentage battery
defaults write com.apple.menuextra.battery ShowPercent -string "NO"

# Show remaining battery time
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Automatically hide and show the dock
defaults write com.apple.dock autohide -bool true

# Don’t show Dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Set the icon size of Dock items
defaults write com.apple.dock tilesize -int 36

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true;

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Save screenshots in PNG format
defaults write com.apple.screencapture type -string "png"

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Reduzir a transparência
defaults write com.apple.universalaccess reduceTransparency -bool true
