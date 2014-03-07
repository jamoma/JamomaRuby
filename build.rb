#!/usr/bin/env ruby -wKU
# encoding: utf-8

#if win?
#	puts "Ruby support is not currently built for Windows.  Please volunteer to help us!"
#else
	puts "Building Ruby Language Extensions..."
	 
	if (RUBY_PLATFORM == "universal-darwin9.0")
	  output = `cd library; ARCHFLAGS="-arch i386" ruby extconf.rb; make clean; make; ruby postbuild.rb; cd ..`
	else
	  `cd library; ruby extconf.rb; make clean; make; ruby postbuild.rb; cd ..`
	end

	load "install.rb"

	puts
	puts "=================DONE===================="
# end
