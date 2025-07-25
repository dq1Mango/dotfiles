# load starship
starship init fish | source

# enviroment variables
set -gx GTK_THEME catppuccin-mocha-lavender-standard+default

# additions to path 
fish_add_path /home/dq1mango/.scripts/

# command aliases
# 
# mostly handled by shells.nix
#
#


# source the various other functions
#
set -l path "$__fish_config_dir/"functions/

for func in $(ls $path)
  source $path$func # im starting to like this whole fish thing
end

