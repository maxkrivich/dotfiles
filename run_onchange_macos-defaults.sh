#!/bin/bash
set -euo pipefail

# AeroSpace recommendations: https://nikitabobko.github.io/AeroSpace/guide#a-note-on-mission-control
defaults write com.apple.dock expose-group-apps -bool true
defaults write com.apple.spaces spans-displays -bool true
defaults write -g NSWindowShouldDragOnGesture -bool true

killall Dock
echo "macOS defaults applied. Log out for spans-displays and NSWindowShouldDragOnGesture."
