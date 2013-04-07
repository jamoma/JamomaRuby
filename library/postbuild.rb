#!/usr/bin/env ruby


# 1. Fix the linking for Jamoma's ruby extension so that it can find libs in a local location

`install_name_tool -change @loader_path/../../../../support/JamomaFoundation.dylib @loader_path/jamoma/JamomaFoundation.dylib Jamoma.bundle`
`install_name_tool -change @loader_path/../../../../support/JamomaDSP.dylib        @loader_path/jamoma/JamomaDSP.dylib        Jamoma.bundle`
`install_name_tool -change @loader_path/../../../../support/JamomaGraph.dylib      @loader_path/jamoma/JamomaGraph.dylib      Jamoma.bundle`
`install_name_tool -change @loader_path/../../../../support/JamomaAudioGraph.dylib @loader_path/jamoma/JamomaAudioGraph.dylib Jamoma.bundle`


# 2. Copy the dependencies

`rm -rf #{Dir.pwd}/Jamoma`
`mkdir #{Dir.pwd}/Jamoma`
`cp #{Dir.pwd}/../../../Core/Foundation/library/build/JamomaFoundation.dylib  #{Dir.pwd}/Jamoma`
`cp #{Dir.pwd}/../../../Core/DSP/library/build/JamomaDSP.dylib         #{Dir.pwd}/Jamoma`
`cp #{Dir.pwd}/../../../Core/Graph/library/build/JamomaGraph.dylib       #{Dir.pwd}/Jamoma`
`cp #{Dir.pwd}/../../../Core/AudioGraph/library/build/JamomaAudioGraph.dylib  #{Dir.pwd}/Jamoma`

`cp #{Dir.pwd}/../../../Core/Foundation/extensions/*/build/*.ttdylib          #{Dir.pwd}/Jamoma`
`cp #{Dir.pwd}/../../../Core/DSP/extensions/*/build/*.ttdylib          #{Dir.pwd}/Jamoma`
`cp #{Dir.pwd}/../../../Core/Graph/extensions/*/build/*.ttdylib          #{Dir.pwd}/Jamoma`
`cp #{Dir.pwd}/../../../Core/AudioGraph/extensions/*/build/*.ttdylib          #{Dir.pwd}/Jamoma`

`rm #{Dir.pwd}/Jamoma/*-i386.ttdylib`
`rm #{Dir.pwd}/Jamoma/*-x86_64.ttdylib`
