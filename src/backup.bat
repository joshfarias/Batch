::====================================================
:: 
::      Program Name: backup.bat	
:: 
::	    Description: Prompts for user to input
::      directory paths to backup files
::
::      Language: Batch
::      
::      Date: 2/27/23
::
::      Author: Josh Farias
::====================================================

@echo off

REM prompts for source and backup folder paths
set /p source_folder=Enter the source folder path: 
set /p backup_folder=Enter the backup folder path: 

REM copies all files /s subdirs, /e emptydirs, /h hidden files
REM /i assume destination is a folder, /y suppress overwrite prompt 
xcopy "%source_folder%" "%backup_folder%" /s /e /h /i /y

echo Backup complete. 
pause
