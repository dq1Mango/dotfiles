function nix-shell
  nix-shell --run $SHELL $argv
end

function nix
    if $argv[0] == develop
        command nix develop -c $SHELL "$1"
    else
        command nix $argv
    end
end
