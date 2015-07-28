#!/usr/bin/env ruby -wKU
# encoding: utf-8

#puts "First we must build JamomaCore.  This could take a while."
#puts "Then we will build the Jamoma Ruby Extension."
#puts
#
ruby_root_dir = Dir.pwd
#dir.chdir "#{ruby_root_dir}/JamomaCore"
#load "build.rb"

puts "Building Ruby Language Extensions..."
puts
 
Dir.chdir ruby_root_dir
if (RUBY_PLATFORM == "universal-darwin9.0")
  output = `cd library; ARCHFLAGS="-arch i386" ruby extconf.rb; make clean; make; ruby postbuild.rb; cd ..`
else
  `cd library; ruby extconf.rb; make clean; make; ruby postbuild.rb; cd ..`
end  
load "install.rb"

puts
puts "=================DONE===================="
puts
