# enviroment variables
set -gx GTK_THEME catppuccin-mocha-lavender-standard+default
set -gx tabsize 2

set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

# additions to path 
fish_add_path ~/.scripts/
fish_add_path ~/.cargo/bin/
fish_add_path ~/.local/bin/

fish_add_path ~/.thingsIWantOnPath/

# command aliases
# 
# mostly handled by shells.nix
#
#

# source the various other functions
#
set -l path "$__fish_config_dir/"functions/

for func in $(ls $path)
    source "$path$func" # im starting to like this whole fish thing
end

# enable vim keybindings
fish_vi_key_bindings

# load starship
starship init fish | source

# load zoxide (better cd)
zoxide init fish | source
