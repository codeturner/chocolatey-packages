@ECHO OFF
 
SETLOCAL
 
SET RSYNC_HOME=%chocolateyInstall%\lib\cwrsync\tools\cwRsync_5.5.0_x86_Free
SET PATH=%RSYNC_HOME%;%PATH%

IF NOT DEFINED HOME SET HOME=%USERPROFILE%
 
rsync %*
