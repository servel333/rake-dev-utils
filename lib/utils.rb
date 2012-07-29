
def puts_exec( *command )
    puts
    puts *command
    puts
    exec *command
end

def cd_invoked_dir
    cd  Rake.application.original_dir
end
