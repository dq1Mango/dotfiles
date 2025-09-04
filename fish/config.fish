# load starship
starship init fish | source

# enviroment variables
set -gx GTK_THEME catppuccin-mocha-lavender-standard+default
set -gx tabsize 2

# additions to path 
fish_add_path ~/.scripts/

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

zoxide init fish | source
