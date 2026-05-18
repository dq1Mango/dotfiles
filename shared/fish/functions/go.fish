function go
    if test run = $argv[1] -a run = $argv[-1]
        # shhhhhh
        command go build
    else
        command go $argv
    end
end
