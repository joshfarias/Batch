<h1>
  <img src="https://github.com/joshfarias/Batch/blob/main/images/cmd.png" alt="cmd" height="60">
  Batch
</h1>
Repo for Windows Batch scripts.

## Simple backup program
**[backup.bat](https://github.com/joshfarias/Batch/blob/main/src/backup.bat)**

This batch file prompts the user to enter the source and backup folder paths then copies all files within the source directory including, subdirectories, empty directories and hidden files. The program achieves this by using the following commands:

- `@echo off` turns off command echoing, so that only the output of the commands are displayed
- `set /p` prompts the user to enter a value and assigns value to specified variable.
- `%variable%` expands value of variable.
- `xcopy` used to copy files from source directory.
  - The following options were used alongside the `xcopy` command to copy all files:
    - `/s` copies all subdirectories.
    - `/e` copies empty directories.
    - `/h` copies hidden and system files.
    - `/i` assumes destination is directory and creates it if it doesn't exist.
    - `/y` suppresses confirmation prompt for overwriting files.
- `echo` prints the success message to console.
- `pause` stops program from quiting after termination so user can see results.

Below is a screenshot of the script in action:

<h1>
<img src="https://github.com/joshfarias/Batch/blob/main/images/backup.png" alt="backup" height="400">
</h1>
