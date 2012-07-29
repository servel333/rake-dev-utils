
%w(  core.rb  install.rb  ).each do |file|
    require File.join( File.dirname( __FILE__ ), file )
end
