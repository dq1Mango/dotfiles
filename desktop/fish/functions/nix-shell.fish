function nix-shell
    command nix-shell --run $SHELL $argv
end

#
#function nix
#    if test $argv[1] = develop
#        command nix develop -c $SHELL $argv[2 .. ]
#    else
#        command nix $argv
#    end
#end
