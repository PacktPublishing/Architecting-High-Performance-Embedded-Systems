@ECHO OFF
REM Use this batch file to set a drive letter for the project base directory.
REM This file assumes the GitHub repository has been cloned to C:\Projects\
REM This is necessary because Vivado complains about a 260 character path limit.

SUBST Z: /D > NUL
SUBST Z: C:\Projects\Architecting-High-Performance-Embedded-Systems\Chapter05\src
SUBST
