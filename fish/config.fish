if status is-interactive
    # Commands to run in interactive sessions can go here
end

##### PATH #####
set -g -x PATH /usr/local/bin $HOME/go/bin /opt/homebrew/bin/ $PATH

##### BACKGROUND IMAGE #####
function anime-bg-set
    set anime (find $HOME/wallpapers -iname '*.png' -type f \
       | fzf --preview "kitty icat --place 60x60@65x6 --transfer-mode file {} ")
    feh --bg-scale $anime
end

function anime-bg-random
    feh --bg-scale (random choice $HOME/wallpapers/*)
end

##### ALIAS #####
alias nv="nvim"
alias src="source ~/.config/fish/config.fish"
alias bgs="anime-bg-set"
alias b="anime-bg-random"

##### KEYBINDINGS #####
fish_vi_key_bindings
set fish_greeting

##### SETUP SCRIPT #####
function fish-setup
    git config --global core.editor 'nvim'
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    fisher install jorgebucaran/nvm.fish
    fisher install jethrokuan/z
    nvm install lts
    nvm use lts
    npm install -g prettier \
      eslint typescript typescript-language-server \
      vscode-langservers-extracted vue-language-server
end

##### WELCOME MESSAGE #####
if type -q figlet
    figlet welcome\n codico | lolcat
end
