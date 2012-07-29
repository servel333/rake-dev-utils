
desc "Creates a rakefile in the parent directory"
task :init do
    rakefile = File.join( File.dirname( File.dirname( __FILE__ ) ), 'rakefile.rb' )
    abort "#{rakefile} already exists." if File.exist? rakefile
    dir_name = File.basename( File.dirname( __FILE__ ) )
    require_line = "require_relative File.join( '#{ dir_name }', 'core.rb' )"
    File.open(rakefile, 'w') {|f| f.write( require_line ) }
end
