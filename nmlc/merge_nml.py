# print statements aren't necessary, but they help see what the script is doing when it runs
# print is helpful for 'wtf?' moments
print("Python: Combining PNML files")

 # this module is a good way to handle working with files that might contain unicode (e.g. translations) 
import codecs

sections = [] # create an empty list, we'll put strings in here then join them later

# get the header file and append to a list
header = codecs.open("src/header.pnml",'r','utf8')
sections.append(header.read())
header.close()

# get the graphics file and append to a list
graphics = codecs.open("src/graphics.pnml",'r','utf8')
sections.append(graphics.read())
graphics.close()

# get the switches file and append to a list
switches = codecs.open("src/switches.pnml",'r','utf8')
sections.append(switches.read())
switches.close()

# get the residential file and append to a list
residential = codecs.open("src/residential.pnml",'r','utf8')
sections.append(residential.read())
residential.close()

# get the commercial file and append to a list
commercial = codecs.open("src/commercial.pnml",'r','utf8')
sections.append(commercial.read())
commercial.close()

# get the landmarks file and append to a list
landmarks = codecs.open("src/landmarks.pnml",'r','utf8')
sections.append(landmarks.read())
landmarks.close()

print("Python: Writing combined NML file")

# create a new file on disk, which will have a name and be writable
processed_nml_file = codecs.open('nmlc/improved_town_layouts.nml','w','utf8')

# write stuff into the file
processed_nml_file.write('\n'.join(sections)) # join the list of templated stuff with newlines, and write to a file
processed_nml_file.close() # we're done with this file now, finish with it
