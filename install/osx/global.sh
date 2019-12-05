#!/bin/bash

## scutil
computername="Guilherme"
sudo scutil --set ComputerName "${computername}"    # scutil --get ComputerName
sudo scutil --set LocalHostName "${computername}"   # scutil --get LocalHostName
sudo scutil --set HostName "${computername}"        # scutil --get HostName




## pmset
## https://ss64.com/osx/pmset.html
############################################

# List
pmset −g




## systemsetup
## https://ss64.com/osx/systemsetup.html
############################################

# Set amount of idle time until computer sleeps. Specify "Never" or "Off" for never
sudo systemsetup -setcomputersleep 15

# Set amount of idle time until display sleeps. Specify "Never" or "Off" for never
sudo systemsetup -setdisplaysleep 10

# Set amount of idle time until hard disk sleeps. Specify "Never" or "Off" for never
sudo systemsetup -setharddisksleep 10

# Specify whether the server should restart automatically after the system freezes
sudo systemsetup -setrestartfreeze on




## defaults
## https://ss64.com/osx/syntax-defaults.html
############################################

# List
defaults read

defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"

defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

defaults write NSGlobalDomain AppleAquaColorVariant -bool false

defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

defaults write NSGlobalDomain AppleEnableMouseSwipeNavigateWithScrolls -bool false

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

defaults write NSGlobalDomain AppleShowAllExtensions -bool true

defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool true

defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

defaults write NSGlobalDomain NSScrollAnimationEnabled -bool false

defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

defaults write com.apple.Siri StatusMenuVisible -bool false

defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

defaults write com.apple.dock mineffect -string "scale"

defaults write com.apple.dock autohide -bool true

defaults write com.apple.dock dashboard-in-overlay -bool true

defaults write com.apple.dock launchanim -bool false

defaults write com.apple.dock magnification -bool true

defaults write com.apple.dock minimize-to-application -bool true

defaults write com.apple.dock show-process-indicators -bool true

defaults write com.apple.dock show-recents -bool false

defaults write com.apple.dock showhidden -bool true

defaults write com.apple.dock tilesize -int 36

defaults write com.apple.dock largesize -int 64

defaults write com.apple.dock expose-animation-duration -float 0.1

defaults write com.apple.finder AppleShowAllFiles -bool false

defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false

defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

defaults write com.apple.finder ShowPathbar -bool true

defaults write com.apple.finder ShowRecentTags -bool false

defaults write com.apple.finder ShowSidebar -bool true

defaults write com.apple.finder ShowStatusBar -bool true

defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true

defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true

defaults write com.apple.finder SidebarShowingSignedIntoiCloud -bool true

defaults write com.apple.finder SidebarShowingiCloudDesktop -bool false

defaults write com.apple.finder SidebarTagsSctionDisclosedState -bool true

defaults write com.apple.menuextra.battery ShowPercent -string "NO"

defaults write com.apple.menuextra.battery ShowTime -string "YES"

defaults write com.apple.screencapture type -string "png"

defaults write com.apple.screencapture location -string "${HOME}/Desktop"

defaults write com.apple.universalaccess reduceTransparency -bool true

# Restart dock
killall Dock
