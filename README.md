# scripts

## CZI randomizer

*goal*: randomize filenames to avoid researcher's bias

*language*: windows script

*steps*

 - generates new folder with current date
 - within that folder a translation table
 - searches recursively for files with CZI extension
 - copies these pictures into new folder and renames them with random names
 - keeps track of these changes in the translation table
 
 ## CIZ ReOrganizer

*goal*: restructure the files and contain in filename the folder structure

*language*: windows script

*steps*

 - generates new folder with current date
 - within that folder log file
 - searches recursively for files with CZI extension
 - copies these pictures into new folder and renames them with filename + folder structure
 - keeps track of these changes in the log file
