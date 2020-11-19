@ECHO OFF

REM First step is to merge the .nml files containing each part of the project code (written separately to make things easier to find). This is a Python file in the \nmlc directory.
ECHO Batch: Running Python file merger
python %~dp0\nmlc\merge_nml.py

REM Next, a simple move of the merged file to where I'd like it kept. Would it be easier to do this in Python? Probably, but this was easier in the moment and I haven't seen a need to change it :)
ECHO Batch: Copying merged file to src/merged directory
copy /y /v %~dp0\nmlc\improved_town_layouts.nml %~dp0\src\merged\improved_town_layouts.nml

REM It's time to compile the merged NML file to a .grf!
ECHO Batch: Running NMLC compiler
%~dp0\nmlc\nmlc -t src\custom_tags.txt -l src\lang --grf improved_town_layouts.grf nmlc\improved_town_layouts.nml

REM Cleanup time! Time to delete the empty .nmlcache folder (this project doesn't use any sprites, so it's empty) and the merged nml file in the \nmlc directory, keeping the one we copied earlier into src\merged.
REM I think it's possible to tell NMLC not to cache sprites, which would be a cleaner solution... Someday I'll streamline this makefile.
ECHO Batch: Cleaning up
RMDIR %~dp0\.nmlcache
DEL %~dp0\nmlc\improved_town_layouts.nml

REM Production is complete. I can now enter my initials (TT) to copy the completed .grf file to my local OpenTTD NewGRF directory where it can be loaded into the game. 
REM This feature is hidden (as opposed to offering to copy with a Y/N prompt) to avoid confusion for others compiling the set on their own, who most certainly won't have the same file path as me.
set /P c=Complete!
if /I "%c%" EQU "TT" (goto :copy
) else (exit)

:copy
ECHO Copying to NewGRF directory
copy /y /v %~dp0\improved_town_layouts.grf C:\Users\tyler\Documents\OpenTTD\newgrf\
pause
exit
