#!/bin/bash
selected=`find "$HOME/wallpapers" -iname '*.png' -type f | fzf --preview "(kitty icat --place 60x60@65x6 --transfer-mode file {} )"`
echo "Setting background to $selected (* ^ ω ^).."
echo "background_image $selected" > "$HOME/code/dotfiles/kitty/background_image.conf"
feh --bg-scale $selected
# kitty @ set-background-image $selected

