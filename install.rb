#!/usr/bin/env ruby -wKU
# encoding: utf-8

puts "Installing Ruby Language Extensions for Mac..."

if !File.exists? "/Library/Ruby/Site/1.8/universal-darwin10.0"
  `sudo mkdir /Library/Ruby/Site/1.8/universal-darwin10.0`
end
if !File.exists? "/Library/Ruby/Site/1.8/universal-darwin12.0"
  `sudo mkdir /Library/Ruby/Site/1.8/universal-darwin12.0`
end
  
if !File.exists? "/Library/Ruby/Site/1.8/universal-darwin10.0/Jamoma"
  `sudo rm -rf /Library/Ruby/Site/1.8/universal-darwin10.0/Jamoma`
  `sudo rm -rf /Library/Ruby/Site/1.8/universal-darwin10.0/Jamoma.bundle`
  `sudo ln -s "#{Dir.pwd}"/library/Jamoma.bundle /Library/Ruby/Site/1.8/universal-darwin10.0/Jamoma.bundle`
  `sudo ln -s "#{Dir.pwd}"/library/Jamoma /Library/Ruby/Site/1.8/universal-darwin10.0/Jamoma`
end
if !File.exists? "/Library/Ruby/Site/1.8/universal-darwin12.0/Jamoma"
  `sudo rm -rf /Library/Ruby/Site/1.8/universal-darwin12.0/Jamoma`
  `sudo rm -rf /Library/Ruby/Site/1.8/universal-darwin12.0/Jamoma.bundle`
  `sudo ln -s "#{Dir.pwd}"/library/Jamoma.bundle /Library/Ruby/Site/1.8/universal-darwin12.0/Jamoma.bundle`
  `sudo ln -s "#{Dir.pwd}"/library/Jamoma /Library/Ruby/Site/1.8/universal-darwin12.0/Jamoma`
end

#`cd library; make install`



#/Library/Ruby/Site/1.8/universal-darwin10.0/Jamoma.bundle
#/Library/Ruby/Site/1.8/universal-darwin12.0/Jamoma.bundle


puts
puts "=================DONE===================="
