function yay
    argparse R/remove 'r/revision=' -- $argv

    set -l revision nixos-unstable

    if set -ql _flag_revision
        set -l revision $_flag_revision
    end

    set package $argv[-1]

    if set -ql _flag_remove
        echo removing
        nix profile remove $package
    else
        nix profile add nixpkgs/$revision\#$package
    end
end
