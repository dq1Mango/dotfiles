function go 
    if test run = $argv[1] -a run = $argv[-1]
      command go run *.go
    else
      command go $argv
    end
end
