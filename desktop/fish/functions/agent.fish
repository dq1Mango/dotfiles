function agent

    eval $(ssh-agent -c)

    set ssh_dir ~/.ssh/
    for key in $(ls $ssh_dir)

        set splitString $(string split . $key)
        if test (count $splitString) -eq 1 -a $key != known_hosts
            ssh-add "$ssh_dir$key"
        end
    end
end
