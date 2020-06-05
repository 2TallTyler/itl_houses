@ECHO OFF

ECHO Batch: Running Python file merger
python %~dp0\nmlc/merge_nml.py

ECHO Batch: Running NMLC compiler
%~dp0\nmlc\nmlc -t src\custom_tags.txt -l src\lang --grf improved_town_layouts.grf nmlc\processed.nml

ECHO Batch: Cleaning up empty .nmlcache folder
RMDIR %~dp0\.nmlcache

:choice
set /P c=Complete!
if /I "%c%" EQU "TT" (goto :copy
) else (exit)

:copy
ECHO Copying to NewGRF directory
copy /y /v %~dp0\improved_town_layouts.grf C:\Users\train\Documents\OpenTTD\newgrf\
pause
exit
