
Dir.glob( 'lib/*.rb' ) do |file|
    require_relative file
end

Dir.glob( 'local/*.rb' ) do |file|
    require_relative file
end
