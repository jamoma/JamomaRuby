#!/usr/bin/env ruby
#
# This is for generating a Makefile to compile Jamoma Ruby support

require 'mkmf'


####################################################################
# Get paths for Jamoma dependencies

wd = Dir.pwd

Dir.chdir "../../../Core"
dir_core = Dir.pwd

Dir.chdir "#{dir_core}/Foundation/library/boost"
dir_boost = Dir.pwd

Dir.chdir "#{dir_core}/Foundation"
dir_foundation = Dir.pwd

Dir.chdir "#{dir_core}/DSP"
dir_dsp = Dir.pwd

Dir.chdir "#{dir_core}/Graph"
dir_graph = Dir.pwd

Dir.chdir "#{dir_core}/AudioGraph"
dir_audiograph = Dir.pwd

Dir.chdir wd


####################################################################
# Includes and Libs

incpath = "library/includes"
includes = " -I #{dir_boost} -I #{dir_foundation}/#{incpath} -I #{dir_dsp}/#{incpath} -I #{dir_graph}/#{incpath} -I #{dir_audiograph}/library/includes "


#puts "config: #{inc}"
#puts "dsp: #{dsp}"
#puts "audiograph: #{audiograph}"
#dir_config("#{inc}")
#find_header('TTFoundationAPI.h', "#{inc}")
#find_header('TTFoundationAPI.h', "../../library/includes")
have_func("Init_Jamoma", "Jamoma.cpp")

#$CFLAGS = $CFLAGS +     " -I #{inc} -I#{boost} -I #{dsp} -I #{audiograph} -I #{graph} -g -O1 -std=c++11 -stdlib=libc++ "
#$CPPFLAGS = $CPPFLAGS + " -I #{inc} -I#{boost} -I #{dsp} -I #{audiograph} -I #{graph} -g -O1 -std=c++11 -stdlib=libc++ "
$CFLAGS = $CFLAGS +     " #{includes} -g -O1 -std=c++11 -stdlib=libc++ "
$CPPFLAGS = $CPPFLAGS + " #{includes} -g -O1 -std=c++11 -stdlib=libc++ "
#$LDFLAGS = $LDFLAGS + " -framework JamomaFoundation -framework JamomaDSP -framework JamomaAudioGraph -framework JamomaGraph"
#$LDFLAGS = $LDFLAGS + " \"/usr/local/lib/JamomaFoundation.dylib\""
#$LDFLAGS = $LDFLAGS + " \"/usr/local/lib/JamomaDSP.dylib\""
#$LDFLAGS = $LDFLAGS + " \"/usr/local/lib/JamomaAudioGraph.dylib\""
#$LDFLAGS = $LDFLAGS + " \"/usr/local/lib/JamomaGraph.dylib\""
$LDFLAGS = $LDFLAGS + " \"#{dir_foundation}/library/build/JamomaFoundation.dylib\""
$LDFLAGS = $LDFLAGS + " \"#{dir_dsp}/library/build/JamomaDSP.dylib\""
$LDFLAGS = $LDFLAGS + " \"#{dir_graph}/library/build/JamomaGraph.dylib\""
$LDFLAGS = $LDFLAGS + " \"#{dir_audiograph}/library/build/JamomaAudioGraph.dylib\""

#$ARCHFLAGS = "-arch i386"

create_makefile("Jamoma")

