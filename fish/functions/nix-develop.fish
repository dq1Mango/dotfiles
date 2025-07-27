function nix
    if $1 == develop
        nix develop -c $SHELL "$1"
    else
        nix "$argv"
    end
end
